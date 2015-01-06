<?php

function yelloow_register_menu()
{
	register_nav_menus( array(
		'main-menu'	=> 'Main Menu',
	));
}
add_action( 'init', 'yelloow_register_menu' );

/**
 * Display menu
 */
function yelloow_display_menu()
{
	$menu_name = 'main-menu';

	$html = '<ul class="nav navbar-nav navbar-right navbar-yelloow">';

	//print_r(get_nav_menu_locations()); // Array ( [main-menu] => 5 )
	//print_r(wp_get_nav_menu_object(5)); // stdClass Object ( [term_id] => 5 [name] => Main Menu [slug] => main-menu [term_group] => 0 [term_taxonomy_id] => 5 [taxonomy] => nav_menu [description] => [parent] => 0 [count] => 4 [filter] => raw )
	// print_r( wp_get_nav_menu_items( 5 ) );
	
	$locations 	= get_nav_menu_locations();
	$menus 		= wp_get_nav_menu_items( $locations[$menu_name] );

	$i = 1;
	foreach ($menus as $menu) {
		if (predict($menu->url)) {
			$active = 'active';
		} else {
			$active = '';
		}
		$html .= '<li class="'.$active.'"><a href="'.$menu->url.'">'.$menu->title.'</a></li>';

		if ( count($menus) != $i ) {
			$html .= '<li class="separator hidden-xs">&bullet;</li>';
		}

		$i++;
	}

	$html .= '</ul>';
	
	echo $html;
}

/**
 * [format_url description]
 * @param  [type] $url [description]
 * @return [type]      [description]
 */
function format_url($url) {

	if (strpos($url,'#') !== false) {
		$x_url = explode('#', $url);
		$url	= $x_url[0];
	}
	
	$url = rtrim($url, '/');
	return $url;

}

/**
 * [predict description]
 * @param  [type] $url [description]
 * @return [type]      [description]
 */
function predict( $url ) {
	
	global $post;
	
	if ( format_url( $url )  == format_url( get_current_url() )) {
		return TRUE;
	}
	
	if ( format_url( get_post_type_archive_link( get_post_type() ) ) == format_url($url) ) {
		return TRUE;
	}
}

/**
 * [get_current_url description]
 * @return [type] [description]
 */
function get_current_url() {
	$protocol 	= (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
	$url		= $_SERVER["HTTP_HOST"] . $_SERVER["REQUEST_URI"];

	return $protocol . $url;
}