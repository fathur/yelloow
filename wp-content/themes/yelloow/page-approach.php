<?php get_header(); ?>

<div class="jumbotron yellow">
	<div class="container text-center troubleshoot">
		<?php 

		/**
		 * Display troubleshoot page
		 */
		$troubleshoot = new WP_Query(array(
			'pagename'	=> 'trouble-shooting'
		));

		if ($troubleshoot->have_posts()) :

			while ( $troubleshoot->have_posts()) :
				$troubleshoot->the_post();
		?>

		<h2><?php the_title(); ?></h2>
		
		<?php the_content(); ?>
		
		<?php
			endwhile;
			wp_reset_postdata();
		endif;
		?>
		
	</div>
</div>

<div class="container-fluid white">
	<div class="container content">
		<div class="row text-center graves">
			<div class="col-sm-12">

				<?php
				/**
				 * Display graves page
				 */
				$graves = new WP_Query(array(
					'pagename'	=> 'graves'
				));

				if ($graves->have_posts()) :

					while ( $graves->have_posts()) :
						$graves->the_post();
				?>

				<div class="row single-column">
					<div class="col-sm-12 title">
						<h2><?php the_title(); ?></h2>
					</div>
				</div>

				<div class="row single-column">
					<div class="col-sm-12">
						<?php the_content(); ?>

						<?php the_post_thumbnail('full', array(
							'class'	=> 'img-responsive center-block'
						)); ?>

					</div>
				</div>

				<?php
					endwhile;
					wp_reset_postdata();
				endif;
				?>

			</div>
		</div>

		<div class="row drijfveren">

			<?php
			/**
			 * Display graves page
			 */
			$dv = new WP_Query(array(
				'post_type'			=> 'drijfveren',
				'posts_per_page'	=> 7
			));

			if ($dv->have_posts()) :

				$colors = array();

				while ( $dv->have_posts()) :
					$dv->the_post();

					$color = array(
						'image'	=> get_the_post_thumbnail( get_the_ID(), 'full', array(
									'class' => 'img-responsive center-block'
								)),
						'title' => get_the_title(),
						'content' => get_the_content()
					);

					array_push($colors, $color);
					
				endwhile;
				wp_reset_postdata();
			endif;

			var_dump($colors);
			?>

			<div class="col-sm-12">
				<div class="row single-column">
					<div class="col-sm-12 title">
						<!-- For Title -->
						<h2>Drijfveren</h2>
					</div>
				</div>

				<div class="row double-columns">

					<?php for ($i=0; $i < 2; $i++) : ?>
					<div class="col-sm-6 text-center">
						<?php echo $colors[$i]['image']; ?>

						<h4><?php echo $colors[$i]['title']; ?></h4>

						<?php echo $colors[$i]['content']; ?>
					</div>
					<?php endfor;	?>

				</div>

				<div class="row triple-columns">
					<div class="col-sm-4 text-center">
						<img src="../img/brush-blue.png" class="img-responsive center-block">
						<h4>PAARS</h4>

						<p>staat voor ongeschreven regels, traditie, familieband, vertrouwdheid, rituelen, geloof, bescheidenheid</p>

						<p>Negatief : achterdocht, wantrouwen</p>
					</div>
					<div class="col-sm-4 text-center">
						<img src="../img/brush-orange.png" class="img-responsive center-block">
						<h4>PAARS</h4>

						<p>staat voor ongeschreven regels, traditie, familieband, vertrouwdheid, rituelen, geloof, bescheidenheid</p>

						<p>Negatief : achterdocht, wantrouwen</p>
					</div>
					<div class="col-sm-4 text-center">
						<img src="../img/brush-green.png" class="img-responsive center-block">
						<h4>PAARS</h4>

						<p>staat voor ongeschreven regels, traditie, familieband, vertrouwdheid, rituelen, geloof, bescheidenheid</p>

						<p>Negatief : achterdocht, wantrouwen</p>
					</div>
					
				</div>

				<div class="row double-columns">
					<div class="col-sm-6 text-center">
						<img src="../img/brush-yellow.png" class="img-responsive center-block">
						<h4>PAARS</h4>

						<p>staat voor ongeschreven regels, traditie, familieband, vertrouwdheid, rituelen, geloof, bescheidenheid</p>

						<p>Negatief : achterdocht, wantrouwen</p>
					</div>
					<div class="col-sm-6 text-center">
						<img src="../img/brush-turqoise.png" class="img-responsive center-block">
						<h4>PAARS</h4>

						<p>staat voor ongeschreven regels, traditie, familieband, vertrouwdheid, rituelen, geloof, bescheidenheid</p>

						<p>Negatief : achterdocht, wantrouwen</p>
					</div>
					
				</div>
			</div>
		</div>

	</div>
</div>
<?php get_footer(); ?>

