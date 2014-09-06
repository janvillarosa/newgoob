<?php if( isset($widget_name)){
?>
<h3 class="widget-title"><span><?php echo $widget_name;?></span></h3>
<?php
}?>
<div class="widget-product-list">
	<div class="widget-inner clearfix">
		<?php foreach ($products as $product) { ?>
		 	<?php require( DIR_TEMPLATE.$this->config->get('config_template').'/template/common/product/default.tpl' ); ?>
		<?php } ?>
	</div>
</div>