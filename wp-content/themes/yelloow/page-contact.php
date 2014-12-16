<?php get_header(); ?>

<div class="container-fluid yellow img-full-width">

	<div class="gmaps">
		<?php echo get_post_meta(get_the_ID(), 'yelloow-map', true); ?>
	</div>

	<div class="container">
		<div class="row text-center text address">
			<div class="col-sm-12">
				<p>
					<b>YELLOOW</b><br/>
					<b>Marktstraat 67</b><br/>
					<b>1745 Opwijk</b>
				</p>
				<p>
					<a href="tel:+32 486 142 752">&#43;32 486 142 752 &#9642; Linda Leemans</a>
					<a href="tel:+32 477 558 758">&#43;32 477 558 758 &#9642; Greet Leemans</a>
				</p>

				<p><a href="mailto:info@yellow.be">info&#64;yellow&#46;be</a></p>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="container content">
		<div class="row contact-form"> <!-- part 1, 2, 3 -->
			<div class="col-sm-12">

				<?php 

				/**
				 * Display contact page
				 */
				if ( have_posts() ) :

					while ( have_posts() ) :
						the_post();
				?>

				<div class="row single-column text-center">
					<div class="col-sm-12 title">
						<h2>Kennismaken?</h2>
					</div>
				</div>

				<div class="row single-column form">
					<div class="col-sm-6 col-sm-offset-3 text-justify">
						<?php the_content(); ?>
					</div>
					
				</div>

				<?php
					endwhile;
					wp_reset_postdata();
				endif;
				?>

			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>