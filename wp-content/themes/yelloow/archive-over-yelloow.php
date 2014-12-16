<?php get_header(); ?>

<div class="jumbotron yellow img-full-width">

	<?php 
	$over = new WP_Query(array(
		'post_type'	=> get_post_type(),
	
		'tax_query'	=> array(
			array(
				'taxonomy'	=> 'over-yelloow-tax',
				'field'		=> 'slug',
				'terms'		=> 'header-image'
			)
		)
	));

	if ($over->have_posts()) :
		while ( $over->have_posts() ) :
			$over->the_post();
	?>

	<div class="image">
		<?php the_post_thumbnail('full', array(
			'class'	=> 'img-responsive'
		)); ?>
	</div>

	<div class="container">
		<div class="row text-center text">
			<div class="col-sm-12">
				<?php the_content(); ?>
			</div>
		</div>
	</div>

	<?php
		endwhile;
		wp_reset_postdata();
	endif;
	?>
	
</div>

<div class="container-fluid">
	<div class="container content">
		
		<?php 
		/**
		 * 
		 */
		
		$over = new WP_Query(array(
			'post_type'	=> get_post_type(),
			'orderby'	=> 'menu_order',
			'order'		=> 'ASC',
			'tax_query'	=> array(
				array(
					'taxonomy'	=> 'over-yelloow-tax',
					'field'		=> 'slug',
					'terms'		=> 'content'
				)
			)
		));

		if ($over->have_posts()) :
			while ( $over->have_posts() ) :
				$over->the_post();
		?>

		<div class="row">
			<div class="col-sm-12">

				<div class="row single-column text-center">
					<div class="col-sm-12 title">
						<h2 class="title"><?php the_title(); ?></h2>
					</div>
				</div>

				<div class="row double-columns">
					<div class="col-sm-12 text-justify">
						<?php the_content(); ?>
					</div>
				</div>
			</div>
		</div>

		<?php
			endwhile;
			wp_reset_postdata();
		endif;

		
		/**
		 * 
		 */
		$over = new WP_Query(array(
			'post_type'	=> get_post_type(),
			'tax_query'	=> array(
				array(
					'taxonomy'	=> 'over-yelloow-tax',
					'field'		=> 'slug',
					'terms'		=> 'reference'
				)
			)
		));

		if ($over->have_posts()) :
			while ( $over->have_posts() ) :
				$over->the_post();
		?>

		<div class="row reference">
			<div class="col-sm-12">
				<div class="row single-column">
					<div class="col-sm-12 title">
						<h2><?php the_title(); ?></h2>
					</div>
				</div>

				<div class="row triple-columns">

					<?php 
					$logos = get_post_meta( get_the_ID(), 'wpcf-logo');
					foreach ($logos as $logo) :
					?>

					<div class="col-xs-6 col-sm-4">
						<img src="<?php echo $logo; ?>" class="img-responsive center-block">
					</div>
					
					<?php
					endforeach;
					?>
					
				</div>
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