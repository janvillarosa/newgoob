 <div class="product-block" itemtype="http://schema.org/Product" itemscope>	
	<?php if ($product['thumb']) {    ?>
		<div class="image swap">
			<?php if( $product['special'] ) {   ?>
			<span class="product-label product-label-special"><span><?php echo $this->language->get( 'text_sale' ); ?></span></span>
			<?php } ?>
			<a class="img" itemprop="url" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
				<img class="img-responsive" itemprop="image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
			</a>
			<!-- Show Swap -->
			<?php
	  	 
	  			$product_images = $this->model_catalog_product->getProductImages( $product['product_id'] );  
				if(isset($product_images) && !empty($product_images)) {
					$thumb2 = $this->model_tool_image->resize($product_images[0]['image'],  $this->config->get('config_image_product_width'),  $this->config->get('config_image_product_height') );
				?>
				<a class="hover-image" href="<?php echo $product['href']; ?>"><img class="img-responsive" src="<?php echo $thumb2; ?>" alt="<?php echo $product['name']; ?>"></a>
			<?php }  ?>
			<!-- Show Swap -->
			<?php //#2 Start fix quickview in fw?>
			<?php if ( isset($quickview) && $quickview ) { ?>
				<a class="pav-colorbox btn btn-outline-white" href="<?php echo $this->url->link("themecontrol/product",'product_id='.$product['product_id'] );?>" title="<?php echo $this->language->get('quick_view'); ?>"><i class="fa fa-eye"></i>
					<span><?php echo $this->language->get('quick_view'); ?></span>
				</a>
			<?php } ?>
			<?php //#2 End fix quickview in fw?>					
			<?php if( isset($categoryPzoom) && $categoryPzoom ) { $zimage = str_replace( "cache/","", preg_replace("#-\d+x\d+#", "",  $product['thumb'] ));  ?>
				<a href="<?php echo $zimage;?>" class="info-view colorbox product-zoom btn btn-outline-white cboxElement" title="<?php echo $product['name']; ?>"><i class="fa fa-search-plus"></i></a>
			<?php } ?>
			
		</div>
	<?php } ?>
					 
	<div class="product-meta">		  
		<div class="left">
			
	        <h3 class="name" itemprop="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
	        <div class="clearfix"></div>
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
					<span class="price-new"><?php echo $product['special']; ?></span>
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
				<div class="cart col-lg-8 col-md-8 col-sm-8 col-xs-8">						
					<button onclick="addToCart('<?php echo $product['product_id']; ?>');" class="btn btn-shopping-cart btn-outline-warning">
						<i class="fa fa-shopping-cart"></i>
						<span><?php echo $this->language->get("button_cart"); ?></span>
					</button>
				</div>
				<?php } ?>
				<div class="compare col-lg-2 col-md-2 col-sm-2 col-xs-2">			
					<a class="btn btn-outline-inverse"  onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $this->language->get("button_compare"); ?>">
						<i class="fa fa-retweet"></i>
						<span><?php echo $this->language->get("button_compare"); ?></span>
					</a>	
				</div>	
				<div class="wishlist col-lg-2 col-md-2 col-sm-2 col-xs-2">
					<a class="btn btn-outline-inverse" onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $this->language->get("button_wishlist"); ?>">
						<i class="fa fa-heart"></i>
						<span><?php echo $this->language->get("button_wishlist"); ?></span>
					</a>	
				</div>
			</div>		 
		</div>	
	</div>			 
</div>