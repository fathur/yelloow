<?php

/**
 * Additional setting for yelloow theme
 *
 * SLIDER
 * 1. Gambar home slider, multiple images
 * 2. Text home slider, mau static atau ganti seperti images
 *
 * MAPS
 * 3. Setting iframe maps dalam contact
 *
 * FOOTER
 * 4. Alamat
 * 5. Sosmed
 */

function setup_yelloow_admin_menus() {
	// We will write the function contents very soon.
	add_menu_page('Yelloow', 'Yelloow', 'manage_options', 
		'yelloow_settings', 'page_yelloow_settings');

	add_submenu_page('yelloow_settings', 
		'Carousel', 'Carousel', 'manage_options', 
		'yelloow-carousel', 'page_yelloow_carousel');

	add_submenu_page('yelloow_settings', 
		'Maps', 'Maps', 'manage_options', 
		'yelloow-maps', 'page_yelloow_maps');

	add_submenu_page(
		'yelloow_settings', 
		'Footer', 
		'Footer', 
		'manage_options', 
		'yelloow-footer', 
		'yelloow_footer_display'
	);
}
 
// This tells WordPress to call the function named "setup_theme_admin_menus"
// when it's time to create the menu pages.
add_action("admin_menu", "setup_yelloow_admin_menus");


function page_yelloow_settings() {
	
	?>

	<div id="theme-options-wrap">
		<div class="icon32" id="icon-tools"></div>
		<h2>My Theme Options</h2>
		<p>Take control of your theme, by overriding the default settings with your own specific preferences.</p>
		<form method="post" action="">
			<p class="submit">
				<input name="Submit" type="submit" class="button-primary" value="<?php esc_attr_e('Save Changes'); ?>" />
			</p>
		</form>

		<h3></h3>
	</div>

	<?php
}

function page_yelloow_carousel() {

}

function page_yelloow_maps() {
	?>
	<div id="theme-options-wrap">
		<h2>Yelloow Maps</h2>
	
		<p>Using html tag, will show in contact page</p>
		<textarea id="address" name="address" class="regular-text"></textarea>
	</div>

	<?php

}

/**
 * ==============================
 * 			Footer Area
 * ==============================
 */
function yelloow_footer_display() {
	?>

	<div id="theme-options-wrap">
		<h2>Yelloow Footer</h2>
	
		<form method="POST" action="">

			<?php do_settings_sections('yelloow-footer'); ?>

			<p class="submit">
				<input name="Submit" type="submit" class="button-primary" value="<?php esc_attr_e('Save Changes'); ?>" />
			</p>
		
		</form>
	</div>

	<?php
}

function yelloow_initialize_footer() {

	// Sosmed
	add_settings_section(
		'footer-sosmed-section',
		'Social Media',
		'yelloow_initialize_sosmed_callback',
		'yelloow-footer'
	);

	add_settings_field(
		'footer-fb',
		'Facebook Link',
		'facebook_callback',
		'yelloow-footer',
		'footer-sosmed-section'
	);

	add_settings_field(
		'footer-twitter',
		'Twitter Link',
		'twitter_callback',
		'yelloow-footer',
		'footer-sosmed-section'
	);

	add_settings_field(
		'footer-linkedin',
		'LinkedIn Link',
		'linkedin_callback',
		'yelloow-footer',
		'footer-sosmed-section'
	);

	register_setting(
		'yelloow-footer',
		'footer-fb'
	);

	register_setting(
		'yelloow-footer',
		'footer-twitter'
	);

	register_setting(
		'yelloow-footer',
		'footer-linkedin'
	);

	// Address
	add_settings_section(
		'footer-address-section',
		'Address',
		'yelloow_initialize_address_callback',
		'yelloow-footer'
	);

	add_settings_field(
		'footer-address',
		'Address',
		'address_callback',
		'yelloow-footer',
		'footer-address-section'
	);

	register_setting(
		'yelloow-footer',
		'footer-address'
	);
}
add_action('admin_init','yelloow_initialize_footer');


function yelloow_initialize_sosmed_callback()
{
	echo "Please enter your Social Media link, this link will display in footer. And will redirect to each page when you click on it.";
}

function yelloow_initialize_address_callback()
{
	echo "Please enter your Address, this link will display in footer. This can be formatted with HTML tag.";
}

function facebook_callback($args) {
	echo "<input name='fb' type='text' id='fb' placeholder='Facebook' class='regular-text' />";
}

function twitter_callback() {
	echo "<input name='twitter' type='text' id='twitter' placeholder='Twitter' class='regular-text' />";
}

function linkedin_callback() {
	echo "<input name='linkedin' type='text' id='linkedin' placeholder='Linked In' class='regular-text' />";
}

function address_callback() {
	echo "<textarea id='address' name='address' placeholder='Type your address here' class='regular-text'></textarea>";

}

function validasi($input) {
	print_r($input);
}