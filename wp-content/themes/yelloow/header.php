<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	
	<title><?php wp_title('|', true, 'right'); ?> <?php bloginfo('name'); ?></title>

	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="description" content="Yellow">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

	<?php wp_head(); ?>

</head>
<body>
	<!--[if lt IE 7]>
	<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->

	<nav class="navbar navbar-default white" role="navigation">
		<div class="container">
			
			<div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="<?php echo get_option('home'); ?>">
		      	<img src="<?php echo get_template_directory_uri(); ?>/img/logo-yelloow.png" class="img-responsive">
		      </a>
		    </div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="main-menu">

				<div class="row header">
					<div class="col-xs-12 col-sm-4 pull-right">
						<?php get_search_form(); ?>
					</div>

					<div class="col-xs-12 col-sm-3 pull-right top-sosmed">
						<a href="https://twitter.com/yelloow_consult" target="_blank">
							<img src="<?php echo get_template_directory_uri(); ?>/img/twitter-yelloow.png" class="">
						</a>

						<a href="https://www.facebook.com/yelloowconsult" target="_blank">
							<img src="<?php echo get_template_directory_uri(); ?>/img/fb-yelloow.png" class="">
						</a>
						<a href="https://www.linkedin.com/company/yelloow?trk=company_logo" target="_blank">
							<img src="<?php echo get_template_directory_uri(); ?>/img/linkedin-yelloow.png" class="">
						</a>
					</div>

				</div>

				<div class="row menu">
					<div class="col-sm-9 col-sm-offset-3">
						<!-- <ul class="nav navbar-nav navbar-right navbar-yelloow">
							<li class="active"><a href="voorwie.html">VOOR WIE</a></li>
							<li><a href="approach.html">APPROACH</a></li>
							<li><a href="over.html">OVER YELLOOW</a></li>
							<li><a href="contact.html">CONTACT</a></li>
						</ul> -->
						<?php yelloow_display_menu(); ?>
					</div>
				</div>
			</div><!-- /.navbar-collapse -->
		</div>
	</nav>