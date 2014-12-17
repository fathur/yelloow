<?php

add_theme_support( 'post-thumbnails' );
add_theme_support( 'html5', array( 'search-form' ) );
add_filter('show_admin_bar', '__return_false');

/**
 * Load style scripts and javascript scripts
 * @return [type] [description]
 */
function yelloow_load_scripts() {

	wp_enqueue_style('bootstrap', get_template_directory_uri() . '/css/bootstrap.min.css');
	wp_enqueue_style('yelloow', get_template_directory_uri() . '/css/yelloow.css');

	wp_enqueue_script('jquery-1.11.1', get_template_directory_uri() . '/js/jquery-1.11.1.min.js', array(), '1.11.1', true);
	wp_enqueue_script('modernizr', get_template_directory_uri() . '/js/modernizr-2.6.2-respond-1.1.0.min.js', array(), '2.6.2', true);
	wp_enqueue_script('bootstrap', get_template_directory_uri() . '/js/bootstrap.min.js', array(), '3.1', true);
	wp_enqueue_script('yelloow', get_template_directory_uri() . '/js/yelloow.min.js', array(), '1.0', true);


}
add_action('wp_enqueue_scripts','yelloow_load_scripts');

/**
 * Yelloow register google fonts
 * Open Sans
 * @return [type] [description]
 */
function yelloow_fonts() {
	wp_register_style('open-sans', 'http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,600,300,700,800');
	wp_register_style('open-sans-condensed', 'http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700');

	wp_enqueue_style('open-sans');
	wp_enqueue_style('open-sans-condensed');
}
add_action('wp_print_styles','yelloow_fonts');

/**
 * Redirect helper
 * @param  string  $url        url for redirecting
 * @param  integer $statusCode status code when redirecting
 * @return void              
 */
function redirect($url, $statusCode = 303) {
	header('Location: ' . $url, true, $statusCode);
	die();
}

/**
 * Filtering search
 * hiding contact from search
 * @return 
 */
function search_filter($query)
{
	if ($query->is_search) {
		$query->set('post__not_in',array(25));
	}

	return $query;
}
add_filter('pre_get_posts','search_filter');

// require get_template_directory() . '/inc/admin-menu.php'; 
require get_template_directory() . '/inc/navigation-menu.php'; 
 
?>