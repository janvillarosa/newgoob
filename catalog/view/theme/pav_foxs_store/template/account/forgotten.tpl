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
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>

	<div id="content">
		<?php echo $content_top; ?> 
		<div class="page-heading white">
			<h1><?php echo $heading_title; ?></h1>
		</div>
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" role="form">
			<p><?php echo $text_email; ?></p>
			<h2><?php echo $text_your_email; ?></h2>
			<div class="content table-responsive wrapper no-margin">
				<table class="form">
					<tr>
						<td><?php echo $entry_email; ?></td>
						<td><input type="text" name="email" value="" class="form-control" /></td>
					</tr>
				</table>
			</div>
			<div class="buttons">
				<div class="left"><a href="<?php echo $back; ?>" class="button btn btn-outline-black"><?php echo $button_back; ?></a></div>
				<div class="right">
					<input type="submit" value="<?php echo $button_continue; ?>" class="button btn btn-outline-black" />
				</div>
			</div>
		</form>		
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