<form method="GET" action="<?php echo home_url( '/' ); ?>" role="form">
	<div class="form-group has-yellow has-feedback">
		
		<input type="search" name="s" class="form-control input-sm" id="search" placeholder="<?php echo esc_attr_x( 'Search …', 'placeholder' ) ?>" value="<?php echo get_search_query() ?>"  title="<?php echo esc_attr_x( 'Search for:', 'label' ) ?>">
		<span class="glyphicon glyphicon-search form-control-feedback" aria-hidden="true"></span>
	</div>
	
</form>