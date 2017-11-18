<?php
/**
 * @package	AcyMailing for Joomla!
 * @version	5.8.1
 * @author	acyba.com
 * @copyright	(C) 2009-2017 ACYBA S.A.R.L. All rights reserved.
 * @license	GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 */
defined('_JEXEC') or die('Restricted access');
?><?php


class SubscriberViewSubscriber extends acymailingView{

	var $searchFields = array('a.name', 'a.email', 'a.subid', 'a.userid', 'b.username');
	var $selectedFields = array('a.*', 'b.username');
	var $ctrl = 'subscriber';

	function display($tpl = null){
		$function = $this->getLayout();
		if(method_exists($this, $function)) $this->$function();

		parent::display($tpl);
	}

	function listing(){

		$pageInfo = new stdClass();
		$pageInfo->elements = new stdClass();
		$config = acymailing_config();

		$paramBase = ACYMAILING_COMPONENT.'.'.$this->getName();
		$pageInfo->filter = new stdClass();
		$pageInfo->filter->order = new stdClass();
		$pageInfo->filter->order->value = acymailing_getUserVar($paramBase.".filter_order", 'filter_order', 'a.subid', 'cmd');
		$pageInfo->filter->order->dir = acymailing_getUserVar($paramBase.".filter_order_Dir", 'filter_order_Dir', 'desc', 'word');
		if(strtolower($pageInfo->filter->order->dir) !== 'desc') $pageInfo->filter->order->dir = 'asc';
		$selectedList = acymailing_getUserVar($paramBase."filter_lists", 'filter_lists', 0, 'string');
		$selectedStatus = acymailing_getUserVar($paramBase."filter_status", 'filter_status', 0, 'int');
		$selectedStatusList = acymailing_getUserVar($paramBase."filter_statuslist", 'filter_statuslist', 0, 'int');
		$pageInfo->search = acymailing_getUserVar($paramBase.".search", 'search', '', 'string');
		$pageInfo->search = strtolower(trim($pageInfo->search));

		$pageInfo->limit = new stdClass();
		$pageInfo->limit->value = acymailing_getUserVar($paramBase.'.list_limit', 'limit', acymailing_getCMSConfig('list_limit'), 'int');
		$pageInfo->limit->start = acymailing_getUserVar($paramBase.'.limitstart', 'limitstart', 0, 'int');

		$database = JFactory::getDBO();
		$filters = array();
		$customFields = acymailing_get('class.fields');

		$displayFields = array();
		$displayFields['name'] = new stdClass();
		$displayFields['name']->fieldname = 'JOOMEXT_NAME';
		$displayFields['name']->type = 'text';
		$displayFields['email'] = new stdClass();
		$displayFields['email']->fieldname = 'JOOMEXT_EMAIL';
		$displayFields['email']->type = 'text';
		$displayFields['html'] = new stdClass();
		$displayFields['html']->fieldname = 'RECEIVE_HTML';
		$displayFields['html']->type = 'radio';


		if(!empty($pageInfo->search)){
			foreach($displayFields as $fieldname => $onefield){
				if($fieldname == 'html' OR in_array('a.'.$fieldname, $this->searchFields) OR $onefield->type == 'customtext') continue;
				$this->searchFields[] = 'a.`'.$fieldname.'`';
			}
			if(!is_numeric($pageInfo->search)){
				$this->searchFields = array_diff($this->searchFields, array('a.subid', 'a.userid'));
			}

			if(strpos($pageInfo->search, '@') !== false){
				$this->searchFields = array_diff($this->searchFields, array('a.name', 'b.username'));
			}

			$searchVal = '\'%'.acymailing_getEscaped($pageInfo->search, true).'%\'';
			$filters[] = implode(" LIKE $searchVal OR ", $this->searchFields)." LIKE $searchVal";
		}

		$leftJoinQuery = array();
		$joinQuery = array();

		if(strpos($selectedList, ',') !== false){
			$lists = explode(',', rtrim($selectedList, ','));
			acymailing_arrayToInteger($lists);
			$selection = implode(',', $lists);
		}else{
			$selection = intval($selectedList);
		}

		if(empty($selectedList) || ($selectedStatusList == -2 && acymailing_isAdmin())){
			if(empty($selectedList) && $selectedStatusList == -2) $selectedStatusList = 0;
			$fromQuery = ' FROM '.acymailing_table('subscriber').' as a ';
			$leftJoinQuery[] = acymailing_table('users', false).' as b ON a.userid = b.id';

			if($selectedStatusList == -2){
				$leftJoinQuery[] = acymailing_table('listsub').' AS c on a.subid = c.subid AND listid IN ('.$selection.')';
				$filters[] = 'c.listid IS NULL';
			}
			$countField = "a.subid";
		}else{
			$fromQuery = ' FROM '.acymailing_table('listsub').' as c';
			$countField = "c.subid";
			$joinQuery[] = acymailing_table('subscriber').' as a ON a.subid = c.subid';
			$leftJoinQuery[] = acymailing_table('users', false).' as b ON a.userid = b.id';
			$filters[] = 'c.listid IN ('.$selection.')';

			if(!in_array($selectedStatusList, array(-1, 1, 2))) $selectedStatusList = 1;
			$filters[] = 'c.status = '.intval($selectedStatusList);
		}

		if($selectedStatus == 1){
			$filters[] = 'a.accept > 0';
		}elseif($selectedStatus == -1){
			$filters[] = 'a.accept < 1';
		}elseif($selectedStatus == 2){
			$filters[] = 'a.confirmed < 1';
		}elseif($selectedStatus == 3){
			$filters[] = 'a.enabled > 0';
		}elseif($selectedStatus == -3){
			$filters[] = 'a.enabled < 1';
		}

		$query = 'SELECT '.implode(',', $this->selectedFields).$fromQuery;
		if(!empty($joinQuery)) $query .= ' JOIN '.implode(' JOIN ', $joinQuery);
		if(!empty($leftJoinQuery)) $query .= ' LEFT JOIN '.implode(' LEFT JOIN ', $leftJoinQuery);

		if(!empty($filters)){
			$query .= ' WHERE ('.implode(') AND (', $filters).')';
		}
		$query .= ' GROUP BY a.subid';
		if(!empty($pageInfo->filter->order->value)){
			$query .= ' ORDER BY '.$pageInfo->filter->order->value.' '.$pageInfo->filter->order->dir;
		}

		$database->setQuery($query, $pageInfo->limit->start, empty($pageInfo->limit->value) ? 500 : $pageInfo->limit->value);
		$rows = $database->loadObjectList('subid');

		$pageInfo->elements->page = count($rows);

		if($pageInfo->limit->value > $pageInfo->elements->page){
			$pageInfo->elements->total = $pageInfo->limit->start + $pageInfo->elements->page;
		}else{
			$queryCount = 'SELECT COUNT(DISTINCT '.$countField.') '.$fromQuery;
			if(!empty($pageInfo->search) || !empty($selectedStatus) || $selectedStatusList == -2 || !empty($fieldfilter)){
				if(!empty($joinQuery)) $queryCount .= ' JOIN '.implode(' JOIN ', $joinQuery);
				if(!empty($leftJoinQuery)) $queryCount .= ' LEFT JOIN '.implode(' LEFT JOIN ', $leftJoinQuery);
			}
			if(!empty($filters)) $queryCount .= ' WHERE ('.implode(') AND (', $filters).')';
			$pageInfo->elements->total = acymailing_loadResult($queryCount);
		}


		if(!empty($rows)){
			$database->setQuery('SELECT * FROM `#__acymailing_listsub` WHERE `subid` IN (\''.implode('\',\'', array_keys($rows)).'\')');
			$subscriptions = $database->loadObjectList();
			if(!empty($subscriptions)){
				foreach($subscriptions as $onesub){
					$sublistid = $onesub->listid;
					if(empty($rows[$onesub->subid]->subscription)) $rows[$onesub->subid]->subscription = new stdClass();
					$rows[$onesub->subid]->subscription->$sublistid = $onesub;
				}
			}
		}

		if(empty($pageInfo->limit->value)){
			if($pageInfo->elements->total > 500){
				acymailing_enqueueMessage('We do not want you to crash your server so we displayed only the first 500 users', 'warning');
			}
			$pageInfo->limit->value = 100;
		}

		jimport('joomla.html.pagination');
		$pagination = new JPagination($pageInfo->elements->total, $pageInfo->limit->start, $pageInfo->limit->value);

		$filters = new stdClass();
		$statusType = acymailing_get('type.statusfilter');
		if(!empty($selectedList)){
			$statusList = acymailing_get('type.statusfilterlist');
			if(!acymailing_isAdmin()) array_pop($statusList->values);
			$filters->statuslist = $statusList->display('filter_statuslist', $selectedStatusList);
		}

		$listsType = acymailing_get('type.lists');
		if(acymailing_isAdmin()){
			$filters->lists = $listsType->display('filter_lists', $selectedList, true, true);
			$filters->status = $statusType->display('filter_status', $selectedStatus);
		}else{
			$listClass = acymailing_get('class.list');
			$allLists = $listClass->getFrontendLists();
			if(count($allLists) > 1){
				$filters->lists = acymailing_select($allLists, "filter_lists", 'class="inputbox" size="1" onchange="document.adminForm.limitstart.value=0;document.adminForm.submit();"', 'listid', 'name', (int)$selectedList, "filter_lists");
			}else{
				$filters->lists = '<input type="hidden" name="filter_lists" value="'.$selectedList.'"/>';
			}
			$filters->status = '<input type="hidden" name="filter_status" value="0"/>';
		}

		if(acymailing_isAdmin()){
			$acyToolbar = acymailing_get('helper.toolbar');
			if(acymailing_isAllowed($config->get('acl_lists_filter', 'all'))) $acyToolbar->popup('action', acymailing_translation('ACTIONS'), 'index.php?option=com_acymailing&ctrl=filter&tmpl=component', 700, 500);
			if(acymailing_isAllowed($config->get('acl_subscriber_import', 'all'))) $acyToolbar->link(acymailing_completeLink('data&task=import&filter_lists='.$selectedList), acymailing_translation('IMPORT'), 'import');
			if(acymailing_isAllowed($config->get('acl_lists_filter', 'all')) || acymailing_isAllowed($config->get('acl_subscriber_import', 'all')) || acymailing_isAllowed($config->get('acl_subscriber_export', 'all'))) $acyToolbar->custom('export', acymailing_translation('ACY_EXPORT'), 'export', false);
			if(acymailing_isAllowed($config->get('acl_subscriber_export', 'all'))) $acyToolbar->divider();
			if(acymailing_isAllowed($config->get('acl_subscriber_manage', 'all'))) $acyToolbar->add();
			if(acymailing_isAllowed($config->get('acl_subscriber_manage', 'all'))) $acyToolbar->edit();
			if(acymailing_isAllowed($config->get('acl_subscriber_delete', 'all'))) $acyToolbar->delete();

			$acyToolbar->divider();
			$acyToolbar->help('subscriber-listing');
			$acyToolbar->setTitle(acymailing_translation('USERS'), 'subscriber');
			$acyToolbar->display();
		}

		$lists = $listsType->getData();
		$this->lists = $lists;
		$toggleClass = acymailing_get('helper.toggle');
		$this->toggleClass = $toggleClass;
		$this->rows = $rows;
		$this->filters = $filters;
		$this->pageInfo = $pageInfo;
		$this->pagination = $pagination;
		$this->config = $config;
		$this->displayFields = $displayFields;
		$this->customFields = $customFields;
	}

	function choose(){

		$pageInfo = new stdClass();

		$paramBase = ACYMAILING_COMPONENT.'.'.$this->getName().'_'.$this->getLayout().acymailing_getVar('int', 'onlyreg', 0);
		$pageInfo->filter = new stdClass();
		$pageInfo->filter->order = new stdClass();
		$pageInfo->limit = new stdClass();
		$pageInfo->elements = new stdClass();
		$pageInfo->filter->order->value = acymailing_getUserVar($paramBase.".filter_order", 'filter_order', 'a.name', 'cmd');
		$pageInfo->filter->order->dir = acymailing_getUserVar($paramBase.".filter_order_Dir", 'filter_order_Dir', 'asc', 'word');
		if(strtolower($pageInfo->filter->order->dir) !== 'desc') $pageInfo->filter->order->dir = 'asc';
		$pageInfo->search = acymailing_getUserVar($paramBase.".search", 'search', '', 'string');
		$pageInfo->search = strtolower(trim($pageInfo->search));

		$pageInfo->limit->value = acymailing_getUserVar($paramBase.'.list_limit', 'limit', acymailing_getCMSConfig('list_limit'), 'int');
		$pageInfo->limit->start = acymailing_getUserVar($paramBase.'.limitstart', 'limitstart', 0, 'int');

		if(empty($pageInfo->limit->value)) $pageInfo->limit->value = 100;

		$db = JFactory::getDBO();

		$filters = array();
		if(!empty($pageInfo->search)){
			$searchVal = '\'%'.acymailing_getEscaped($pageInfo->search, true).'%\'';
			$filters[] = implode(" LIKE $searchVal OR ", $this->searchFields)." LIKE $searchVal";
		}

		if(acymailing_getVar('int', 'onlyreg')){
			$filters[] = 'a.userid > 0';
		}

		$query = 'SELECT '.implode(',', $this->selectedFields).' FROM #__acymailing_subscriber as a';
		$query .= ' LEFT JOIN #__users as b on a.userid = b.id';
		if(!empty($filters)){
			$query .= ' WHERE ('.implode(') AND (', $filters).')';
		}
		if(!empty($pageInfo->filter->order->value)){
			$query .= ' ORDER BY '.$pageInfo->filter->order->value.' '.$pageInfo->filter->order->dir;
		}
		$db->setQuery($query, $pageInfo->limit->start, $pageInfo->limit->value);
		$rows = $db->loadObjectList();

		$queryWhere = 'SELECT COUNT(a.subid) FROM #__acymailing_subscriber as a';
		if(!empty($filters)){
			$queryWhere .= ' LEFT JOIN #__users as b on a.userid = b.id';
			$queryWhere .= ' WHERE ('.implode(') AND (', $filters).')';
		}

		$pageInfo->elements->total = acymailing_loadResult($queryWhere);
		$pageInfo->elements->page = count($rows);

		jimport('joomla.html.pagination');
		$pagination = new JPagination($pageInfo->elements->total, $pageInfo->limit->start, $pageInfo->limit->value);

		$this->rows = $rows;
		$this->pageInfo = $pageInfo;
		$this->pagination = $pagination;
	}

	function form(){
		$subid = acymailing_getCID('subid');
		$db = JFactory::getDBO();
		$config = acymailing_config();

		if(!empty($subid)){
			$subscriberClass = acymailing_get('class.subscriber');
			$subscriber = $subscriberClass->getFull($subid);
			$subscription = acymailing_isAdmin() ? $subscriberClass->getSubscription($subid) : $subscriberClass->getFrontendSubscription($subid);
			if(empty($subscriber->subid)){
				acymailing_display('User '.$subid.' not found', 'error');
				$subid = 0;
			}
		}

		if(empty($subid)){
			$listType = acymailing_get('class.list');
			$subscription = acymailing_isAdmin() ? $listType->getLists() : $listType->getFrontendLists();

			$subscriber = new stdClass();
			$subscriber->email = '';
			$subscriber->created = time();
			$subscriber->html = 1;
			$subscriber->confirmed = 1;
			$subscriber->blocked = 0;
			$subscriber->accept = 1;
			$subscriber->enabled = 1;
			$iphelper = acymailing_get('helper.user');
			$subscriber->ip = $iphelper->getIP();
		}

		if(acymailing_isAdmin()){
			$acyToolbar = acymailing_get('helper.toolbar');
			$acyToolbar->setTitle(acymailing_translation('ACY_USER'), 'subscriber&task=edit&subid='.$subid);
		}



		if(!empty($subid)){
			$query = 'SELECT a.`mailid`, a.`html`, a.`sent`, a.`senddate`,a.`open`, a.`opendate`, a.`bounce`, a.`fail`,b.`subject`,b.`alias`';
			$query .= ' FROM `#__acymailing_userstats` as a';
			$query .= ' JOIN '.acymailing_table('mail').' as b on a.mailid = b.mailid';
			$query .= ' WHERE a.subid = '.intval($subid).' ORDER BY a.senddate DESC LIMIT 30';
			$db->setQuery($query);
			$open = $db->loadObjectList();
			$this->open = $open;

			if(acymailing_level(3)){
				$db->setQuery('SELECT DISTINCT `mailid` FROM `#__acymailing_urlclick` WHERE `subid` = '.intval($subid));
				$clickedNews = $db->loadObjectList('mailid');
				$this->clickedNews = $clickedNews;
			}

			$query = 'SELECT a.*,b.`subject`,b.`alias`';
			$query .= ' FROM `#__acymailing_queue` as a';
			$query .= ' JOIN '.acymailing_table('mail').' as b on a.mailid = b.mailid';
			$query .= ' WHERE a.subid = '.intval($subid).' ORDER BY a.senddate ASC LIMIT 60';
			$db->setQuery($query);
			$queue = $db->loadObjectList();
			$this->queue = $queue;

			$query = 'SELECT h.*,m.subject FROM #__acymailing_history as h LEFT JOIN #__acymailing_mail as m ON h.mailid = m.mailid WHERE h.subid = '.intval($subid).' ORDER BY h.`date` DESC LIMIT 30';
			$db->setQuery($query);
			$history = $db->loadObjectList();
			$this->history = $history;

			$query = 'SELECT * FROM #__acymailing_geolocation WHERE geolocation_subid='.intval($subid).' ORDER BY geolocation_created DESC LIMIT 100';
			$db->setQuery($query);
			$geoloc = $db->loadObjectList();
			if(!empty($geoloc)){
				$markCities = array();
				$diffCountries = false;
				$dataDetails = array();
				foreach($geoloc as $mark){
					$indexCity = array_search($mark->geolocation_city, $markCities);
					if($indexCity === false){
						array_push($markCities, $mark->geolocation_city);
						$addressTmp = $mark->geolocation_city.' '.$mark->geolocation_state.' '.$mark->geolocation_country;
						array_push($dataDetails, array('nbInCity' => 1, 'actions' => $mark->geolocation_type, 'address' => $addressTmp));
					}else{
						$dataDetails[$indexCity]['nbInCity'] += 1;
						$dataDetails[$indexCity]['actions'] .= ", ".$mark->geolocation_type;
					}

					if(!$diffCountries){
						if(!empty($region) && $region != $mark->geolocation_country_code){
							$region = 'world';
							$diffCountries = true;
						}else{
							$region = $mark->geolocation_country_code;
						}
					}
				}
				$this->geoloc_region = $region;
				$this->geoloc_city = $markCities;
				$this->geoloc = $geoloc;
				$this->geoloc_details = $dataDetails;
			}

			if(!empty($subscriber->ip)){
				$query = 'SELECT * FROM #__acymailing_subscriber WHERE ip='.acymailing_escapeDB($subscriber->ip).' AND subid != '.intval($subid).' LIMIT 30';
				$db->setQuery($query);
				$neighbours = $db->loadObjectList();
				if(!empty($neighbours)){
					$this->neighbours = $neighbours;
				}
			}
		}

		$isAdmin = false;
		if(acymailing_isAdmin()){
			$isAdmin = true;

			$acyToolbar->addButtonOption('apply', acymailing_translation('ACY_APPLY'), 'apply', false);
			$acyToolbar->addButtonOption('save2new', acymailing_translation('ACY_SAVEANDNEW'), 'new', false);
			$acyToolbar->save();

			if(!empty($subscriber->userid)){
				if(file_exists(ACYMAILING_ROOT.'components'.DS.'com_comprofiler'.DS.'comprofiler.php')){
					$editLink = 'index.php?option=com_comprofiler&task=edit&cid[]=';
				}elseif(!ACYMAILING_J16){
					$editLink = 'index.php?option=com_users&task=edit&cid[]=';
				}else{
					$editLink = 'index.php?option=com_users&task=user.edit&id=';
				}
				$acyToolbar->link($editLink.$subscriber->userid, acymailing_translation('EDIT_JOOMLA_USER'), 'edit');
			}
			$acyToolbar->cancel();
			$acyToolbar->divider();
			$acyToolbar->help('subscriber-form');
			$acyToolbar->display();
		}


		$filters = new stdClass();
		$quickstatusType = acymailing_get('type.statusquick');
		$filters->statusquick = $quickstatusType->display('statusquick');

		$this->config = $config;
		if(!empty($subscriber->email)) $subscriber->email = acymailing_punycode($subscriber->email, 'emailToUTF8');
		$this->subscriber = $subscriber;
		$toggleClass = acymailing_get('helper.toggle');
		$this->toggleClass = $toggleClass;
		$this->subscription = $subscription;
		$this->filters = $filters;
		$statusType = acymailing_get('type.status');
		$this->statusType = $statusType;
		$this->isAdmin = $isAdmin;
	}
}
