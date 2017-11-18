<?php
/**
 * @package	AcyMailing for Joomla!
 * @version	5.8.1
 * @author	acyba.com
 * @copyright	(C) 2009-2017 ACYBA S.A.R.L. All rights reserved.
 * @license	GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 */
defined('_JEXEC') or die('Restricted access');
?><div id="acy_content">
	<form action="<?php echo acymailing_route('index.php?option=com_acymailing&tmpl=component'); ?>" method="post" name="adminForm" id="adminForm" autocomplete="off">
		<?php
		$toolbar = acymailing_get('helper.toolbar');
		$toolbar->help('plugin-'.$this->help);
		$toolbar->divider();
		$toolbar->custom('apply', acymailing_translation('ACY_SAVE', true), 'save', false);
		$toolbar->topfixed = false;
		$toolbar->setTitle(acymailing_translation('ACY_CUSTOMTEMPLATE'));
		$toolbar->display();
		?>
		<div id="iframedoc" style="clear:both;position:relative;"></div>
		<div class="onelineblockoptions">
			<table class="acymailing_table" width="100%">
				<tr>
					<td class="paramlist_key">
						<label for="subject">
							<?php echo acymailing_translation('TEMPLATE_NAME'); ?>
						</label>
					</td>
					<td class="paramlist_value">
						<?php echo $this->plugin; ?>.php
					</td>
				</tr>
			</table>
		</div>
		<fieldset class="adminform" style="width:95%;" id="textfieldset">
			<legend><?php echo acymailing_translation('ACY_TEMPLATE'); ?></legend>
			<textarea style="width:99%;height:250px;" rows="16" name="templatebody" id="templatebody"><?php echo $this->body; ?></textarea>
		</fieldset>

		<div class="clr"></div>

		<input type="hidden" name="plugin" value="<?php echo $this->plugin; ?>"/>
		<?php acymailing_formOptions(); ?>
	</form>
</div>
