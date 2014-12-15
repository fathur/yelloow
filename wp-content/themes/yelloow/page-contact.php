<?php get_header(); ?>

<div class="container-fluid yellow img-full-width">

	<div class="gmaps">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d628.1242106891026!2d4.189139199999994!3d50.9700064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c395054a00d8fd%3A0x36c09e2c3612bdd!2sMarktstraat+40%2C+1745+Opwijk%2C+Belgium!5e0!3m2!1sen!2s!4v1418278454230" width="800" height="600" frameborder="0" style="border:0"></iframe>
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
				$contact = new WP_Query(array(
					'pagename'	=> 'contact'
				));

				if ($contact->have_posts()) :

					while ( $contact->have_posts()) :
						$contact->the_post();
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