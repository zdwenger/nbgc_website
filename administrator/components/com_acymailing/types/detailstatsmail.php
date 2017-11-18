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

class detailstatsmailType{
	function __construct(){

		$query = 'SELECT b.subject, a.mailid FROM '.acymailing_table('stats').' as a';
		$query .= ' JOIN '.acymailing_table('mail').' as b on a.mailid = b.mailid ORDER BY a.senddate DESC LIMIT 200';
		$db = JFactory::getDBO();
		$db->setQuery($query);
		$emails = $db->loadObjectList();

		$this->values = array();
		$this->values[] = acymailing_selectOption('0', acymailing_translation('ALL_EMAILS'));
		foreach($emails as $oneMail){
			if(!empty($oneMail->subject)) $oneMail->subject = Emoji::Decode($oneMail->subject);
			$this->values[] = acymailing_selectOption($oneMail->mailid, $oneMail->subject );
		}
	}

	function display($map,$value){
		return acymailing_select(  $this->values, $map, 'class="inputbox" size="1" onchange="document.adminForm.submit( );"', 'value', 'text', (int) $value );
	}
}
