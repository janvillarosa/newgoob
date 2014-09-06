<div class="box latest_blog nopadding">
	<div class="box-heading hidden">
		<span><?php echo $heading_title; ?></span>
	</div>
	<div class="box-content" >
		<?php if( !empty($blogs) ) { ?>
		<div class="pavblog-latest">



			<?php foreach( $blogs as $key => $blog ) { $key = $key + 1;?>
			<div class="col-lg-<?php echo floor(12/$cols);?> col-md-<?php echo floor(12/$cols);?> col-sm-4 col-xs-12 product-col">
				
				<div class="blog-item">	
						<?php if( $key%2!=0 && $blog['thumb']  )  { ?>
							<div class="image">
								<a href="<?php echo $blog['link'];?>" class="blog-article">
								<img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" class="img-responsive" alt="">
								</a>								
							</div>
						<?php } ?>		
						<div class="blog-body">
								<h4 class="blog-title">
									<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a>
								</h4>
								<div class="created">
									<span><?php echo $blog['author'];?></span> - <span class="day"><?php echo date("d",strtotime($blog['created']));?></span>
									<span class="month"><?php echo date("M",strtotime($blog['created']));?></span> 
									<span class="year"><?php echo date("Y",strtotime($blog['created']));?></span> 
								</div>
								<div class="description">
									<?php $blog['description'] = strip_tags($blog['description']); ?>
									<?php echo utf8_substr( $blog['description'],0, 120);?>...
								</div>
								<div class="readmore">
									<a href="<?php echo $blog['link'];?>"><?php echo $this->language->get('text_readmore');?></a>						
								</div>
								

						</div>
						<?php if( $key%2==0 && $blog['thumb']  )  { ?>
							<div class="image">
								<a href="<?php echo $blog['link'];?>" class="blog-article">
								<img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" class="img-responsive" alt="">
								</a>								
							</div>
						<?php } ?>	
					</div>						
	

			</div>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
</div>
