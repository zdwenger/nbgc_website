<?php
/*------------------------------------------------------------------------
# plugin_googlemaps.css.php - Google Maps plugin
# To solve known css problems that break the design of a map 
# ------------------------------------------------------------------------
# author    mapsplugin.com
# copyright Copyright (C) 2011 mapsplugin.com. All Rights Reserved.
# @license - http://www.mapsplugin.com/license.txt
# Websites: http://www.mapsplugin.com
# Technical Support: http://www.mapsplugin.com
# Documentation: http://www.mapsplugin.com/Google-Maps/Documentation-of-plugin-Googlemap/
--------------------------------------------------------------------------*/

// No protection of Joomla because this php program may be called directly to deliver content
// It uses Joomla framework
// defined( '_JEXEC' ) or die( 'Restricted access' );

@define('_JEXEC', 1);

if (!defined('DS'))
	@define( 'DS', DIRECTORY_SEPARATOR );

@ob_start();

// Fix magic quotes.
@ini_set('magic_quotes_runtime', 0);
 
// Maximise error reporting.
//@ini_set('zend.ze1_compatibility_mode', '0');
//error_reporting(E_ALL);
//@ini_set('display_errors', 1);

/*
 * Ensure that required path constants are defined.
 */
if (!defined('JPATH_BASE'))
{
	$path = dirname(__FILE__);

	// Define the path based on the file and remove the path to the plugin
	$path = str_replace('/plugins/system/plugin_googlemap3', '', $path);
	$path = str_replace('\plugins\system\plugin_googlemap3', '', $path);
	
	define('JPATH_BASE', $path);
}

require_once ( JPATH_BASE.'/includes/defines.php' );
require_once ( JPATH_BASE.'/includes/framework.php' );
/* To use Joomla's Database Class */
require_once ( JPATH_BASE.'/libraries/joomla/factory.php' );
$mainframe = JFactory::getApplication('site');
$mainframe->initialise();
$user = JFactory::getUser();
$session = JFactory::getSession();

class plugin_googlemap3_css {
		function doExecute(){
			// Get config
			$plugin = JPluginHelper::getPlugin('system', 'plugin_googlemap3');
			
			$jversion = JVERSION;
			$params = new JRegistry();
			$params->loadString($plugin->params);
			
			// Plugin code
			$mapcss = $params->get('mapcss', '');
			
			// Clean already send output
			while (@ob_end_clean());
			
			// Set correct header
			header('Content-type: text/css; charset=utf-8');

			echo $mapcss;
		}
}

// Instantiate the application.
$web = new plugin_googlemap3_css;

// Run the application
$web->doExecute();

?>

