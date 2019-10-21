
<jsp:include page="header/head1.jsp"></jsp:include>
<jsp:include page="slider/slide.jsp"></jsp:include>

<!-- Start About area -->
<div id="about" class="about-area area-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="section-headline text-center">
					<h2>About Us</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- single-well start-->
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="well-left">
					<div class="single-well">
						<a href="#"> <img style="height: 280px; width: 550px;"
							src="img/about/about.jpg" alt="">
						</a>
					</div>
				</div>
			</div>
			<!-- single-well end-->
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="well-middle">
					<div class="single-well">
						<a href="#">
							<h4 class="sec-head">Bangladesh All Market Store</h4>
						</a>
						<p>BD Market is largest online business platform.Using these
							platform you can easily doing your own business.</p>
						<ul>
							<li><i class="fa fa-check"></i> Shopkeeper get a dashboard</li>
							<li><i class="fa fa-check"></i> User can easily find their
								product</li>
							<li><i class="fa fa-check"></i> User can easily find their
								product own location</li>
							<li><i class="fa fa-check"></i> Verry user friendly</li>
							<li><i class="fa fa-check"></i> Join us</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- End col-->
		</div>
	</div>
</div>
<!-- End About area -->

<!-- Start Service area -->

<!-- End Service area -->

<!-- End Testimonials -->
<!-- Start Blog Area -->

<!-- End Blog -->
<!-- Start Suscrive Area -->
<div class="suscribe-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs=12">
				<div class="suscribe-text text-center">
					<h3>Welcome to our BDmarket Onlineshop</h3>
					<a class="sus-btn" href="reg.jsp">Create a account</a>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- End Suscrive Area -->
<!-- Start contact Area -->
<div id="contact" class="contact-area">
	<div class="contact-inner area-padding">
		<div class="contact-overly"></div>
		<div class="container ">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h2>Contact us</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- Start contact icon column -->
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="contact-icon text-center">
						<div class="single-icon">
							<i class="fa fa-mobile"></i>
							<p>
								Call: +1 5589 55488 55<br> <span>Monday-Friday
									(9am-5pm)</span>
							</p>
						</div>
					</div>
				</div>
				<!-- Start contact icon column -->
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="contact-icon text-center">
						<div class="single-icon">
							<i class="fa fa-envelope-o"></i>
							<p>
								Email: bdmarket@example.com<br>
							</p>
						</div>
					</div>
				</div>
				<!-- Start contact icon column -->
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="contact-icon text-center">
						<div class="single-icon">
							<i class="fa fa-map-marker"></i>
							<p>
								Location:52/B<br> <span>Dhanmondi, Bangladeshs</span>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- Start Google Map -->
				<div class="col-md-6 col-sm-6 col-xs-12">
					<!-- Start Map -->
					<!-- Uncomment below if you wan to use dynamic maps -->
					<!--<div id="google-map" data-latitude="40.713732" data-longitude="-74.0092704"></div>-->
					<img
						src="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x350&maptype=roadmap&markers=color:red%7Clabel:S%7C40.702147,-74.015794&key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"
						alt="">
					<!-- End Map -->
				</div>
				<!-- End Google Map -->

				<!-- Start  contact -->
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form contact-form">

						<form action="" method="POST" class="contactForm">
							<div class="form-group">
								<input type="text" class="form-control" id="c_name"
									placeholder="Your Name" required='1' />
							</div>
							<div class="form-group">
								<input type="email" class="form-control" id="c_email"
									placeholder="Enter your email " />

							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="c_subject"
									placeholder="Subject" required='1' />

							</div>
							<div class="form-group">
								<textarea class="form-control" id=c_message required='1'></textarea>
							</div>

							<div class="text-center">
								<button type="submit" id="contactms">Send Message</button>
							</div>
						</form>
					</div>
				</div>
				<!-- End Left contact -->
			</div>
		</div>
	</div>
</div>
<!-- End Contact Area -->

<!-- Start Footer bottom Area -->

<jsp:include page="footer/foot.jsp"></jsp:include>


