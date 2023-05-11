<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ARGSDSS</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Lato:400,300,700,900"
	rel="stylesheet">
<link rel="stylesheet" href="reboot.css">
<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/reg.css" rel="stylesheet">
<style type="text/css">
.fa_custom {
	color: #0099CC;
}
</style>

<!-- =======================================================
  * Template Name: Amoeba - v2.2.0
  * Template URL: https://bootstrapmade.com/free-one-page-bootstrap-template-amoeba/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body style="background-color: #05baf9 !important;">

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container">

			<div class="logo float-left">
				<h1 class="text-light">
					<a href="#"><span>A Reliability Guaranteed Solution for Data Storing and Sharing
					</span></a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>
			<nav class="nav-menu float-right d-none d-lg-block">
				  <ul>
         
              <li class="active"><a href="gmhome.jsp">Home</a></li>
               <li class="drop-down"><a href="#">Data Providers</a>
            <ul>
              <li class=""><a href="adddp.jsp">Add</a>
              <li class=""><a href="viewdp.jsp">View</a>
                
              </li>
            </ul>
          </li>
              <li ><a href="index.html">Logout</a></li>
            </ul>
         
			</nav>

		
		</div>
	</header>
	<!-- End #header -->

	<!-- ======= Hero Section ======= -->

	<!-- #hero -->

	<main id="main"> <!-- ======= About Us Section ======= -->
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h3>Welcome</h3>
				<p>A Reliability Guaranteed Solution for Data Storing and Sharing</p>
			</div>
			<div class="col-md-9 register-right">
				<ul style="float: left; margin-left: 36px;"
					class="nav nav-tabs nav-justified" id="myTab" role="tablist">
				</ul>


				<ul style="float: right;" class="nav nav-tabs nav-justified"
					id="myTab" role="tablist">
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						
									</div>

					</div>
					<div class="tab-pane fade show" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
					<h3 class="register-heading">Add Data Provider </h3>

						
							
							<form name="f1" action="dpaddback.jsp" method="POST"
								onsubmit="return validation()">


								<center>
								
								<%
								
								String shs=null;
								shs=request.getParameter("msg");
								if(shs!=null){
									out.println(shs);
								}
								
								%>
									<div class="row register-form">
										<div class="col-md-6">
											<div class="form-group">
												<input type="text" name="dpname"  class="form-control"
													placeholder="Name *" required="required"  />
											</div>
											<div class="form-group">
												<input type="email" name="dpmail"  class="form-control"
													placeholder="Email Id *" required="required"  />
											</div>
											<div class="form-group">
												<input type="text" name="dpgroup"  class="form-control"
													placeholder="Group Name *" required="required"  />
											</div>
											



											<div class="form-group">
												<input type="password" name="dppass" class="form-control"
													placeholder="Password *" value="" required="required"/>
											</div>
											

										
											<input type="submit" class="btnRegister" value="Add" />
											


										</div>
									</div>

								</form>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<body>
	<center>
		<!-- <h2>Welcome to user home page!!!!!!!</h2>
		</center> -->
		<!-- End Map Section -->
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->

	<!-- End #footer -->



	<!-- Vendor JS Files -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/venobox/venobox.min.js"></script>
	<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	

</body>
</html>