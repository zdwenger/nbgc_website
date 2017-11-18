<?php 

/*******************************************************************************************/
/*
/*		Designed by 'AS Designing'
/*		Web: http://www.asdesigning.com
/*		Web: http://www.astemplates.com
/*		License: ASDE Commercial
/*
/*******************************************************************************************/

include 'fonts.php';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// General Configuration Parameters

$tmpl_style				= $this->params->get('tmpl_style');

$body_font_family 		= $this->params->get('body_font_family');
$bodyfont_arr			= array('fontlink'=>false, 'fontfamily'=>false);
$bodyfont_arr			= fontChooser($body_font_family);
$body_font_family 		= $bodyfont_arr['fontfamily'];

$hfont_family 			= $this->params->get('hfont_family');
$hfont_arr				= array('fontlink'=>false, 'fontfamily'=>false);
$hfont_arr				= fontChooser($hfont_family);
$hfont_family 			= $hfont_arr['fontfamily'];

$body_font_size 		= 'font-size: ' . $this->params->get('body_font_size') . 'px;';

$body_font_color		= '';
if($this->params->get('body_font_color'))
	$body_font_color 	= 'color: #' . $this->params->get('body_font_color') . ';';

$link_font_color 		= '';
if($this->params->get('link_font_color'))
	$link_font_color 	= 'color: #' . $this->params->get('link_font_color') . ';';

$hlink_font_color 		= '';
if($this->params->get('hlink_font_color'))
	$hlink_font_color 		= 'color: #' . $this->params->get('hlink_font_color') . ';';

$h1_font_size			= '';
$h1_line_height			= '';
if($this->params->get('h1_font_size'))
{
	$h1_font_size 			= 'font-size: ' . $this->params->get('h1_font_size') . 'px;';
	$h1_line_height			= 'line-height: ' . $this->params->get('h1_font_size') . 'px;';
}

$h2_font_size			= '';
$h2_line_height			= '';
if($this->params->get('h2_font_size'))
{
	$h2_font_size 			= 'font-size: ' . $this->params->get('h2_font_size') . 'px;';
	$h2_line_height			= 'line-height: ' . $this->params->get('h2_font_size') . 'px;';
}

$h3_font_size			= '';
$h3_line_height			= '';
if($this->params->get('h3_font_size'))
{
	$h3_font_size 			= 'font-size: ' . $this->params->get('h3_font_size') . 'px;';
	$h3_line_height			= 'line-height: ' . $this->params->get('h3_font_size')+5 . 'px;';
}

$h4_font_size			= '';
$h4_line_height			= '';
if($this->params->get('h4_font_size'))
{
	$h4_font_size 			= 'font-size: ' . $this->params->get('h4_font_size') . 'px;';
	$h4_line_height			= 'line-height: ' . $this->params->get('h4_font_size')+5 . 'px;';
}

$h5_font_size			= '';
$h5_line_height			= '';
if($this->params->get('h5_font_size'))
{
	$h5_font_size 			= 'font-size: ' . $this->params->get('h5_font_size') . 'px;';
	$h5_line_height			= 'line-height: ' . $this->params->get('h5_font_size')+5 . 'px;';
}

$btn_font_color			= '';
if($this->params->get('btn_font_color'))
	$btn_font_color 	= 'color: #' . $this->params->get('btn_font_color') . ';';
$btn_hfont_color			= '';
if($this->params->get('btn_hfont_color'))
	$btn_hfont_color 	= 'color: #' . $this->params->get('btn_hfont_color') . ';';
	
$btn_gradient_topcolor		= $this->params->get('btn_gradient_topcolor');
$btn_gradient_bottomcolor	= $this->params->get('btn_gradient_bottomcolor');

$btn_bgcolor			= '';
if($btn_gradient_bottomcolor)
	$btn_bgcolor			= 'background-color: #' . $btn_gradient_bottomcolor . ' !important;';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Logo Configuration Parameters

$logo_type 			= $this->params->get('logo_type');

$logo_txt 			= '';
if($this->params->get('logo_txt'))
	$logo_txt 		= $this->params->get('logo_txt');
	
$logo_font_family 		= $this->params->get('logo_font_family');
$logo_font_arr			= array('fontlink'=>false, 'fontfamily'=>false);
$logo_font_arr			= fontChooser($logo_font_family);
$logo_font_family		= $logo_font_arr['fontfamily'];

$logo_font_size		= '';
if($this->params->get('logo_font_size'))
	$logo_font_size		= 'font-size: ' . $this->params->get('logo_font_size') . 'px;';

$logo_font_style	= '';
if($this->params->get('logo_font_style'))
	$logo_font_style		= 'font-style: ' . $this->params->get('logo_font_style') . ';';
	
$logo_font_weight	= '';
if($this->params->get('logo_font_weight'))
	$logo_font_weight		= 'font-weight: ' . $this->params->get('logo_font_weight') . ';';
	
$logo_font_color	= '';
if($this->params->get('logo_font_color'))
	$logo_font_color		= 'color: ' . $this->params->get('logo_font_color') . ';';

$slogan_font_family 		= $this->params->get('slogan_font_family');
$slogan_font_arr			= array('fontlink'=>false, 'fontfamily'=>false);
$slogan_font_arr			= fontChooser($slogan_font_family);
$slogan_font_family			= $slogan_font_arr['fontfamily'];

$slogan_font_size		= '';
if($this->params->get('slogan_font_size'))
	$slogan_font_size		= 'font-size: ' . $this->params->get('slogan_font_size') . 'px;';

$slogan_font_style	= '';
if($this->params->get('slogan_font_style'))
	$slogan_font_style		= 'font-style: ' . $this->params->get('slogan_font_style') . ';';
	
$slogan_font_weight	= '';
if($this->params->get('slogan_font_weight'))
	$slogan_font_weight		= 'font-weight: ' . $this->params->get('slogan_font_weight') . ';';
	
$slogan_font_color	= '';
if($this->params->get('slogan_font_color'))
	$slogan_font_color		= 'color: ' . $this->params->get('slogan_font_color') . ';';

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Logo Configuration Parameters

$sliderrow_topcolor	= $this->params->get('sliderrow_topcolor');
$sliderrow_bottomcolor = $this->params->get('sliderrow_bottomcolor');

$sliderrow_color	= '';
if($sliderrow_topcolor && $sliderrow_bottomcolor)
{
	$sliderrow_color = '
	background-color: '.$sliderrow_topcolor.';
	background-image: -moz-linear-gradient(top, #'.$sliderrow_topcolor.', #'.$sliderrow_bottomcolor.');
	background-image: -webkit-linear-gradient(top, #'.$sliderrow_topcolor.', #'.$sliderrow_bottomcolor.');
	background-image: -o-linear-gradient(top, #'.$sliderrow_topcolor.', #'.$sliderrow_bottomcolor.');
	background-image: linear-gradient(to bottom, #'.$sliderrow_topcolor.', #'.$sliderrow_bottomcolor.');';
}
    		
$sliderrow_bgimg		= '';
if($this->params->get('sliderrow_bgimg'))
	$sliderrow_bgimg		= 'background-image: url("' . $this->baseurl . '/' . $this->params->get('sliderrow_bgimg') . '") !important;';

	
?>

