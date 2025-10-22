<!DOCTYPE html>

<html lang="en">


<head>
<meta charset="utf-8" />
<title>KVAFSU Application</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="Preview page of Metronic Admin Theme #3 for form layouts"
	name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link
	href="assets1/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets1/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets1/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets1/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets1/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="assets1/global/css/components-rounded.min.css"
	rel="stylesheet" id="style_components" type="text/css" />
<link href="assets1/global/css/plugins.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="assets1/layouts/layout3/css/layout.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets1/layouts/layout3/css/themes/default.min.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="assets1/layouts/layout3/css/custom.min.css" rel="stylesheet"
	type="text/css" />
<link
	href="assets1/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker6.min.css"
	type="text/css" rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Kaushan+Script|Source+Sans+Pro"
	rel="stylesheet">
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="assets1/global/img/Kvfsu.png" />
</head>
<style>
* {
	box-sizing: border-box;
	/* outline:1px solid ;*/
}

body {
	background: #ffffff;
	background: linear-gradient(to bottom, #ffffff 0%, #e1e8ed 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff',
		endColorstr='#e1e8ed', GradientType=0);
	height: 100%;
	margin: 0;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

.wrapper-1 {
	width: 100%;
	height: 100vh;
	display: flex;
	flex-direction: column;
}

.wrapper-2 {
	padding: 30px;
	text-align: center;
}

h1 {
	font-family: 'Kaushan Script', cursive;
	font-size: 4em;
	letter-spacing: 3px;
	color: #5892FF;
	margin: 0;
	margin-bottom: 20px;
}

.wrapper-2 p {
	margin: 0;
	font-size: 1.3em;
	color: #aaa;
	font-family: 'Source Sans Pro', sans-serif;
	letter-spacing: 1px;
}

.go-home {
	color: #fff;
	background: #5892FF;
	border: none;
	padding: 10px 50px;
	margin: 30px 0;
	border-radius: 30px;
	text-transform: capitalize;
	box-shadow: 0 10px 16px 1px rgba(174, 199, 251, 1);
}

.footer-like {
	margin-top: auto;
	background: #D7E6FE;
	padding: 6px;
	text-align: center;
}

.footer-like p {
	margin: 0;
	padding: 4px;
	color: #5892FF;
	font-family: 'Source Sans Pro', sans-serif;
	letter-spacing: 1px;
}

.footer-like p a {
	text-decoration: none;
	color: #5892FF;
	font-weight: 600;
}

@media ( min-width :360px) {
	h1 {
		font-size: 4.5em;
	}
	.go-home {
		margin-bottom: 20px;
	}
}

@media ( min-width :600px) {
	.content {
		max-width: 1000px;
		margin: 0 auto;
	}
	.wrapper-1 {
		height: initial;
		max-width: 620px;
		margin: 0 auto;
		margin-top: 50px;
		box-shadow: 4px 8px 40px 8px rgba(88, 146, 255, 0.2);
	}
}

* {
	margin: 0;
	padding: 0;
}

.background-img {
	background:
		url('https://res.cloudinary.com/damqsjjsn/image/upload/v1641672204/landscapewLight_wdbhno.png')
		no-repeat center center fixed;
	height: 100vh;
}

#wrap {
	text-align: center;
	margin-top: 0px;
}

.fa {
	font-size: 19px;
	width: 20px;
	padding: 0px 0px;
}

.btn-slide {
	position: relative;
	display: inline-block;
	height: 50px;
	width: 240px;
	line-height: 50px;
	margin: 25px 0;
	padding: 0px;
	border-radius: 25px;
	box-shadow: 0 10px 20px -8px rgba(0, 0, 0, 0.7);
	background: linear-gradient(135deg, #e570e7 0%, #79f1fc 100%);
}

.btn-slide:active {
	box-shadow: 0 8px 16px -8px rgba(0, 0, 0, 0.7);
	-webkit-transform: scale(0.98);
	transform: scale(0.96);
}

.btn-slide:hover {
	background: linear-gradient(-135deg, #e570e7 0%, #79f1fc 100%);
}

.btn-slide span.circle {
	display: block;
	background-color: #fff;
	color: #e570e7;
	position: absolute;
	margin: 5px;
	height: 40px;
	width: 40px;
	top: 0;
	left: 0;
	border-radius: 50%;
	transition: all 1.5s ease;
}

.btn-slide:hover span.circle {
	left: 100%;
	margin-left: -45px;
	background-color: #fff;
	color: #79f1fc;
}

.btn-slide span.title {
	position: absolute;
	left: 85px;
	font-size: 17px;
	font-weight: bold;
	color: #fff;
	transition: all 1.5s linear;
}

.btn-slide span.title-hover {
	opacity: 0;
}

.btn-slide:hover span.title {
	opacity: 0;
}

.btn-slide:hover span.title-hover {
	opacity: 1;
	left: 60px;
}
</style>
<!-- END HEAD -->

<body class="page-container-bg-solid">
	<div class="page-wrapper">
		<div class="page-wrapper-row">
			<div class="page-wrapper-top">
				<!-- BEGIN HEADER -->
				<div class="page-header">
					<!-- BEGIN HEADER TOP -->
					<div class="page-header-top">
						<!-- BEGIN LOGO -->
						<img class="img1" src="assets1/layouts/layout3/img/jobport.png"
							style="width: 100%;">


					</div>
					<!-- END HEADER TOP -->
					<!-- BEGIN HEADER MENU -->

					<!-- END HEADER MENU -->
				</div>
				<!-- END HEADER -->
			</div>
		</div>
		<div class="page-wrapper-row full-height">
			<div class="page-wrapper-middle">
				<!-- BEGIN CONTAINER -->
				<div class="page-container">
					<!-- BEGIN CONTENT -->
					<div class="page-content-wrapper">
						<!-- BEGIN CONTENT BODY -->
						<!-- BEGIN PAGE HEAD-->
						<div class="page-head">
							<div class="container">
								<!-- BEGIN PAGE TITLE -->

								<!-- END PAGE TITLE -->
								<!-- BEGIN PAGE TOOLBAR -->

								<!-- END PAGE TOOLBAR -->
							</div>
						</div>
						<!-- END PAGE HEAD-->
						<!-- BEGIN PAGE CONTENT BODY -->
						<div class="page-content">
							<div class="container">
								<!-- BEGIN PAGE BREADCRUMBS -->
								<%--
								<img class="img2" src="assets1/layouts/layout3/img/caree.png" style="width:100%;">

								--%>
								<!-- END PAGE BREADCRUMBS -->
								<!-- BEGIN PAGE CONTENT INNER -->
								<div class="page-content-inner">
									<div class="row">
										<div class="col-md-12">
											<div class="tabbable-line boxless tabbable-reversed"></div>

											<div class="portlet light bordered">
												<div class="portlet-title">

													<%--	<div class="actions">
														<div class="btn-group btn-group-devided"
															data-toggle="buttons">

															<g:render template="/header/topBar"></g:render>

															<label class="btn btn-transparent dark btn-outline btn-circle btn-sm">
                                                                    <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                                                            
														</div>
													</div>
												</div>
												--%>
													<div class="portlet-body form">
														<!-- BEGIN FORM-->
														<div class="caption">
															<sec:ifAnyGranted roles="ROLE_ADMIN">
																<g:link controller="superadmin" action="indexx">
																	<i class="icon-home font-dark"></i>
																	<span class="caption-subject font-dark sbold">Home</span>
																</g:link>
															</sec:ifAnyGranted>

															<sec:ifAnyGranted roles="ROLE_COMMANUSERS">
																<g:link controller="superadmin" action="dashboard">
																	<i class="icon-home font-dark"></i>
																	<span class="caption-subject font-dark sbold">Home</span>
																</g:link>
															</sec:ifAnyGranted>
														</div>
														<div class=content>
															<div class="wrapper-1">
																<div class="wrapper-2">

																	<h1>Failed try again !</h1>
																	<p>Your Payment Has Failed</p>
																	<p style="color: red">Note:Please login again and
																		pay the application fees.</p>



																	<div id="wrap">
																		<%--<div> 
   <g:link class="btn-slide" action="report" resource="${formDetailInstance}">
      <span class="circle"><i class="fa fa-save"></i></span>
      <span class="title" > Download Report</span>
      <span class="title title-hover">Download Now</span>
     </g:link></div>
    
  --%>
																	</div>
																</div>
																<div class="footer-like">
																	<sec:ifAnyGranted roles="ROLE_ADMIN">
																		<p>
																			Home Page
																			<g:link class="btn btn-primary"
																				action="adminformDetails"
																				resource="${formDetailInstance}">
																				<g:message code="default.button.Click here.label"
																					default="Click here" />
																			</g:link>
																	</sec:ifAnyGranted>


																	<sec:ifAnyGranted roles="ROLE_COMMANUSERS">
																		<p>
																			Home Page
																			<g:link class="btn green" action="index"
																				resource="${formDetailInstance}">
																				<g:message code="default.button.Click here.label"
																					default="Click here" />
																			</g:link>
																	</sec:ifAnyGranted>

																</div>
															</div>
														</div>
													</div>


													<!-- END FORM-->
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- END PAGE CONTENT INNER -->
				</div>
			</div>
			<!-- END PAGE CONTENT BODY -->
			<!-- END CONTENT BODY -->
		</div>
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->
		<a href="javascript:;" class="page-quick-sidebar-toggler"> <i
			class="icon-login"></i>
		</a>

		<!-- END QUICK SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	<div class="page-wrapper-row">
		<div class="page-wrapper-bottom">
			<!-- BEGIN FOOTER -->
			<!-- BEGIN PRE-FOOTER -->

			<!-- END PRE-FOOTER -->
			<!-- BEGIN INNER FOOTER -->
			<div class="page-footer">
				<div class="container">
					2022 &copy; kvafsu Job Portle By <a target="_blank"
						href="http://hiideals.com">Hiideals</a>
				</div>
			</div>
			<div class="scroll-to-top">
				<i class="icon-arrow-up"></i>
			</div>
			<!-- END INNER FOOTER -->
			<!-- END FOOTER -->
		</div>
	</div>
	<!-- BEGIN QUICK NAV -->

	<div class="quick-nav-overlay"></div>
	<!-- END QUICK NAV -->
	<!--[if lt IE 9]>
<script src="assets1/global/plugins/respond.min.js"></script>
<script src="assets1/global/plugins/excanvas.min.js"></script> 
<script src="assets1/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
	<!-- BEGIN CORE PLUGINS -->
	<script src="assets1/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="assets1/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="assets1/global/plugins/js.cookie.min.js"
		type="text/javascript"></script>
	<script
		src="assets1/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="assets1/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="assets1/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="assets1/global/scripts/app.min.js" type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="assets1/pages/scripts/form-samples.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<script src="assets1/layouts/layout3/scripts/layout.min.js"
		type="text/javascript"></script>
	<script src="assets1/layouts/layout3/scripts/demo.min.js"
		type="text/javascript"></script>
	<script src="assets1/layouts/global/scripts/quick-sidebar.min.js"
		type="text/javascript"></script>
	<script src="assets1/layouts/global/scripts/quick-nav.min.js"
		type="text/javascript"></script>
	<script
		src="assets1/global/plugins/bootstrap-datepicker/js/jquery.ui.datepicker1.js"></script>
	<!-- END THEME LAYOUT SCRIPTS -->
	<script>
		$(document).ready(function() {
			$('#clickmewow').click(function() {
				$('#radio1003').attr('checked', 'checked');
			});
		})
	</script>


</body>

</html>