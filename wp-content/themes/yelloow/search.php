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

			<div class="row search-results">
				<div class="col-sm-12">
					<div class="row single-column">
						<div class="col-sm-12 title">
							<h2>Search Results</h2>
						</div>
						<div class="col-sm-12">

							<?php if ( have_posts() ) : ?>

							<ul class="list-unstyled">
								
								<?php while ( have_posts() ) : the_post(); ?>
								
								<li id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
									<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
									<?php the_excerpt(); ?>
								</li>

								<?php endwhile; ?>
							</ul>
							
							<?php else : ?>
								<h2 class="text-center">No Results</h2>
							<?php endif; ?>
						</div>
					</div>

					
				</div>
			</div>	
			
		</div>
	</div>

<?php get_footer(); ?>
