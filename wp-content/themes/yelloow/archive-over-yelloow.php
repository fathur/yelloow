<?php get_header(); ?>

<div class="jumbotron yellow img-full-width" id="jumbotron-<?php echo get_post_type(); ?>">

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
			<div class="col-sm-12" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
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
		 * Double Columns sections
		 */
		
		$over = new WP_Query(array(
			'post_type'	=> get_post_type(),
			'orderby'	=> 'menu_order',
			'order'		=> 'ASC',
			'tax_query'	=> array(
				array(
					'taxonomy'	=> 'over-yelloow-tax',
					'field'		=> 'slug',
					'terms'		=> 'content-double-columns'
				)
			)
		));

		if ($over->have_posts()) :
			while ( $over->have_posts() ) :
				$over->the_post();
		?>

		<div class="row" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
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
		 * Single Column Section
		 * 
		 **/
		$over = new WP_Query(array(
			'post_type'	=> get_post_type(),
			'orderby'	=> 'menu_order',
			'order'		=> 'ASC',
			'tax_query'	=> array(
				array(
					'taxonomy'	=> 'over-yelloow-tax',
					'field'		=> 'slug',
					'terms'		=> 'content-single-column'
				)
			)
		));

		if ($over->have_posts()) :
			while ( $over->have_posts() ) :
				$over->the_post();
		?>

		<div class="row" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
			<div class="col-sm-12">

				<div class="row single-column text-center">
					<div class="col-sm-12 title">
						<h2 class="title"><?php the_title(); ?></h2>
					</div>
				</div>

				<div class="row single-column">
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
		 * Reference image columns
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

		<div class="row reference" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
			<div class="col-sm-12">
				<div class="row single-column">
					<div class="col-sm-12 title">
						<h2><?php the_title(); ?></h2>
					</div>
				</div>

				<div class="row triple-columns">

					<?php 
					$childs = types_child_posts('onze-referenties', array(
						'orderby'	=> 'menu_order'	,
						'order'		=> 'ASC'
					));

					foreach ($childs as $child) :
						$field = $child->fields;
					?>

					<div class="col-xs-6 col-sm-4">
						<a href="<?php echo $field['reference_link']; ?>" target="__blank">
							<img src="<?php echo $field['logo']; ?>" class="img-responsive center-block">
						</a>
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