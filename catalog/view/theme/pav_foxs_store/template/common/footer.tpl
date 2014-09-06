<?php 
	/******************************************************
	 * @package Pav Megamenu module for Opencart 1.5.x
	 * @version 1.1
	 * @author http://www.pavothemes.com
	 * @copyright	Copyright (C) Feb 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
	 * @license		GNU General Public License version 2
	*******************************************************/

	require_once(DIR_SYSTEM . 'pavothemes/loader.php');
	$helper = ThemeControlHelper::getInstance( $this->registry, $this->config->get('config_template') );
?>
</section>

<?php
/**
 * promotion modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$blockid = 'mass_bottom';
$blockcls = '';
$modules = $helper->getModulesByPosition( $blockid ); 
$ospans = array();

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


<footer id="footer">
	<?php
	/**
	 * promotion modules
	 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
	 */
	$blockid = 'footer_top';
	$blockcls = '';
	$modules = $helper->getModulesByPosition( $blockid ); 
	$ospans = array(1=>12,2=>12);
	$tmcols = 'col-sm-12 col-xs-12';
	$prefixclass = 'column';
	require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );

	?>

<?php
/**
 * Footer Bottom
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$blockid = 'footer_center';
$blockcls = '';
$modules = $helper->getModulesByPosition( $blockid ); 
$ospans = array();
$tmcols = 'col-sm-6 col-xs-12';
$prefixclass = 'column';
require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>

	<?php
	/**
	 * Footer Center Position
	 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
	 */
	$blockid = 'footer_bottom';
	$blockcls = '';
	$modules = $helper->getModulesByPosition( $blockid ); 
	$ospans = array();
	$tmcols = 'col-sm-6 col-xs-12';
	if( count($modules) ){
		require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
	} else { ?>
	<div class="footer-bottom ">
	
		<div class="container">
		<div class="inner">
			<div class="row">			
					
			<?php if ($informations) { ?>
			<div class="column col-xs-12 col-sm-6 col-lg-3 col-md-3">
				<div class="box info">
					<div class="box-heading"><span><?php echo $text_information; ?></span></div>
					<div class="box-content">
						<ul class="list text-fill">
						  <?php foreach ($informations as $information) { ?>
						  <li><a href="<?php echo $information['href']; ?>" data-hover="<?php echo $information['title']; ?>"><?php echo $information['title']; ?></a></li>
						  <?php } ?>
						</ul>
					</div>					
				</div>
			</div>
			<?php } ?>				
		  
			<div class="column col-xs-12 col-sm-6 col-lg-3 col-md-3">
				<div class="box extra">
					<div class="box-heading"><span><?php echo $text_extra; ?></span></div>
					<div class="box-content">
						<ul class="list text-fill">							
							<li><a href="<?php echo $manufacturer; ?>" data-hover="<?php echo $text_manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
							<li><a href="<?php echo $voucher; ?>" data-hover="<?php echo $text_voucher; ?>"><?php echo $text_voucher; ?></a></li>
							<li><a href="<?php echo $affiliate; ?>" data-hover="<?php echo $text_affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
							<li><a href="<?php echo $special; ?>" data-hover="<?php echo $text_special; ?>"><?php echo $text_special; ?></a></li>
						</ul>
					</div>			
				</div>
			</div>

			<div class="column col-xs-12 col-sm-6 col-lg-3 col-md-3">
				<div class="box">
					<div class="box-heading"><span><?php echo $text_account; ?></span></div>
					<div class="box-content">
						<ul class="list text-fill">						  
							<li><a href="<?php echo $account; ?>" data-hover="<?php echo $text_account; ?>"><?php echo $text_account; ?></a></li>
							<li><a href="<?php echo $order; ?>" data-hover="<?php echo $text_order; ?>"><?php echo $text_order; ?></a></li>
							<li><a href="<?php echo $wishlist; ?>" data-hover="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
							<li><a href="<?php echo $newsletter; ?>" data-hover="<?php echo $text_newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="column col-xs-12 col-sm-6 col-lg-3 col-md-3">
				<div class="box customer-service">
					<div class="box-heading"><span><?php echo $text_service; ?></span></div>
					<div class="box-content">
						<ul class="list text-fill">						  
							<li><a href="<?php echo $contact; ?>" data-hover="<?php echo $text_contact; ?>"><?php echo $text_contact; ?></a></li>
							<li><a href="<?php echo $return; ?>" data-hover="<?php echo $text_return; ?>"><?php echo $text_return; ?></a></li>
							<li><a href="<?php echo $sitemap; ?>" data-hover="<?php echo $text_sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
						</ul>
					</div>	
				</div>
			</div>
	</div>
	</div>
	</div>
	</div>
<?php  } ?>	
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
-->

<div id="powered">
	<div class="container">
		<div class="inner">
			<div class="row">
				<div class="col-xs-12 ">
					<div class="copyright">
					<?php if( $helper->getConfig('enable_custom_copyright', 0) ) { ?>
						<?php echo $helper->getConfig('copyright'); ?>
					<?php } else { ?>
						<?php echo $powered; ?>. 
					<?php } ?>
					Designed by <a href="http://www.pavothemes.com" title="pavothemes - opencart themes clubs"  target="_blank">PavoThemes</a>
					</div>	
					<?php if( $content=$helper->getLangConfig('widget_paypal') ) {?>
						<div class="paypal">
							<?php echo $content; ?>
					</div>
					 <?php } ?>
				</div>
			</div>	
		</div>
	</div>
</div>

<div id="top"><a class="scrollup" href="#"><i class="fa fa-angle-up"></i>Top</a></div>
</footer>

<?php if( $helper->getConfig('enable_paneltool',0) ){  ?>
	<?php  echo $helper->renderAddon( 'panel' );?>
<?php } ?>
</section>
</body></html>