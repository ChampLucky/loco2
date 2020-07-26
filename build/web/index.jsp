<%-- 
    Document   : index
    Created on : 17 Feb, 2020, 10:44:14 PM
    Author     : lucky borasi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Grand Tour Travel Category Flat Bootstrap Responsive Web Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Grand Tour Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	
	<!-- css files -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->
	
	<link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all">

	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<!-- //google fonts -->
        <style>
           
input[type=text] {
  width: 130px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  text-align:center;
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px auto;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
  width: 100%;
}

        </style>
</head>
<body>
    
    <%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
     response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
    %>

<!-- header -->
<header>
	<div class="container">
		<!-- nav -->
		<nav class="py-md-4 py-3 d-lg-flex">
			<div id="logo">
				<h1 class="mt-md-0 mt-2"> <a href="index.jsp"><span class="fa fa-map-signs"></span> Newway Tours </a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu ml-auto mt-1">
				<li class="active"><a href="index.jsp">Home</a></li>
				<li class=""><a href="about.jsp">About Us</a></li>
<!--				<li class=""><a href="services.html">Services</a></li>-->
				<li class=""><a href="packages.jsp">Packages</a></li>
				<li class=""><a href="contact.jsp">Contact</a></li>
                                <li class="booking"><a href="clogin.jsp?k=0">Login</a></li>
				
			</ul>
		</nav>
                
        <form action="getCity">

<input type="text" placeholder="select city" name="city" required>
<br>


</form>
                 	</div>
   
   
		<!-- //nav -->

</header>
<!-- //header -->

<!-- banner -->
<section class="banner_w3lspvt" id="home">
    
	<div class="csslider infinity" id="slider1">
		<input type="radio" name="slides" checked="checked" id="slides_1" />
		<input type="radio" name="slides" id="slides_2" />
		<input type="radio" name="slides" id="slides_3" />
		<input type="radio" name="slides" id="slides_4" />
		<ul>
			<li>
				<div class="banner-top">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info">
								<h3 class="text-wh">Welcome to Newway Tours.</h3>
								<h4 class="text-wh">The best place to book a tour.</h4>
								<div class="buttons mt-4">
									<a href="about.jsp" class="btn mr-2">About Us</a>
									<a href="packages.jsp" class="btn">Book a Tour</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
                            
				<div class="banner-top1">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info">
								<h3 class="text-wh">It is better to travel than to arrive. Let's Be Adventurers.</h3>
								<h4 class="text-wh">tristique senectus et netus et malesuada</h4>
								<div class="buttons mt-4">
									<a href="about.html" class="btn mr-2">About Us</a>
									<a href="packages" class="btn">Book a Tour</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner-top2">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info">
								<h3 class="text-wh">Never let your memories be greater than your dreams.</h3>
								<h4 class="text-wh">tristique senectus et netus et malesuada</h4>
								<div class="buttons mt-4">
									<a href="about.html" class="btn mr-2">About Us</a>
									<a href="packages.jsp" class="btn">Book a Tour</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner-top3">
					<div class="overlay1">
						<div class="container">
							<div class="w3layouts-banner-info">
								<h3 class="text-wh">It is better to travel than to arrive. Let's Be Adventurers.</h3>
								<h4 class="text-wh">tristique senectus et netus et malesuada</h4>
								<div class="buttons mt-4">
									<a href="about.html" class="btn mr-2">About Us</a>
									<a href="packages.jsp" class="btn">Book a Tour</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="arrows">
			<label for="slides_1"></label>
			<label for="slides_2"></label>
			<label for="slides_3"></label>
			<label for="slides_4"></label>
		</div>
	</div>
</section>
<!-- //banner -->

<section class="book py-5">
	<div class="container py-lg-5 py-sm-3">
		<h2 class="heading text-capitalize text-center"> How To Plan Your Trip</h2>
		<div class="row mt-5 text-center">
			<div class="col-lg-4 col-sm-6">
				<div class="grid-info">
					<div class="icon">
						<span class="fa fa-map-signs"></span>
					</div>
					<h4>Pick Destination</h4>
					<p class="mt-3">Simply pick a place you want to visit.</p>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 mt-sm-0 mt-5">
				<div class="grid-info">
					<div class="icon">
						<span class="fa fa-calendar"></span>
					</div>
					<h4>Select Date</h4>
					<p class="mt-3">Choose any date.</p>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 mt-lg-0 mt-5">
				<div class="grid-info">
					<div class="icon">
						<span class="fa fa-gift"></span>
					</div>
					<h4>Enjoy the Trip</h4>
					<p class="mt-3">Enjoy your vacations and live life fully.</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //how to book -->

<!-- tour packages -->
<section class="packages py-5">
	<div class="container py-lg-4 py-sm-3">
		<!--<h3 class="heading text-capitalize text-center"> Discover our tour packages</h3>
		<p class="text mt-2 mb-5 text-center">Vestibulum tellus neque, sodales vel mauris at, rhoncus finibus augue. Vestibulum urna ligula, molestie at ante ut, finibus vulputate felis.</p>
		<div class="row">
			<div class="col-lg-3 col-sm-6">
				<div class="image-tour position-relative">
					<img src="images/p1.jpg" alt="" class="img-fluid" />
				<!--	<p><span class="fa fa-tags"></span> <span>20$</span></p>
				</div>
				<div class="package-info">
					<h6 class="mt-1"><span class="fa fa-map-marker mr-2"></span>Paris, France.</h6>
					<h5 class="my-2">Sodales vel mauris</h5>
					<p class="">Vestibulum tellus neque, et velit mauris at, augue.</p>
					<ul class="listing mt-3">
						<li><span class="fa fa-clock-o mr-2"></span>Duration : <span>10 Days</span></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6">
				<div class="image-tour position-relative">
					<img src="images/p2.jpg" alt="" class="img-fluid" />
				<!--	<p><span class="fa fa-tags"></span> <span>20$</span></p>
				</div>
				<div class="package-info">
					<h6 class="mt-1"><span class="fa fa-map-marker mr-2"></span>Los Angles, USA.</h6>
					<h5 class="my-2">Sodales vel mauris</h5>
					<p class="">Vestibulum tellus neque, et velit mauris at, augue.</p>
					<ul class="listing mt-3">
						<li><span class="fa fa-clock-o mr-2"></span>Duration : <span>10 Days</span></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 mt-lg-0 mt-5">
				<div class="image-tour position-relative">
					<img src="images/p3.jpg" alt="" class="img-fluid" />
				<!--	<p><span class="fa fa-tags"></span> <span>20$</span></p>
				</div>
				<div class="package-info">
					<h6 class="mt-1"><span class="fa fa-map-marker mr-2"></span>Agra, India.</h6>
					<h5 class="my-2">Sodales vel mauris</h5>
					<p class="">Vestibulum tellus neque, et velit mauris at, augue.</p>
					<ul class="listing mt-3">
						<li><span class="fa fa-clock-o mr-2"></span>Duration : <span>10 Days</span></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 mt-lg-0 mt-5">
				<div class="image-tour position-relative">
					<img src="images/p4.jpg" alt="" class="img-fluid" />
					<!--<p><span class="fa fa-tags"></span> <span>20$</span></p>
				</div>
				<div class="package-info">
					<h6 class="mt-1"><span class="fa fa-map-marker mr-2"></span>Paris, France.</h6>
					<h5 class="my-2">Sodales vel mauris</h5>
					<p class="">Vestibulum tellus neque, et velit mauris at, augue.</p>
					<ul class="listing mt-3">
						<li><span class="fa fa-clock-o mr-2"></span>Duration : <span>10 Days</span></li>
					</ul>
				</div>
			</div>
		</div>-->
		<div class="view-package text-center mt-4">
			<a href="packages.jsp">View All Packages</a>
		</div>
	</div>
</section>
<!-- tour packages -->

<!-- text
<section class="text-content">
	<div class="overlay-inner py-5">
		<div class="container py-md-3">
			<div class="test-info">
				<h4 class="tittle">Enjoy The Trip</h4>
				<p class="mt-3">Duis nisi sapien, elementum finibus fermentum eget, aliquet leo et. Mauris hendrerit vel ex. Quisque vitae luctus massa.
				Phasellus sed aliquam leo a massa eu fringilla. Integer ultrices finibus sed nisi. in convallis felis dapibus
				sit amet.</p>
				<div class="text-left mt-4">
						<a href="packages.jsp">Book Now</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //text -->
	
<!-- destinations -->
<section class="destinations py-5" id="destinations">
	<div class="container py-xl-5 py-lg-3">
		<h3 class="heading text-capitalize text-center"> Popular Destinations</h3>
		<p class="text mt-2 mb-5 text-center">Famous and Beautiful places in india to visit.</p>
		<div class="row inner-sec-w3layouts-w3pvt-lauinfo">
			<div class="col-md-3 col-sm-6 col-6 destinations-grids text-center">
				<h4 class="destination mb-3">Bhojpur</h4>
				<div class="image-position position-relative">
					<img src="images/patalpani.jpg" class="img-fluid" alt="">
					<div class="rating">
						<ul>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
						</ul>
					</div>
				</div>
				<div class="destinations-info">
					<div class="caption mb-lg-3">
						<h4>Bhojpur</h4>
						<a href="book?p_id=202">Book Now</a>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 col-6 destinations-grids text-center">
				<h4 class="destination mb-3">Sanchi</h4>
				<div class="image-position position-relative">
					<img src="images/sanchi.jpg" class="img-fluid" alt="">
					<div class="rating">
						<ul>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
						</ul>
					</div>
				</div>
				<div class="destinations-info">
					<div class="caption mb-lg-3">
						<h4>Sanchi</h4>
						<a href="book?p_id=209">Book Now</a>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 col-6 destinations-grids text-center mt-md-0 mt-4">
				<h4 class="destination mb-3">Jammu & Kashmir</h4>
				<div class="image-position position-relative">
					<img src="images/l2.jpg" class="img-fluid" alt="">
					<div class="rating">
						<ul>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
						</ul>
					</div>
				</div>
				<div class="destinations-info">
					<div class="caption mb-lg-3">
						<h4>Jammu & Kashmir</h4>
						<a href="book?p_id=206">Book Now</a>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 col-6 destinations-grids text-center mt-md-0 mt-4">
				<h4 class="destination mb-3">Dharmshala</h4>
				<div class="image-position position-relative">
					<img src="images/l3.jpg" class="img-fluid" alt="">
					<div class="rating">
						<ul>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
							<li><span class="fa fa-star"></span></li>
						</ul>
					</div>
				</div>
				<div class="destinations-info">
					<div class="caption mb-lg-3">
						<h4>Dharmshala</h4>
						<a href="book?p_id=206">Book Now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- destinations -->

<!--footer -->
<footer>
<section class="footer footer_w3layouts_section_1its py-5">
	<div class="container py-lg-4 py-3">
		<div class="row footer-top">
			<div class="col-lg-3 col-sm-6 footer-grid_section_1its_w3">
				<div class="footer-title">
					<h3>Address</h3>
				</div>
				<div class="footer-text">
					<p>Location : Room no. 11119 ,Hostel 11 Appu Bhavan,MANIT</p>
					<p>Phone : +12 534894364</p>
					<p>Email : <a href="#">bourasilucky@gmail.com</a></p>
					<p>Fax : +12 534894364</p>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 footer-grid_section mt-sm-0 mt-4">
				<!--<div class="footer-title">
					<h3>About Us</h3>
				</div>
				<div class="footer-text">
					<p>Vivamus magna justo, laci niats eget consectetur sed, conval lis at tellus. Nulla quis lorem ipnt libero.
					Lorem ipsum dolor.</p>
				</div>-->
				<ul class="social_section_1info">
					<li class="mb-2 facebook"><a href="#"><span class="fa fa-facebook"></span></a></li>
					<li class="mb-2 twitter"><a href="#"><span class="fa fa-twitter"></span></a></li>
					<li class="google"><a href="#"><span class="fa fa-google-plus"></span></a></li>
					<li class="linkedin"><a href="#"><span class="fa fa-linkedin"></span></a></li>
				</ul>
			</div>
			<div class="col-lg-3 col-sm-6 mt-lg-0 mt-4 footer-grid_section_1its_w3">
				<div class="footer-title">
					<h3>Travel Places</h3>
				</div>
				<div class="row">
					<ul class="col-6 links">
						<li><a href="#choose" class="scroll">Himachal Pradesh </a></li>
						<li><a href="#overview" class="scroll">South India </a></li>
						<li><a href="#pricing" class="scroll">Jammu & Kashmir</a></li>
						<li><a href="#faq" class="scroll"> Sanchi</a></li>
						<li><a href="#testimonials" class="scroll">Goa</a></li>
						<li><a href="#contact" class="scroll"> Daman & div </a></li>
					</ul>
					<ul class="col-6 links">
						<li><a href="#">Nepal </a></li>
						<li><a href="#"> Indonesia</a></li>
						<li><a href="#faq" class="scroll">Mali </a></li>
						
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 mt-lg-0 mt-4 footer-grid_section_1its_w3">
				<div class="footer-title">
					<h3>Newsletter</h3>
				</div>
				<div class="footer-text">
					<p>By subscribing to our mailing list you will always get latest news and updates from us.</p>
					<form action="#" method="post">
						<input type="email" name="Email" placeholder="Enter your email..." required="">
						<button class="btn1"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
						<div class="clearfix"> </div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
</footer>
<!-- //footer -->

<!-- copyright -->
<div class="copyright py-3 text-center">
	<p>© 2020 Newway Tours. All Rights Reserved | Developed by Lucky & Himanshu</p>
</div>
<!-- //copyright -->

<!-- move top -->
<div class="move-top text-right">
	<a href="#home" class="move-top"> 
		<span class="fa fa-angle-up  mb-3" aria-hidden="true"></span>
	</a>
</div>
<!-- move top -->

	
</body>
</html>