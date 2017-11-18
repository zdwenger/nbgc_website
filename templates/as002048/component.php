<?php

/*******************************************************************************************/
/*
/*		Designed by 'AS Designing'
/*		Web: http://www.asdesigning.com
/*		Web: http://www.astemplates.com
/*		License: GNU/GPL
/*
/*******************************************************************************************/

defined('_JEXEC') or die;
include ('includes/includes.php');
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
  <head>
	<?php
    $doc->addStyleSheet('templates/'.$this->template.'/css/bootstrap.css'); 
    $doc->addStyleSheet('templates/'.$this->template.'/css/tmpl.default.css');
    $doc->addStyleSheet('templates/'.$this->template.'/css/tmpl.modules.css');	
    $doc->addStyleSheet('templates/'.$this->template.'/css/media.1200.css');
    $doc->addStyleSheet('templates/'.$this->template.'/css/media.980.css');
    $doc->addStyleSheet('templates/'.$this->template.'/css/media.767.css');
    $doc->addStyleSheet('templates/'.$this->template.'/css/media.480.css');
	
	include 'params.php';
	$doc->addStyleSheet('templates/'.$this->template.'/css/'.$tmpl_style);	
	
	// If Right-to-Left
	if ($this->direction == 'rtl')
	{
		$doc->addStyleSheet('media/jui/css/bootstrap-rtl.css');
		$doc->addStyleSheet('templates/'.$this->template.'/css/rtl.css');
	}			
	include 'styles.php';
			
    ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>            
    <jdoc:include type="head" />
  </head>

  <body class="contentpane modal">
    <jdoc:include type="message" />
    <jdoc:include type="component" />
  </body>
</html>
