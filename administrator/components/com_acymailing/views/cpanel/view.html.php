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

class CpanelViewCpanel extends acymailingView{
	function display($tpl = null){
		$toggleClass = acymailing_get('helper.toggle');
		$config = acymailing_config();
		$db = JFactory::getDBO();
		$app = JFactory::getApplication();

		$language = acymailing_getLanguageTag();

		$styleRemind = 'float:right;margin-right:30px;position:relative;';
		$loadLink = acymailing_popup('index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=file&amp;task=latest&amp;code='.$language, acymailing_translation('LOAD_LATEST_LANGUAGE'), '', 800, 500, '', ' onclick="window.document.getElementById(\'acymailing_messages_warning\').style.display = \'none\';return true;" ');
		if(!file_exists(ACYMAILING_ROOT.'language'.DS.$language.DS.$language.'.com_acymailing.ini')){
			if($config->get('errorlanguagemissing', 1)){
				$notremind = '<small style="'.$styleRemind.'">'.$toggleClass->delete('acymailing_messages_warning', 'errorlanguagemissing_0', 'config', false, acymailing_translation('DONT_REMIND')).'</small>';
				acymailing_enqueueMessage(acymailing_translation('MISSING_LANGUAGE').' '.$loadLink.' '.$notremind, 'warning');
			}
		}elseif(version_compare(acymailing_translation('ACY_LANG_VERSION'), $config->get('version'), '<')){
			if($config->get('errorlanguageupdate', 1)){
				$notremind = '<small style="'.$styleRemind.'">'.$toggleClass->delete('acymailing_messages_warning', 'errorlanguageupdate_0', 'config', false, acymailing_translation('DONT_REMIND')).'</small>';
				acymailing_enqueueMessage(acymailing_translation('UPDATE_LANGUAGE').' '.$loadLink.' '.$notremind, 'warning');
			}
		}

		if(ACYMAILING_J30 && $app->getTemplate() == 'hathor'){
			if($config->get('errortemplatenotisis', 1)){
				$message = ' You can change the default Back-end template <a href="index.php?option=com_templates&view=styles">Here</a> or change your personnal default Back-end template by editing your user profile <a href="index.php?option=com_users&view=users">Here</a>, tab "Basic Settings".';
				$notremind = '<small style="'.$styleRemind.'">'.$toggleClass->delete('acymailing_messages_warning', 'errortemplatenotisis_0', 'config', false, acymailing_translation('DONT_REMIND')).'</small>';
				acymailing_enqueueMessage('You should rather use the isis template in the Back-End which suits more AcyMailing.'.$message.$notremind, 'warning');
			}
		}

		if($config->get('migratefromj2', 1) && ACYMAILING_J16 && !ACYMAILING_J30){
			$notremind = '<small style="'.$styleRemind.'">'.$toggleClass->delete('acymailing_messages_error', 'migratefromj2_0', 'config', false, acymailing_translation('DONT_REMIND')).'</small>';
			acymailing_enqueueMessage(acymailing_translation_sprintf('ACY_MIGRATE', '<a target="_blank" href="http://www.acyba.com/index.php?option=com_updateme&ctrl=redirect&page=j25migration">'.acymailing_translation('ACY_MIGRATE_HELP').'</a>').$notremind, 'warning');
		}

		$indexes = array('listsub', 'stats', 'list', 'mail', 'userstats', 'urlclick', 'history', 'template', 'queue', 'subscriber');
		$addIndexes = array('We recently optimized our database...');
		foreach($indexes as $oneTable){
			if($config->get('optimize_'.$oneTable, 1)) continue;
			$addIndexes[] = 'Please '.$toggleClass->toggleText('addindex', $oneTable, 'config', 'click here').' to add indexes on the '.$oneTable.' table';
		}
		if(count($addIndexes) > 1) acymailing_enqueueMessage($addIndexes, 'warning');



		$acyToolbar = acymailing_get('helper.toolbar');
		$acyToolbar->custom('test', acymailing_translation('SEND_TEST'), 'send', false);
		$acyToolbar->divider();
		$acyToolbar->addButtonOption('apply', acymailing_translation('ACY_APPLY'), 'apply', false);
		$acyToolbar->save();
		$acyToolbar->cancel();
		$acyToolbar->divider();
		$acyToolbar->help('config');
		$acyToolbar->setTitle(acymailing_translation('ACY_CONFIGURATION'), 'cpanel');
		$acyToolbar->display();

		$elements = new stdClass();
		$elements->add_names = acymailing_boolean("config[add_names]", '', $config->get('add_names', true));
		$elements->embed_images = acymailing_boolean("config[embed_images]", '', $config->get('embed_images', 0));
		$elements->embed_files = acymailing_boolean("config[embed_files]", '', $config->get('embed_files', 1));
		$elements->multiple_part = acymailing_boolean("config[multiple_part]", '', $config->get('multiple_part', 0));

		$mailerMethods = array('elasticemail', 'smtp', 'sendmail');
		$js = "function updateMailer(mailermethod){"."\n";
		foreach($mailerMethods as $oneMethod){
			$js .= " window.document.getElementById('".$oneMethod."_config').style.display = 'none'; "."\n";
		}
		$js .= "if(window.document.getElementById(mailermethod+'_config')) {window.document.getElementById(mailermethod+'_config').style.display = 'block';} }";
		$js .= 'document.addEventListener("DOMContentLoaded", function(){ updateMailer(\''.$config->get('mailer_method', 'phpmail').'\'); });';
		acymailing_addScript(true, $js);

		$encodingval = array();
		$encodingval[] = acymailing_selectOption('binary', 'Binary');
		$encodingval[] = acymailing_selectOption('quoted-printable', 'Quoted-printable');
		$encodingval[] = acymailing_selectOption('7bit', '7 Bit');
		$encodingval[] = acymailing_selectOption('8bit', '8 Bit');
		$encodingval[] = acymailing_selectOption('base64', 'Base 64');
		$elements->encoding_format = acymailing_select($encodingval, "config[encoding_format]", 'size="1" style="width:150px;"', 'value', 'text', $config->get('encoding_format', 'base64'));

		$elements->special_chars = acymailing_boolean("config[special_chars]", '', $config->get('special_chars', 0));

		$charset = acymailing_get('type.charset');
		$elements->charset = $charset->display("config[charset]", $config->get('charset', 'UTF-8'));

		$securedVals = array();
		$securedVals[] = acymailing_selectOption('', '- - -');
		$securedVals[] = acymailing_selectOption('ssl', 'SSL');
		$securedVals[] = acymailing_selectOption('tls', 'TLS');
		$elements->smtp_secured = acymailing_select($securedVals, "config[smtp_secured]", 'size="1" style="width:100px;"', 'value', 'text', $config->get('smtp_secured'));

		$elements->smtp_auth = acymailing_boolean("config[smtp_auth]", '', $config->get('smtp_auth', 0));
		$elements->smtp_keepalive = acymailing_boolean("config[smtp_keepalive]", '', $config->get('smtp_keepalive', 1));

		$elements->allow_visitor = acymailing_boolean("config[allow_visitor]", '', $config->get('allow_visitor', 1));

		$editorType = acymailing_get('type.editor');
		$elements->editor = $editorType->display('config[editor]', $config->get('editor'));

		$elements->subscription_message = acymailing_boolean("config[subscription_message]", '', $config->get('subscription_message', 1));
		$elements->confirmation_message = acymailing_boolean("config[confirmation_message]", '', $config->get('confirmation_message', 1));
		$elements->unsubscription_message = acymailing_boolean("config[unsubscription_message]", '', $config->get('unsubscription_message', 1));
		$elements->welcome_message = acymailing_boolean("config[welcome_message]", '', $config->get('welcome_message', 1));
		$elements->unsub_message = acymailing_boolean("config[unsub_message]", '', $config->get('unsub_message', 1));
		$elements->confirm_message = acymailing_boolean("config[confirm_message]", '', $config->get('confirm_message', 0));


		if(acymailing_level(1)){
			$js = 'var selectedForward = '.$config->get('forward', 0).'
					function confirmForward(clickedForward){
						if(clickedForward == selectedForward || clickedForward != 1) return true;

						var cnfrm = confirm(\''.str_replace("'", "\'", acymailing_translation('ACY_FORWARDCHOICE_CONFIRMATION')).'\');
						if(!cnfrm) return true;';

				if(ACYMAILING_J30){
					$js .= '
					var labels = document.getElementById("config_forwardfieldset").getElementsByTagName("label");
					for(oneLabel in labels){
						if(isNaN(oneLabel)) continue;
						if(labels[oneLabel].getAttribute("for") == "config_forward2"){
							labels[oneLabel].click();
						}
					}';
				}else{
					$js .= 'document.getElementById("config[forward]2").checked = true;';
				}

				$js .= '}';
			acymailing_addScript(true, $js);

			$forwardValues = array();
			$forwardValues[] = acymailing_selectOption(0, acymailing_translation('JOOMEXT_NO'));
			$forwardValues[] = acymailing_selectOption(1, acymailing_translation('JOOMEXT_YES'));
			$forwardValues[] = acymailing_selectOption(2, acymailing_translation('JOOMEXT_YES_FORWARD'));
			$elements->forward = acymailing_radio($forwardValues, "config[forward]", 'onclick="confirmForward(this.value);"', 'value', 'text', $config->get('forward', 0));
		}else{
			$elements->forward = acymailing_getUpgradeLink('essential');
		}

		if(acymailing_level(1)){
			$js = "function updateDKIM(dkimval){
						if(dkimval == 1){document.getElementById('dkim_config').style.display = 'block';}
						else{document.getElementById('dkim_config').style.display = 'none';}
						};";
			acymailing_addScript(true, $js);
			if(function_exists('openssl_sign')){
				$elements->dkim = acymailing_boolean("config[dkim]", 'onclick="updateDKIM(this.value)"', $config->get('dkim', 0));
			}else{
				$elements->dkim = '<input type="hidden" name="config[dkim]" value="0" />PHP Extension openssl not enabled';
			}

			$js = "function updateQueueProcess(newvalue){";
			$js .= "if(newvalue == 'onlyauto') {window.document.getElementById('method_auto').style.display = ''; window.document.getElementById('method_manual').style.display = 'none';}";
			$js .= "if(newvalue == 'auto') {window.document.getElementById('method_auto').style.display = ''; window.document.getElementById('method_manual').style.display = '';}";
			$js .= "if(newvalue == 'manual') {window.document.getElementById('method_auto').style.display = 'none'; window.document.getElementById('method_manual').style.display = '';}";
			$js .= '};';

			acymailing_addScript(true, $js);

			$queueType = array();
			$queueType[] = acymailing_selectOption('onlyauto', acymailing_translation('AUTO_ONLY'));
			$queueType[] = acymailing_selectOption('auto', acymailing_translation('AUTO_MAN'));
			$queueType[] = acymailing_selectOption('manual', acymailing_translation('MANUAL_ONLY'));
			$elements->queue_type = acymailing_radio($queueType, "config[queue_type]", 'onclick="updateQueueProcess(this.value);"', 'value', 'text', $config->get('queue_type', 'auto'));
		}else{
			$elements->dkim = acymailing_getUpgradeLink('essential');
		}

		$js = 'var selectedHTTPS = '.($config->get('ssl_links', 0) == 0 ? 'false;' : 'true;').'
		function confirmHTTPS(element){
			var clickedHTTPS = (element == 1);
			if(clickedHTTPS == selectedHTTPS) return true;
			if(clickedHTTPS){
				var cnfrm = confirm(\''.str_replace("'", "\'", acymailing_translation('ACY_SSLCHOICE_CONFIRMATION')).'\');
				if(!cnfrm){';
		if(ACYMAILING_J30){
			$js .= 'var labels = document.getElementById(\'config_ssl_linksfieldset\').getElementsByTagName(\'label\');
					if(labels[0].hasClass(\'btn-success\')){
						labels[1].click();
						return true;
					}else{
						labels[0].click();
						return true;
					}';
		}else{
			$js .= 'return false;';
		}
		$js .= '}
			}
			selectedHTTPS = clickedHTTPS;
			return true;
		}';
		acymailing_addScript(true, $js);
		$elements->ssl_links = acymailing_boolean("config[ssl_links]", 'onclick="return confirmHTTPS(this.value);"', $config->get('ssl_links', 0));

		$delayTypeManual = acymailing_get('type.delay');
		$elements->queue_pause = $delayTypeManual->display('config[queue_pause]', $config->get('queue_pause'), 0);
		$delayTypeAuto = acymailing_get('type.delay');
		$delayTypeAuto->onChange = "window.document.getElementById('autoFrequencyWarning').style.display='inline';";
		$onChangeMsg = '<span style="display:none;color:red;" id="autoFrequencyWarning">'.acymailing_translation('ACY_CRON_CHANGE_FREQUENCY_WARNING').'</span>';
		$elements->cron_frequency = $delayTypeAuto->display('config[cron_frequency]', $config->get('cron_frequency'), 2).$onChangeMsg;

		$js = "function detectTimeout(id){
				try{
					window.document.getElementById(id).className = 'onload';
					window.document.getElementById(id).innerHTML = '".str_replace("'", "\'", acymailing_translation('ACY_CLOSE_TIMEOUT'))."';

					var xhr = new XMLHttpRequest();
					xhr.open('GET', '".rtrim(acymailing_rootURI(), '/')."/index.php?option=com_acymailing&tmpl=component&ctrl=statistics&task=detecttimeout&seckey=".$config->get('security_key')."');
					xhr.onload = function(){
						document.id(id).innerHTML = 'Done!';
						window.document.getElementById(id).className = 'loading';
					}
					xhr.send();
				}catch(err){
					alert('Could not load the max execution time value : '+err);
				}
				return;
		}";
		$maxexecutiontime = $config->get('max_execution_time');
		if(empty($maxexecutiontime) && (intval($config->get('last_maxexec_check')) < (time() - 60))){
			$js .= 'window.addEventListener("load", function() {detectTimeout(\'timeoutcheck\')});';
		}
		acymailing_addScript(true, $js);

		$cssval = array('css_frontend' => 'component', 'css_module' => 'module', 'css_backend' => 'backend');
		foreach($cssval as $configval => $type){
			$myvals = array();
			$myvals[] = acymailing_selectOption('', acymailing_translation('ACY_NONE'));

			if($configval == 'css_backend'){
				$myvals[] = acymailing_selectOption('backend_custom', acymailing_translation('ACY_CUSTOM'));
				$editFileName = $config->get('css_backend', 'default');
			}else{

				$regex = '^'.$type.'_([-_a-z0-9]*)\.css$';
				$allCSSFiles = acymailing_getFiles(ACYMAILING_MEDIA.'css', $regex);

				$family = '';
				foreach($allCSSFiles as $oneFile){
					preg_match('#'.$regex.'#i', $oneFile, $results);
					$fileName = str_replace('default_', '', $results[1]);
					$fileNameArray = explode('_', $fileName);
					if(count($fileNameArray) == 2){
						if($fileNameArray[0] != $family){
							if(!empty($family)) $myvals[] = acymailing_selectOption('</OPTGROUP>');
							$family = $fileNameArray[0];
							$myvals[] = acymailing_selectOption('<OPTGROUP>', ucfirst($family));
						}
						unset($fileNameArray[0]);
						$fileName = implode('_', $fileNameArray);
					}

					$fileName = ucwords(str_replace('_', ' ', $fileName));
					$myvals[] = acymailing_selectOption($results[1], $fileName);
				}
				if(!empty($family)) $myvals[] = acymailing_selectOption('</OPTGROUP>');
				$editFileName = $type.'_'.$config->get($configval, 'default');
			}

			$currentVal = $config->get($configval, 'default');
			$aStyle = empty($currentVal) ? ' style="display:none" ' : '';
			$js = 'onchange="updateCSSLink(\''.$configval.'\',\''.$type.'\',this.value);"';

			$elements->$configval = acymailing_select($myvals, 'config['.$configval.']', 'class="inputbox" size="1" '.$js, 'value', 'text', $config->get($configval, 'default'), $configval.'_choice');
			$linkEdit = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=file&amp;task=css&amp;var='.$configval.'&amp;file='.$editFileName;
			$elements->$configval .= ' '.acymailing_popup($linkEdit, '<i class="acyicon-edit" style="margin: 5px 5px 0px 5px; display: inline-block;"></i>', '', 800, 500, $configval.'_link', $aStyle);
		}

		$js = "function updateCSSLink(myid,type,newval){
			if(newval){document.getElementById(myid+'_link').style.display = '';}else{document.getElementById(myid+'_link').style.display = 'none'}
			if(myid == 'css_backend') filename = newval;
			else filename = type+'_'+newval;
			document.getElementById(myid+'_link').href = 'index.php?option=com_acymailing&tmpl=component&ctrl=file&task=css&var='+myid+'&file='+filename;
		}";
		acymailing_addScript(true, $js);
		$bootstrapFrontValues = array();
		$bootstrapFrontValues[] = acymailing_selectOption(0, acymailing_translation('JOOMEXT_NO'));
		$bootstrapFrontValues[] = acymailing_selectOption(1, 'Bootstrap 2');
		$bootstrapFrontValues[] = acymailing_selectOption(2, 'Bootstrap 3');
		$elements->bootstrap_frontend = acymailing_radio($bootstrapFrontValues, "config[bootstrap_frontend]", '', 'value', 'text', $config->get('bootstrap_frontend', 0));

		$elements->colortype = acymailing_get('type.color');

		$elements->use_sef = acymailing_boolean("config[use_sef]", '', $config->get('use_sef', 0));

		if(acymailing_level(1)){
			$trackingMode = $config->get('trackingsystem', 'acymailing');
			$tracking_system = '<input type="checkbox" name="config[trackingsystem][]" id="trackingsystem[0]" value="acymailing" style="margin-left:10px" '.(stripos($trackingMode, 'acymailing') !== false ? 'checked="checked"' : '').'/> <label for="trackingsystem[0]">Acymailing</label>';
			$tracking_system .= '<input type="checkbox" name="config[trackingsystem][]" id="trackingsystem[1]" value="google" style="margin-left:10px;" '.(stripos($trackingMode, 'google') !== false ? 'checked="checked"' : '').'/> <label for="trackingsystem[1]">Google Analytics</label>';
			$tracking_system .= '<input type="hidden" name="config[trackingsystem][]" value="1"/>';
			$tracking_system_external_website = acymailing_boolean("config[trackingsystemexternalwebsite]", ' id="trackingsystemexternalwebsite"', $config->get('trackingsystemexternalwebsite', 1));
		}else{
			$tracking_system = acymailing_getUpgradeLink('essential');
			$tracking_system_external_website = acymailing_getUpgradeLink('essential');
		}
		$elements->tracking_system = $tracking_system;
		$elements->tracking_system_external_website = $tracking_system_external_website;

		$indexType = $config->get('indexFollow', '');
		$indexFollow = '<div style="float: left;"><input type="checkbox" name="config[indexFollow][]" id="indexFollow[0]" value="noindex" style="margin-left:10px" '.(stripos($indexType, 'noindex') !== false ? 'checked="checked"' : '').'/> <label for="indexFollow[0]">noindex</label></div>';
		$indexFollow .= '<div style="float: left;"><input type="checkbox" name="config[indexFollow][]" id="indexFollow[1]" value="nofollow" style="margin-left:10px" '.(stripos($indexType, 'nofollow') !== false ? 'checked="checked"' : '').'/> <label for="indexFollow[1]">nofollow</label></div>';
		$indexFollow .= '<input type="hidden" name="config[indexFollow][]" value="1"/>';
		$elements->indexFollow = $indexFollow;

		if(acymailing_level(3)){
			$geolocAvailable = true;
			$geolocation = '<input type="hidden" name="config[geolocation]" value="0"/>';
			$geoloc_api_key = '';
			if(!function_exists('curl_init')){
				$geolocAvailable = false;
				$geolocation .= 'The AcyMailing geolocation plugin needs the CURL library installed but it seems that it is not available on your server. Please contact your web hosting to set it up.';
			}
			if(!function_exists('json_decode')){
				if(!$geolocAvailable) $geolocation .= '<br />';
				$geolocAvailable = false;
				$geolocation .= 'The AcyMailing geolocation plugin can only work with PHP 5.2 at least. Please ask your web hosting to update your PHP version.';
			}

			if($geolocAvailable){
				$geoloc = $config->get('geolocation', '');
				$geolocation = '<span style="white-space:nowrap"><input type="checkbox" name="config[geolocation][]" id="geolocation_0" value="creation" style="margin-left:10px" '.(stripos($geoloc, 'creation') !== false ? 'checked="checked"' : '').'/> <label for="geolocation_0">'.acymailing_translation('ON_USER_CREATE').'</label></span>';
				$geolocation .= ' <span style="white-space:nowrap"><input type="checkbox" name="config[geolocation][]" id="geolocation_1" value="modify" style="margin-left:10px;" '.(stripos($geoloc, 'modify') !== false ? 'checked="checked"' : '').'/> <label for="geolocation_1">'.acymailing_translation('ON_USER_CHANGE').'</label></span>';
				$geolocation .= ' <span style="white-space:nowrap"><input type="checkbox" name="config[geolocation][]" id="geolocation_2" value="confirm" style="margin-left:10px;" '.(stripos($geoloc, 'confirm') !== false ? 'checked="checked"' : '').'/> <label for="geolocation_2">'.acymailing_translation('GEOLOC_CONFIRM_SUB').'</label></span>';
				$geolocation .= ' <span style="white-space:nowrap"><input type="checkbox" name="config[geolocation][]" id="geolocation_3" value="clic" style="margin-left:10px;" '.(stripos($geoloc, 'clic') !== false ? 'checked="checked"' : '').'/> <label for="geolocation_3">'.acymailing_translation('ON_USER_CLICK').'</label></span>';
				$geolocation .= ' <span style="white-space:nowrap"><input type="checkbox" name="config[geolocation][]" id="geolocation_4" value="open" style="margin-left:10px;" '.(stripos($geoloc, 'open') !== false ? 'checked="checked"' : '').'/> <label for="geolocation_4">'.acymailing_translation('ON_OPEN_NEWS').'</label></span>';
				$geolocation .= ' <span style="white-space:nowrap"><input type="checkbox" name="config[geolocation][]" id="geolocation_5" value="unsubscription" style="margin-left:10px;" '.(stripos($geoloc, 'unsubscription') !== false ? 'checked="checked"' : '').'/> <label for="geolocation_5">'.acymailing_translation('GEOLOC_UNSUB').'</label></span>';
				$geolocation .= '<input type="hidden" name="config[geolocation][]" value="1"/>';
				$geoloc_api_key = '<input class="inputbox" type="text" id="geoloc_api_key" name="config[geoloc_api_key]" style="width:450px" value="'.$this->escape($config->get('geoloc_api_key', '')).'">';
			}
		}else{
			$geolocation = acymailing_getUpgradeLink('enterprise');
			$geoloc_api_key = false;
		}
		$elements->geolocation = $geolocation;
		$elements->geoloc_api_key = $geoloc_api_key;

		if(!ACYMAILING_J16){
			$query = 'SELECT a.name, a.id as itemid, b.title  FROM `#__menu` as a JOIN `#__menu_types` as b on a.menutype = b.menutype WHERE a.access = 0 ORDER BY b.title ASC,a.ordering ASC';
		}else{
			$orderby = ACYMAILING_J30 ? 'a.lft' : 'a.ordering';
			$query = 'SELECT a.alias as name, a.id as itemid, b.title  FROM `#__menu` as a JOIN `#__menu_types` as b on a.menutype = b.menutype WHERE a.access = 1 AND a.client_id=0 AND a.parent_id != 0 ORDER BY b.title ASC,'.$orderby.' ASC';
		}

		$db->setQuery($query);
		$joomMenus = $db->loadObjectList();

		$menuvalues = array();
		$menuvalues[] = acymailing_selectOption('0', acymailing_translation('ACY_NONE'));
		$lastGroup = '';
		foreach($joomMenus as $oneMenu){
			if($oneMenu->title != $lastGroup){
				if(!empty($lastGroup)) $menuvalues[] = acymailing_selectOption('</OPTGROUP>');
				$menuvalues[] = acymailing_selectOption('<OPTGROUP>', $oneMenu->title);
				$lastGroup = $oneMenu->title;
			}
			$menuvalues[] = acymailing_selectOption($oneMenu->itemid, $oneMenu->name);
		}

		$elements->acymailing_menu = acymailing_select($menuvalues, 'config[itemid]', 'size="1"', 'value', 'text', $config->get('itemid'));


		$acyrss_format = array();
		$acyrss_format[] = acymailing_selectOption('', acymailing_translation('ACY_NONE'));
		$acyrss_format[] = acymailing_selectOption('rss', 'RSS feed');
		$acyrss_format[] = acymailing_selectOption('atom', 'Atom feed');
		$acyrss_format[] = acymailing_selectOption('both', acymailing_translation('ACY_ALL'));
		$elements->acyrss_format = acymailing_select($acyrss_format, "config[acyrss_format]", 'size="1"', 'value', 'text', $config->get('acyrss_format', ''));

		$acyrss_order = array();
		$acyrss_order[] = acymailing_selectOption('senddate', acymailing_translation('SEND_DATE'));
		$acyrss_order[] = acymailing_selectOption('mailid', acymailing_translation('ACY_ID'));
		$acyrss_order[] = acymailing_selectOption('subject', acymailing_translation('ACY_TITLE'));
		$elements->acyrss_order = acymailing_select($acyrss_order, "config[acyrss_order]", 'size="1"', 'value', 'text', $config->get('acyrss_order', 'senddate'));



		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=email&amp;task=edit&amp;mailid=confirmation';
		$elements->editConfEmail = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('EDIT_CONF_MAIL').'</button>', '', 800, 500, 'confirmemail');

		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=email&amp;task=edit&amp;mailid=notification_created';
		$elements->edit_notification_created = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('EDIT_NOTIFICATION_MAIL').'</button>');
		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=email&amp;task=edit&amp;mailid=notification_refuse';
		$elements->edit_notification_refuse = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('EDIT_NOTIFICATION_MAIL').'</button>');
		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=email&amp;task=edit&amp;mailid=notification_unsuball';
		$elements->edit_notification_unsuball = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('EDIT_NOTIFICATION_MAIL').'</button>');
		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=email&amp;task=edit&amp;mailid=notification_unsub';
		$elements->edit_notification_unsub = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('EDIT_NOTIFICATION_MAIL').'</button>');
		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=email&amp;task=edit&amp;mailid=notification_contact';
		$elements->edit_notification_contact = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('EDIT_NOTIFICATION_MAIL').'</button>');
		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=email&amp;task=edit&amp;mailid=notification_contact_menu';
		$elements->edit_notification_contact_menu = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('EDIT_NOTIFICATION_MAIL').'</button>');
		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=email&amp;task=edit&amp;mailid=notification_confirm';
		$elements->edit_notification_confirm = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('EDIT_NOTIFICATION_MAIL').'</button>');

		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=email&amp;task=edit&amp;mailid=modif';
		$elements->editModifEmail = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('EDIT_NOTIFICATION_MAIL').'</button>', '', 800, 500, 'modifemail');

		$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=cpanel&amp;task=checkDB';
		$elements->checkDB = acymailing_popup($link, '<button class="acymailing_button_grey" onclick="return false">'.acymailing_translation('DATABASE_INTEGRITY').'</button>');

		$js = "function addUnsubReason(){
			var input = document.createElement('input');
			input.name = 'unsub_reasons[]';
			input.style.width = '300px';
			input.style.margin = '3px 0px';
			input.type = 'text';
			document.getElementById('unsub_reasons').appendChild(input);
			var br = document.createElement('br');
			document.getElementById('unsub_reasons').appendChild(br);
		}
		function displaySurvey(surveyval){
			if(surveyval == 1){
				document.getElementById('unsub_reasons_area').style.display = 'block';
			}else{
				document.getElementById('unsub_reasons_area').style.display = 'none';
			}
		}
		";
		acymailing_addScript(true, $js);

		$path = acymailing_getLanguagePath(ACYMAILING_ROOT);
		$dirs = acymailing_getFolders($path);
		$languages = array();

		foreach($dirs as $dir){
			if(strlen($dir) != 5 || $dir == "xx-XX") continue;
			$xmlFiles = acymailing_getFiles($path.DS.$dir, '^([-_A-Za-z]*)\.xml$');
			$xmlFile = reset($xmlFiles);
			if(empty($xmlFile)){
				$data = array();
			}else{
				$data = JApplicationHelper::parseXMLLangMetaFile($path.DS.$dir.DS.$xmlFile);
			}

			$oneLanguage = new stdClass();
			$oneLanguage->language = $dir;
			$oneLanguage->name = empty($data['name']) ? $dir : $data['name'];

			$languageFiles = acymailing_getFiles($path.DS.$dir, '^(.*)\.com_acymailing\.ini$');
			$languageFile = reset($languageFiles);
			$linkEdit = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=file&amp;task=language&amp;code='.$oneLanguage->language;
			$oneLanguage->edit = acymailing_popup($linkEdit, '<i class="acyicon-'.(empty($languageFile) ? 'new' : 'edit').'" id="image'.$oneLanguage->language.'"></i>');

			$languages[] = $oneLanguage;
		}

		$js = "function updateConfirmation(newvalue){";
		$js .= "if(newvalue == 0) {window.document.getElementById('confirmemail').style.display = 'none'; window.document.getElementById('confirm_redirect').disabled = true;}else{window.document.getElementById('confirmemail').style.display = 'inline'; window.document.getElementById('confirm_redirect').disabled = false;}";
		$js .= '}';
		$js .= "function updateModification(newvalue){ if(newvalue != 'none') {window.document.getElementById('modifemail').style.display = 'none';}else{window.document.getElementById('modifemail').style.display = 'inline';}} ";
		$js .= 'window.addEventListener("load", function(){ updateModification(\''.$config->get('allow_modif', 'data').'\'); updateConfirmation('.$config->get('require_confirmation', 0).'); });';
		acymailing_addScript(true, $js);

		$elements->require_confirmation = acymailing_boolean("config[require_confirmation]", 'onclick="updateConfirmation(this.value)"', $config->get('require_confirmation', 0));

		$allowmodif = array();
		$allowmodif[] = acymailing_selectOption("none", acymailing_translation('JOOMEXT_NO'));
		$allowmodif[] = acymailing_selectOption("data", acymailing_translation('ONLY_SUBSCRIPTION'));
		$allowmodif[] = acymailing_selectOption("all", acymailing_translation('JOOMEXT_YES'));
		$elements->allow_modif = acymailing_radio($allowmodif, "config[allow_modif]", 'size="1" onclick="updateModification(this.value)"', 'value', 'text', $config->get('allow_modif', 'data'));




		if(!ACYMAILING_J16){
			$db->setQuery("SELECT name,published,id FROM `#__plugins` WHERE `folder` = 'acymailing' AND `element` NOT LIKE 'plg%' ORDER BY published DESC, name ASC");
		}else{
			$db->setQuery("SELECT name,enabled as published,extension_id as id FROM `#__extensions` WHERE `state` <> -1 AND `folder` = 'acymailing' AND `type`= 'plugin' AND `element` NOT LIKE 'plg%' ORDER BY enabled DESC, name ASC");
		}
		$plugins = $db->loadObjectList();

		if(!ACYMAILING_J16){
			$db->setQuery("SELECT name,published,id FROM `#__plugins` WHERE (`folder` != 'acymailing' OR `element` LIKE 'plg%') AND (`name` LIKE '%acymailing%' OR `element` LIKE '%acymailing%') ORDER BY published DESC, name ASC");
		}else{
			$db->setQuery("SELECT name,enabled as published ,extension_id as id FROM `#__extensions` WHERE `state` <> -1 AND (`folder` != 'acymailing' OR `element` LIKE 'plg%') AND `type` = 'plugin' AND (`name` LIKE '%acymailing%' OR `element` LIKE '%acymailing%') ORDER BY enabled DESC, name ASC");
		}

		$integrationplugins = $db->loadObjectList();

		$bounceaction = acymailing_get('type.bounceaction');
		$this->bounceaction = $bounceaction;
		$this->config = $config;
		$this->languages = $languages;
		$this->elements = $elements;
		$this->plugins = $plugins;
		$this->integrationplugins = $integrationplugins;


		$tabs = acymailing_get('helper.acytabs');
		$tabs->setOptions(array('useCookie' => true));

		$this->tabs = $tabs;
		$this->toggleClass = $toggleClass;

		if((!ACYMAILING_J16 AND !file_exists(rtrim(JPATH_SITE, DS).DS.'plugins'.DS.'acymailing'.DS.'tagsubscriber.php')) OR (ACYMAILING_J16 AND !file_exists(rtrim(JPATH_SITE, DS).DS.'plugins'.DS.'acymailing'.DS.'tagsubscriber'.DS.'tagsubscriber.php'))) acymailing_checkPluginsFolders();

		return parent::display($tpl);
	}
}
