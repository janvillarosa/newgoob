<?php 
	$span = 12/$cols; 
	$active = 'latest';
	$id = rand(1,9);
	
	$themeConfig 			= (array)$this->config->get('themecontrol');
	$categoryConfig 		= array( 		
		'category_pzoom' 	=> 1,
		'show_swap_image' 	=> 0,
		'quickview' 		=> 0,
	); 
	$categoryConfig 		= array_merge($categoryConfig, $themeConfig );
	$categoryPzoom 	    	= $categoryConfig['category_pzoom'];
	$quickview 				= $categoryConfig['quickview'];
	$swapimg 				= ($categoryConfig['show_swap_image'])?'swap':'';	
?>
<div class="<?php echo $prefix;?> box productdeals">
	<div class="box-heading"><span><?php echo $heading_title; ?></span></div>
	<div class="box-content" >
 		<div class="box-products slide" id="pavdeals<?php echo $id;?>">
			<?php if( trim($message) ) { ?>
			<div class="box-description"><?php echo $message;?></div>
			<?php } ?>
			<?php if( count($products) > $itemsperpage ) { ?>
			<div class="carousel-controls">
				<a class="carousel-control left fa fa-angle-left" href="#pavdeals<?php echo $id;?>"   data-slide="prev"></a>
				<a class="carousel-control right fa fa-angle-right" href="#pavdeals<?php echo $id;?>"  data-slide="next"></a>
			</div>
			<?php } ?>
			<div class="carousel-inner ">		
			 <?php
				$pages = array_chunk( $products, $itemsperpage);
			 ?>

			 <?php foreach ($pages as  $k => $tproducts ) {   ?>
					<div class="item <?php if($k==0) {?>active<?php } ?> products-block">
						<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
							<?php if( $i%$cols == 1 || $cols == 1) { ?>
							  <div class="row products-row box-product">
							<?php } ?>
								  <div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-12 col-xs-12  product-col"><div class="product-block">
										<?php if ($product['thumb']) { ?>
										<div class="image">
											<?php if( $product['special'] ) {   ?>
												<span class="product-label product-label-special"><span><?php echo $this->language->get( 'text_sale' ); ?></span></span>
											<?php } ?>
											<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
										</div>
										<?php } ?>
										<div itemscope class="product-meta">
											<div class="left">
												<h3 class="name" itemprop="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>									       
									        <?php if( isset($product['description']) ){ ?> 
											<p class="description" itemprop="description"><?php echo utf8_substr( strip_tags($product['description']),0,220);?>...</p>
											<?php } ?>						
											<?php if ($product['price']) { ?>
											<div class="price clearfix" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
												<?php if (!$product['special']) {  ?>
													<span class="special-price"><?php echo $product['price']; ?></span>
													<?php if( preg_match( '#(\d+).?(\d+)#',  $product['price'], $p ) ) { ?> 
													<meta content="<?php echo $p[0]; ?>" itemprop="price">
													<?php } ?>
												<?php } else { ?>
													<span class="price-new"><?php echo $product['special']; ?></span><br/>
													<span class="price-old"><?php echo $product['price']; ?></span> 
													<?php if( preg_match( '#(\d+).?(\d+)#',  $product['special'], $p ) ) { ?> 
													<meta content="<?php echo $p[0]; ?>" itemprop="price">
													<?php } ?>

												<?php } ?>
												<?php if ( isset($product['tax']) && $product['tax']) { ?>	        
													<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
												<?php } ?>

												<meta content="<?php echo $this->currency->getCode(); ?>" itemprop="priceCurrency">
											</div>
											<?php } ?>
											<?php if ( isset($product['rating']) && $product['rating'] ) { ?>
												    <div class="rating">
												    <img src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['rating']; ?>"></div>
												    <?php } else { ?>
											        <div class="norating"><img alt="0" src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/image/stars-0.png"></div>
											<?php } ?>										
											</div>
											<div class="right">
												<div class="action">											
													<?php if( !isset($listingConfig['catalog_mode']) || !$listingConfig['catalog_mode'] ) { ?>
													<div class="cart col-lg-8 col-md-8 col-sm-8 col-xs-8 ">						
														<button onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-outline-warning btn-shopping-cart">
															<i class="fa fa-shopping-cart"></i>
															<span><?php echo $this->language->get("button_cart"); ?></span>
														</button>
													</div>
													<?php } ?>
													<div class="compare col-lg-2 col-sm-2 col-xs-2 ">			
														<a class="btn btn-outline-inverse"  onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $this->language->get("button_compare"); ?>">
															<i class="fa fa-retweet"></i>
															<span><?php echo $this->language->get("button_compare"); ?></span>
														</a>	
													</div>	
													<div class="wishlist col-lg-2 col-md-2 col-sm-2 col-xs-2 ">
														<a class="btn btn-outline-inverse" onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $this->language->get("button_wishlist"); ?>">
															<i class="fa fa-heart"></i>
															<span><?php echo $this->language->get("button_wishlist"); ?></span>
														</a>	
													</div>
												</div>												
											</div>											
										<div class="deal_detail hidden">
											<ul>
												<li>
													<span><?php echo $this->language->get("text_discount");?></span>
													<span class="deal_detail_num"><?php echo $product['deal_discount'];?>%</span>
												</li>
												<li>
													<span><?php echo $this->language->get("text_you_save");?></span>
													<span class="deal_detail_num"><span class="price"><?php echo $product["save_price"]; ?></span></span>
												</li>
												<li>
													<span><?php echo $this->language->get("text_bought");?></span>
													<span class="deal_detail_num"><?php echo $product['bought'];?></span>
												</li>
											</ul>
										</div>
										<div class="deal-qty-box">
											<?php echo sprintf($this->language->get("text_quantity_deal"), $product["quantity"]);?>
										</div>
										<div class="item-detail hidden">
											<div class="timer-explain">(<?php echo date($this->language->get("date_format_short"), strtotime($product['date_end_string'])); ?>)</div>	
									  	  </div>
										<div id="item<?php echo $module; ?>countdown_<?php echo $product['product_id']; ?>" class="item-countdown"></div>
											<script type="text/javascript">
											jQuery(document).ready(function($){
													$("#item<?php echo $module; ?>countdown_<?php echo $product['product_id']; ?>").lofCountDown({
														formatStyle:2,
														TargetDate:"<?php echo date('m/d/Y G:i:s', strtotime($product['date_end_string'])); ?>",
														DisplayFormat:"<ul><li>%%D%% <div><?php echo $this->language->get("text_days");?></div></li><li> %%H%% <div><?php echo $this->language->get("text_hours");?></div></li><li> %%M%% <div><?php echo $this->language->get("text_minutes");?></div></li><li> %%S%% <div><?php echo $this->language->get("text_seconds");?></div></li></ul>",
														FinishMessage: "<?php echo $this->language->get('text_finish');?>"
													});
												});
											</script>
									</div>	

								  </div>
								</div>
						  
						  <?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
							 </div>
							<?php } ?>
						<?php } //endforeach; ?>
					</div>
			  <?php } ?>
			</div>  
		</div>
 </div> </div>


<script type="text/javascript">
$('#pavdeals<?php echo $id;?>').carousel({interval:<?php echo ( $auto_play_mode?$interval:'false') ;?>,auto:<?php echo $auto_play;?>,pause:'hover'});
</script>