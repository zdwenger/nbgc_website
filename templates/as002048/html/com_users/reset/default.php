<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
?>
<div class="page-reset page-reset__<?php echo $this->pageclass_sfx?>">
	<?php if ($this->params->get('show_page_heading')) : ?>
	<div class="page_header">
		<h1>
			<?php echo $this->escape($this->params->get('page_heading')); ?>
		</h1>
	</div>
	<?php endif; ?>

	<form id="user-registration" action="<?php echo JRoute::_('index.php?option=com_users&task=reset.request'); ?>" method="post" class="form-validate">

		<?php foreach ($this->form->getFieldsets() as $fieldset): ?>
		<p><?php echo JText::_($fieldset->label); ?></p>
		<fieldset>
			<?php foreach ($this->form->getFieldset($fieldset->name) as $name => $field): ?>
						<?php echo $field->label; ?>
						<?php echo $field->input; ?>
			<?php endforeach; ?>
			<button type="submit" class="btn btn-primary validate"><?php echo JText::_('JSUBMIT'); ?></button>
		</fieldset>
		<?php endforeach; ?>
			<?php echo JHtml::_('form.token'); ?>
	</form>
</div>
