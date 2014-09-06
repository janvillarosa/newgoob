<?php if ($products) { ?>	
<?php 	
$cols = $colsRelated;
$span = 12/$cols;

?>
<div class="related-wapper">
	<div class="box product-related clearfix">	
		<div class="box-heading"><span><?php echo $tab_related; ?> (<?php echo count($products); ?>)</span></div>
		<div id="related" class="products-rows slide" data-interval="0">
			<?php if( count($products) > $cols ) { ?> 
		    <div class="carousel-controls">
		      <a class="carousel-control left" href="#related" data-slide="prev"><i class="fa fa-angle-left"></i></a>
		      <a class="carousel-control right " href="#related" data-slide="next"><i class="fa fa-angle-right"></i></a>
		    </div>
		    <?php } ?>
		<div class="box-content products-block carousel-inner">
			<?php  $pages = array_chunk( $products, $cols);  ?>	
			  <?php foreach ($pages as  $k => $tproducts ) {   ?>
					<div class="item <?php if($k==0) {?>active<?php } ?>">
						<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
							<?php if( $i%$cols == 1 ) { ?>
							  <div class="products-row">
							<?php } ?>
							<div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-3 col-xs-12 product-col">
								<?php require( ThemeControlHelper::getLayoutPath( 'common/product/default.tpl' ) );  ?>     
							</div>
						  <?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
							 </div>
							<?php } ?>
						<?php } //endforeach; ?>
					</div>
			  <?php } ?>		  
		</div>
	</div>
	</div>	
	<?php } ?>
</div>
</div>