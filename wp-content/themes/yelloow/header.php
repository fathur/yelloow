<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" <?php language_attributes(); ?>> <!--<![endif]-->
<head>
	
	<title><?php wp_title('|', true, 'right'); ?> <?php bloginfo('name'); ?></title>

	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="description" content="Yellow">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Fostrom, Fathur Rohman (&#102;&#097;&#116;&#104;&#117;&#114;&#095;&#114;&#111;&#104;&#109;&#097;&#110;&#049;&#055;&#064;&#121;&#097;&#104;&#111;&#111;&#046;&#099;&#111;&#046;&#105;&#100;)">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,600,300,700,800' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700' rel='stylesheet' type='text/css'>

	<?php wp_head(); ?>

</head>
<body <?php body_class(); ?>>
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
		      <a class="navbar-brand" href="<?php echo home_url(); ?>">
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
						<?php yelloow_display_menu(); ?>
					</div>
				</div>
			</div><!-- /.navbar-collapse -->
		</div>
	</nav>