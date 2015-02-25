<?php get_header(); ?>

<div id="carousel-yelloow" class="carousel slide yellow carousel-yelloow" data-ride="carousel">
	<div class="container text-center text">
		<h2>INVESTEREN IN MEER SUCCES VOOR JEZELF, JE BEDRIJF OF ORGANISATIE?</h2>
		<h2>ontdek de <a href="#blackbox">Black Box</a> van jezelf en van anderen</h2>
	</div>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img src="<?php echo get_template_directory_uri(); ?>/img/slider-1.png" alt="..." class="img-responsive center-block">
		</div>
	</div>
</div>

<div class="container-fluid white content-fluid">

	<a href="#blackbox">
		<img src="<?php echo get_template_directory_uri(); ?>/img/bottom-arrow.png" class="btn-arrow">
	</a>

	<div class="container content">
		<div class="row intro" id="intro">
			<div class="col-sm-12">

				<?php 
				$intro = new WP_Query(array(
					'post_type'		=> 'content-introduction'
				));

				if ($intro->have_posts()) :
					while ( $intro->have_posts()) :
						$intro->the_post();
				?>

				<div class="row single-column intro-sort">
					<div class="col-sm-12 text-center">
						<?php echo get_post_meta(get_the_ID(), 'wpcf-intro', true); ?>
					</div>
				</div>

				<div class="row double-columns">
					<div class="col-sm-6 text-justify">
						<?php echo get_post_meta(get_the_ID(), 'wpcf-intro-left-column', true); ?>
					</div>

					<div class="col-sm-6 home-voorwie">
						<h4>Voor wie:</h4>

						<ul class="list-unstyled list-right-arrow">
							
							<?php
							$voorwie = new WP_Query(array(
								'post_type'	=> 'voor-wie'
							));

							if ($voorwie->have_posts()) :
								while($voorwie->have_posts()):
									$voorwie->the_post();
							?>

							<li>
								<a href="<?php echo get_post_type_archive_link('voor-wie')?>#<?php echo $post->post_name; ?>">
									<?php the_title(); ?>
								</a>
							</li>

							<?php
								endwhile;
								wp_reset_postdata();
							endif;
							?>

						</ul>

					</div>
				</div>

				<?php
					endwhile;
					wp_reset_postdata();
				endif;
				?>
				
			</div>
		</div>

		<div class="row black-box" id="blackbox">
			<div class="col-sm-12">

				<?php 
				/**
				 * Menampilkan content dari page Black Box
				 */
				$blackbox = new WP_Query(array(
					'pagename'	=> 'black-box'
				));

				if ($blackbox->have_posts()) :

					while ( $blackbox->have_posts()) :
						$blackbox->the_post();

				?>
				
				<div class="row single-column text-center">
					<div class="col-sm-12 title">
						<img src="<?php echo get_template_directory_uri(); ?>/img/black-box.png" class="img-responsive center-block">

						<h2><?php the_title(); ?></h2>
					</div>
				</div>

				<div class="row double-columns">
					<div class="col-sm-12 text-justify">
						<?php the_content(); ?>
					</div>

				</div>
				
				<?php
					endwhile;
				endif;
				?>
				
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>