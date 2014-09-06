<?php if( isset($widget_name)){
	?>
	<h3 class="widget-title"><span><?php echo $widget_name;?></span></h3>
	<?php
}?>
<div class="widget-html">
	<div class="widget-inner">
		<?php echo $html; ?>
	</div>
</div>