<?php

defined('_JEXEC') or die;

require_once JPATH_SITE.'/components/com_content/helpers/route.php';

JModelLegacy::addIncludePath(JPATH_SITE.'/components/com_content/models', 'ContentModel');

/**
 * Helper for mod_articles_single
 * */
abstract class modArticlesSingleHelper
{
	public static function getItem(&$params)
	{
		$app = JFactory::getApplication();

		// Get an instance of the generic articles model
		$model = JModelLegacy::getInstance('Article', 'ContentModel', array('ignore_request' => true));

		// Set application parameters in model
		$appParams = JFactory::getApplication()->getParams();
		$model->setState('params', $appParams);

		$article_id = $params->get('article_id');
		$item = $model->getItem($article_id);

		// We know that user has the privilege to view the article
		$item->link = JRoute::_(ContentHelperRoute::getArticleRoute($item->id, $item->catid));
		$item->linkText = JText::_('TPL_COM_CONTENT_READ_MORE');

		$item->introtext = JHtml::_('content.prepare', $item->introtext, '', 'mod_articles_single.content');


		$results = $app->triggerEvent('onContentAfterDisplay', array('com_content.article', &$item, &$params, 1));
		$item->afterDisplayTitle = trim(implode("\n", $results));

		$results = $app->triggerEvent('onContentBeforeDisplay', array('com_content.article', &$item, &$params, 1));
		$item->beforeDisplayContent = trim(implode("\n", $results));

		return $item;
	}
}
