<?php get_header(); ?>

<div id="carousel-yelloow" class="carousel slide yellow carousel-yelloow" data-ride="carousel">
	<div class="container text-center text">
		<h2>INVESTEREN IN MEER SUCCES VOOR JEZELF EN JE BEDRIJF ?</h2>
		<h2>Ontdek de Black Box van jezelf en van anderen</h2>
	</div>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img src="img/slider-1.png" alt="..." class="img-responsive center-block">
		</div>
		<div class="item">
			<img src="img/slider-2.png" alt="..." class="img-responsive center-block">
		</div>
	</div>
</div>

<div class="container-fluid white content-fluid">

	<a href="#blackbox">
		<img src="<?php echo get_template_directory_uri(); ?>/img/bottom-arrow.png" class="btn-arrow">
	</a>

	<div class="container content">
		<div class="row intro">
			<div class="col-sm-12">
				<div class="row single-column intro-sort">
					<div class="col-sm-12 text-center">
						<h4>YELLOOW biedt ondersteuning bij selectie van medewerkers, coaching van jezelf en je bedrijf,  trouble-shooting en trouble-advisering. YELLOOW legt de focus op de analyse van drijfveren en talenten van jezelf en je medewerkers.</h4>
					</div>
				</div>

				<div class="row double-columns">
					<div class="col-sm-6 text-justify">
						<p>Mensen met verschillende talenten, ieder met hun unieke “Black Box”, motiveren en goed laten samenwerken is de uitdaging voor een bedrijf. Weten dat ieder met een andere bril naar de wereld kijkt, is het uitgangspunt. Inzicht in je eigen kijk creëert kansen om medewerkers en teams beter te managen.</p>

						<p>YELLOOW helpt zicht krijgen op de processen die in een bedrijf spelen.	</p>

						<p>Uw en onze analyse zijn het uitgangspunt.De kleurentheorie en –test zijn voor YELLOOW een hulpmiddel om tot een evenwichtige analyse te komen.	</p>

					</div>

					<div class="col-sm-6">
						<h4>Voor wie:</h4>

						<ul class="list-unstyled list-right-arrow">
							<li>Managers &amp; LEIDINGGEVENDEN </li>
							<li>Teams</li>
							<li>INDIVIDUELE PROFESSIONALS</li>
						</ul>
					</div>
				</div>
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