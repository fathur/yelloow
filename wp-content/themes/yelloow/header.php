<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	
	<title><?php wp_title( '', TRUE, 'left' ); ?></title>

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
		      <a class="navbar-brand" href="index.html">
		      	<img src="img/logo-yelloow.png" class="img-responsive">
		      </a>
		    </div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="main-menu">

				<div class="row header">
					<div class="col-xs-12 col-sm-4 pull-right">
						<form method="POST" action="/" role="form">
							<div class="form-group has-yellow has-feedback">
								
								<input type="text" class="form-control input-sm" id="search">
								<span class="glyphicon glyphicon-search form-control-feedback" aria-hidden="true"></span>
							</div>
							
						</form>
					</div>

					<div class="col-xs-12 col-sm-3 pull-right top-sosmed">
						<a href="#">
							<img src="img/twitter-yellow.png" class="">
						</a>

						<a href="#">
							<img src="img/fb-yellow.png" class="">
						</a>
						<a href="#">
							<img src="img/linkedin-yellow.png" class="">
						</a>
					</div>

				</div>

				<div class="row menu">
					<div class="col-sm-9 col-sm-offset-3">
						<ul class="nav navbar-nav navbar-right navbar-yelloow">
							<li class="active"><a href="voorwie.html">VOOR WIE</a></li>
							<li><a href="approach.html">APPROACH</a></li>
							<li><a href="over.html">OVER YELLOOW</a></li>
							<li><a href="contact.html">CONTACT</a></li>
						</ul>
					</div>
				</div>
			</div><!-- /.navbar-collapse -->
		</div>
	</nav>