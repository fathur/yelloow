<?php 
/**
 * 
 */
get_header(); 

$voorwie = new WP_Query(array(
	'post_type'					=> get_post_type(),
	'posts_per_archive_page'	=> 3
));
?>

<div class="container-fluid yellow voorwie-submenu">
	<div class="container">
		<div class="row">

			<?php 
			/**
			 * Return logo per item and clickable
			 */			
			if ($voorwie->have_posts()) :
				while($voorwie->have_posts()):
					$voorwie->the_post();
			?>

			<div class="col-xs-4 col-sm-4 text-center" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<a href="#<?php echo $post->post_name; ?>">
					
					<?php the_post_thumbnail('full', array(
						'class'	=> 'img-responsive center-block'
					)); ?>

					<h4><?php the_title(); ?></h4>
				</a>
			</div>

			<?php
				endwhile;
				wp_reset_postdata();
			endif;
			?>			
			
		</div>	
	</div>
</div>

<div class="container-fluid white">
	<div class="container content">

		<?php 
		if ($voorwie->have_posts()) :
			while($voorwie->have_posts()):
				$voorwie->the_post();
		?>

		<div class="row" id="<?php echo $post->post_name; ?>" <?php post_class(); ?>>
			<div class="col-sm-12">
				<div class="row single-column">
					<div class="col-sm-12 title">
						
						<?php 

						$yimg = get_post_meta( get_the_ID(), 'wpcf-yellow-image-voor-wie', true);

						if ($yimg != '' || $yimg != null) { ?>

							<img src="<?php echo $yimg; ?>" class="img-responsive center-block">
						<?php
							
						} else {
							the_post_thumbnail('full', array(
								'class'	=> 'img-responsive center-block'
							)); 
						}

						?>

						<h2><?php the_title(); ?></h2>
					</div>
				</div>

				<div class="row double-columns">
					<div class="col-sm-12 text-justify">
						<?php the_content(); ?>
					</div>
				</div>

				<?php 
				/**
				 * Mencari text dan url button.
				 * Jika text button tidak ada, maka
				 * button tidak ditampilkan.
				 * Jika uri button tidak ada, maka
				 * uri diganti dengan #
				 */
				$btntxt = get_post_meta( get_the_ID(), 'wpcf-button-text-voor-wie', true);
				$btnuri = get_post_meta( get_the_ID(), 'wpcf-button-url-voor-wie', true);

				if ($btnuri == '' || $btnuri == null) {
					$btnuri = '#';
				} 

				if ($btntxt != '' || $btntxt != null) :
				?>

				<div class="row single-column">
					<div class="col-sm-12 text-center">
						<a class="btn btn-turquoise" href="<?php echo $btnuri; ?>">
							<?php echo get_post_meta( get_the_ID(), 'wpcf-button-text-voor-wie', true); ?>
						</a>
					</div>
				</div>
				
				<?php 
				endif;
				?>
				
			</div>
		</div>

		<?php
			endwhile;
			wp_reset_postdata();
		endif;
		?>

	</div>
</div>

<?php get_footer(); ?>