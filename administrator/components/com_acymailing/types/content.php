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

class contentType{
	var $onclick = 'updateTag();';
	function __construct(){
		$this->values = array();
		$this->values[] = acymailing_selectOption("|type:title", acymailing_translation('TITLE_ONLY'));
		$this->values[] = acymailing_selectOption("|type:intro", acymailing_translation('INTRO_ONLY'));
		$this->values[] = acymailing_selectOption("|type:text", acymailing_translation('FIELD_TEXT'));
		$this->values[] = acymailing_selectOption("|type:full", acymailing_translation('FULL_TEXT'));
	}

	function display($map,$value){
		return acymailing_radio($this->values, $map , 'size="1" onclick="'.$this->onclick.'"', 'value', 'text', $value);
	}

}
