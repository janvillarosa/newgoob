<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" ); ?>
<?php echo $header; ?>
<?php require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/breadcrumb.tpl" );  ?>
<div class="container">
<div class="row">

	<?php if( $SPAN[0] ): ?>
	<aside class="col-lg-<?php echo $SPAN[0];?> col-md-<?php echo $SPAN[0];?> col-sm-12 col-xs-12">
		<?php echo $column_left; ?>
	</aside>
	<?php endif; ?>

	<section class="col-lg-<?php echo $SPAN[1];?> col-md-<?php echo $SPAN[1];?> col-sm-12 col-xs-12">		
		<div id="content">

			<?php echo $content_top; ?>
			<div class="page-heading white">
				<h1><?php echo $heading_title; ?></h1>
			</div>
				
			<div class="wrapper white underline">
				<?php echo $text_message; ?>
			</div>
			<div class="buttons">
				<div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-outline-black"><?php echo $button_continue; ?></a></div>
			</div>
			<?php echo $content_bottom; ?>
		</div>
	</section> 

	<?php if( $SPAN[2] ): ?>
		<aside class="col-lg-<?php echo $SPAN[2];?> col-md-<?php echo $SPAN[2];?> col-sm-12 col-xs-12">	
			<?php echo $column_right; ?>
		</aside>
	<?php endif; ?>
	
</div></div>

<?php echo $footer; ?>
