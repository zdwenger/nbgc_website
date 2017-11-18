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
if(!include_once(rtrim(JPATH_ADMINISTRATOR,DIRECTORY_SEPARATOR).DIRECTORY_SEPARATOR.'components'.DIRECTORY_SEPARATOR.'com_acymailing'.DIRECTORY_SEPARATOR.'helpers'.DIRECTORY_SEPARATOR.'helper.php')){
	echo 'This module can not work without the AcyMailing Component';
}

if(!ACYMAILING_J16){

	class JElementLists extends JElement
	{
		function fetchElement($name, $value, &$node, $control_name)
		{
			$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=chooselist&amp;task='.$name.'&amp;values='.$value.'&amp;control='.$control_name;
			$text = '<input class="inputbox" id="'.$control_name.$name.'" name="'.$control_name.'['.$name.']" type="text" style="width:100px" value="'.$value.'">';
			$text .= acymailing_popup($link, '<button class="btn" onclick="return false">'.acymailing_translation('Select').'</button>', '', 650, 375, 'link'.$control_name.$name);

			return $text;
		}
	}
}else{
	class JFormFieldLists extends JFormField
	{
		var $type = 'lists';

		function getInput() {

			$link = 'index.php?option=com_acymailing&amp;tmpl=component&amp;ctrl=chooselist&amp;task='.$this->name.'&amp;values='.$this->value.'&amp;control=';
			$text = '<input class="inputbox" id="'.$this->name.'" name="'.$this->name.'" type="text" style="width:100px" value="'.$this->value.'">';
			$text .= acymailing_popup($link, '<button class="btn" onclick="return false">'.acymailing_translation('Select').'</button>', '', 650, 375, 'link'.$this->name);

			return $text;
		}
	}
}
