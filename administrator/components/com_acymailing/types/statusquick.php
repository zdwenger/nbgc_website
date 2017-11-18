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

class statusquickType{
	function __construct(){
		$this->values = array();
		$this->values[] = acymailing_selectOption('0', acymailing_translation('JOOMEXT_RESET'));
		$this->values[] = acymailing_selectOption('1', acymailing_translation('SUBSCRIBE_ALL'));

		$js = "function updateStatus(statusval){".
			'var i=0;'.
			"while(window.document.getElementById('status'+i+statusval)){";
		if(ACYMAILING_J30){
			$js .= 'jQuery("label[for=status"+i+statusval+"]").click();';
		}
		$js .= "window.document.getElementById('status'+i+statusval).checked = true;";
		$js .= 'i++;}'.
		'}';
		acymailing_addScript(true, $js);
	}

	function display($map){
		return acymailing_radio($this->values, $map , 'class="radiobox" size="1" onclick="updateStatus(this.value)"', 'value', 'text', '','status_all');
	}
}
