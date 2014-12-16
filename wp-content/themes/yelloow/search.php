<?php get_header(); ?>

<div class="container-fluid yellow">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					&nbsp;
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid white">

		<div class="container content">

			<div class="row">
				<div class="col-sm-12">
					<div class="row single-column search-results">
						<div class="col-sm-12">
							<ul class="list-unstyled">
								<?php 

								if ( have_posts() ) : 
									while ( have_posts() ) : the_post();
								?>
								<li>
									<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
									<?php the_content(); ?>
								</li>

								<?php 
									endwhile;
								endif; ?>
							</ul>
						</div>
					</div>

					
				</div>
			</div>	
			
		</div>
	</div>

<?php get_footer(); ?>
