<?php 
/******************************************************
 * @package Pav Opencart Theme Framework for Opencart 1.5.x
 * @version 1.1
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Augus 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/
$this->language->load('module/themecontrol');
$themeName =  $this->config->get('config_template');
require_once(DIR_SYSTEM . 'pavothemes/loader.php');
$helper = ThemeControlHelper::getInstance( $this->registry, $themeName );
$helper->setDirection( $direction );
$helper->triggerUserParams( array('headerlayout','productlayout') );
/* Add scripts files */
$helper->addScript( 'catalog/view/javascript/jquery/jquery-1.7.1.min.js' );
$helper->addScript( 'catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js' );
$helper->addScript( 'catalog/view/javascript/jquery/ui/external/jquery.cookie.js' );
$helper->addScript( 'catalog/view/javascript/common.js' );
$helper->addScript( 'catalog/view/theme/'.$themeName.'/javascript/common.js' );
$helper->addScript( 'catalog/view/javascript/jquery/bootstrap/bootstrap.min.js' );
$helper->addScript('catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js');
$helper->addScriptList( $scripts );
$helper->addCss( 'catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css' );	
$helper->addCss( 'catalog/view/javascript/jquery/colorbox/colorbox.css' );	

$ctheme=$helper->getConfig('customize_theme');
if( file_exists(DIR_TEMPLATE.$themeName.'/stylesheet/customize/'.$ctheme.'.css') ) {  
	$helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/customize/'.$ctheme.'.css'  );
}
if(  $this->config->get('pavlandingpage')  )  {
	$helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/pavlandingpage.css'  );
	$helper->addScript( 'catalog/view/theme/'.$themeName.'/javascript/ytb.video.js' );
}
$helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/animation.css' );	
$helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/font-awesome.min.css' );	

$helper->addCssList( $styles );
 
$logoType = $helper->getConfig('logo_type','logo-theme');
$headerlayout = $helper->getConfig('header_layout');

if( $helper->getConfig('enable_paneltool') ){
	if( $helper->getParam('headerlayout') ){
		$headerlayout = $helper->getParam('headerlayout');
	}
}


?>

<!DOCTYPE html>
<html dir="<?php echo $helper->getDirection(); ?>" class="<?php echo $helper->getDirection(); ?>" lang="<?php echo $lang; ?>">
<head>
<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
<!-- Mobile viewport optimized: h5bp.com/viewport -->
<meta name="viewport" content="width=device-width">
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
 
<?php if( isset($links) && $links )  { foreach ($links as $link) {  ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } } ?>
<?php foreach ($helper->getCssLinks() as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach( $helper->getScriptFiles() as $script )  { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.jcarousel.min.js"></script>

<?php if( $cjs=$helper->getConfig('custom_javascript') ){ ?>
	<script type="text/javascript"><!--
		$(document).ready(function() {
			<?php echo html_entity_decode(trim($cjs) ); ?>
		});
//--></script>
<?php }	?>

<?php 
	if( $helper->getConfig('enable_customfont',0) ){
	$themeConfig = $this->config->get( 'themecontrol' );	
	$css=array();
	$link = array();
	for( $i=1; $i<=3; $i++ ){
		if( trim($themeConfig['google_url'.$i]) && $themeConfig['type_fonts'.$i] == 'google' ){
			$link[] = '<link rel="stylesheet" type="text/css" href="'.trim($themeConfig['google_url'.$i]) .'"/>';
			$themeConfig['normal_fonts'.$i] = $themeConfig['google_family'.$i];
		}
		if( trim($themeConfig['body_selector'.$i]) && trim($themeConfig['normal_fonts'.$i]) ){
			$fs = (int)$themeConfig['fontsize'.$i]>0?"font-size:".$themeConfig['fontsize'.$i].'px;':'';
			$ff = $themeConfig['normal_fonts'.$i] !="inherit"? "font-family:".str_replace("'",'"',htmlspecialchars_decode(trim($themeConfig['normal_fonts'.$i]))):"";
			$css[]= trim($themeConfig['body_selector'.$i])." { ".$fs." " . $ff ."}\r\n"	;
		}
	}
	echo implode( "\r\n",$link )."\r\n";
	echo '<style type="text/css"> '.implode( " ",$css ).' </style>';
}
?>

<!--[if lt IE 9]><![endif]-->
<?php if( $helper->getConfig('load_live_html5') ) { ?>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<?php } else { ?>
<script src="catalog/view/javascript/html5.js"></script>
<?php } ?>
<script src="catalog/view/javascript/respond.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $themeName;?>/stylesheet/ie8.css" />


<?php if( $helper->getConfig('enable_paneltool') ){  ?>
<link  href="catalog/view/theme/<?php echo $themeName;?>/stylesheet/paneltool.css" rel="stylesheet"/>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorpicker/js/colorpicker.js"></script>
<link  href="catalog/view/javascript/jquery/colorpicker/css/colorpicker.css" rel="stylesheet" />
<?php } ?>

<?php if ( isset($stores) && $stores ) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body id="offcanvas-container" class="keep-header offcanvas-container layout-<?php echo $helper->getParam( 'layout' ); ?>  <?php echo $helper->getPageClass();?>">
<!-- Multi header -->	
		<?php 
			if( $helper->getSkin() && file_exists($helper->getLayoutPath('common/skin/'.$helper->getSkin().'/header.tpl')) ) {
				require( $helper->getLayoutPath('common/skin/'.$helper->getSkin().'/header.tpl') );
			}else {
				require( ThemeControlHelper::getLayoutPath( 'common/skin/header.tpl' ) );  
			}	
		?> 

<!--/**
* sys-notification
*/-->

<div id="sys-notification">
	<div class="container">
		<?php if ($error) { ?>    
		<div class="warning"><?php echo $error ?><img src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/image/close.png" alt="" class="close" /></div>
		<?php } ?>
		<div id="notification"></div>
	</div>
</div>

<?php
/**
 * slideshow modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$blockid = 'slideshow';
$blockcls = ' hidden-xs hidden-sm ';
$modules = $helper->getModulesByPosition( $blockid ); 
$ospans = array();// array(1=>3, 2=>9); 
?>

<?php
if( count($modules) ){
$cols = isset($config['block_'.$blockid])&& $config['block_'.$blockid]?(int)$config['block_'.$blockid]:count($modules);	
$class = $helper->calculateSpans( $ospans, $cols );
?>
<div class="<?php echo str_replace('_','-',$blockid); ?> <?php $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
		<?php $j=1;foreach ($modules as $i =>  $module) {  ?>
		<?php if(  $i++%$cols == 0 || count($modules)==1  ){  $j=1;?>
		<div class="row"><?php } ?>	
		<div class="<?php echo $class[$j];?>"><?php echo $module; ?></div>
		<?php if( $i%$cols == 0 || $i==count($modules) ){ ?></div><?php } ?>	
		<?php  $j++;  } ?>	

</div>
<?php } ?>


 
<?php
/**
 * promotion modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$blockid = 'promotion';
$blockcls = '';
$modules = $helper->getModulesByPosition( $blockid ); 
$ospans = array();
require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>

<?php if( $helper->getConfig('enable_offsidebars') ) { ?>
<section id="columns" class="offcanvas-siderbars">
<div class="row visible-xs"><div class="container"> 
	<div class="offcanvas-sidebars-buttons">
		<button type="button" data-for="column-left" class="pull-left btn btn-danger btn-default"><i class="fa fa-sort-amount-asc"></i> <?php echo $this->language->get('text_sidebar_left'); ?></button>
		
		<button type="button" data-for="column-right" class="pull-right btn btn-danger btn-default"><?php echo $this->language->get('text_sidebar_right'); ?> <i class="fa fa-sort-amount-desc"></i></button>
	</div>
</div></div>
<?php }else { ?>
<section id="columns">
<?php } ?>	

<?php
/**
 * Showcase modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$blockid = 'showcase';
$blockcls = '';
$modules = $helper->getModulesByPosition( $blockid ); 
$ospans = array();
require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>