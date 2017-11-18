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
$db = JFactory::getDBO();
$resultUsers = acymailing_loadResult('SELECT count(id) FROM '.acymailing_table('users', false));

$resultAcymailing = acymailing_loadResult('SELECT count(subid) FROM '.acymailing_table('subscriber').' WHERE userid > 0');

echo acymailing_translation_sprintf('ACY_IMPORT_NB_J_USERS', $resultUsers).'<br />';
echo acymailing_translation_sprintf('ACY_IMPORT_NB_ACY_USERS', $resultAcymailing).'<br />';
?>
<br/>
<br/>
<?php echo acymailing_translation('ACY_IMPORT_JOOMLA_1'); ?>
<ol>
	<li><?php echo acymailing_translation('ACY_IMPORT_JOOMLA_2'); ?></li>
	<li><?php echo acymailing_translation('ACY_IMPORT_JOOMLA_3'); ?></li>
	<li><?php echo acymailing_translation('ACY_IMPORT_JOOMLA_4'); ?></li>
	<li><?php echo acymailing_translation('ACY_IMPORT_JOOMLA_5'); ?></li>
</ol>
