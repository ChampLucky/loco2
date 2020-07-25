<%-- 
    Document   : clogin
    Created on : 18 Feb, 2020, 12:29:22 AM
    Author     : lucky borasi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Grand Tour Travel Category Flat Bootstrap Responsive Web Template | Booking :: w3layouts</title>
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
	
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<!-- //google fonts -->
	
        <style>
            

form {
  margin:0 auto;
  width:300px
}
input {
  margin-bottom:3px;
  padding:10px;
  width: 100%;
  border:1px solid #CCC
}
button {
  padding:10px
}
label {
  cursor:pointer
}
#form-switch {
  display:none
}
#register-form {
  display:none
}
#form-switch:checked~#register-form {
  display:block
}
#form-switch:checked~#login-form {
  display:none
}

        </style>
</head>
<body>

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
				<li class=""><a href="index.jsp">Home</a></li>
				<li class=""><a href="about.jsp">About Us</a></li>
				<!--<li class=""><a href="services.html">Services</a></li>-->
				<li class=""><a href="packages.jsp">Packages</a></li>
				<li class=""><a href="contact.jsp">Contact</a></li>
				<!--<li class="booking"><a href="booking.html">Book Now</a></li>-->
			</ul>
		</nav>
		<!-- //nav -->
	</div>
</header>
<!-- //header -->

<!-- banner -->
<section class="banner_inner" id="home">
	<div class="banner_inner_overlay">
	</div>
</section>
<!-- //banner -->
<%
 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
  response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
    
    
  
    
    
   
   
 int k=0;
 k=Integer.parseInt(request.getParameter("k"));

 
session.setAttribute("k",k);

 if(session.getAttribute("c_name")!=null && k==0)
    {
        response.sendRedirect("yourTour.jsp");
         
    }
 
 
%> 

<!-- Booking -->
<section class="contact py-5">
    <center><h1>Login/Register</h1></center><br><br>
<input type='checkbox' id='form-switch'>
<form id='login-form' action="Clogin" method='post'>
  <input type="text" placeholder="Username" name="c_name"required>
  <input type="password" placeholder="Password" name="pass" required>
  <button type='submit'>Login</button>
  
  <label for='form-switch'><span>Register</span></label>
</form>
<form id='register-form' action="Cregister" method='post'>
  <input type="text" placeholder="Customer Name" name="c_name" required>
  <input type="text" placeholder="Mobile no." name="mob" required>
  <input type="text" placeholder="Address" name="address" required>
  <input type="email" placeholder="Email" name="email" required>
  <input type="password" placeholder="Password" name="password"required>
  <input type="password" placeholder="Re Password" required>
  <button type='submit'>Register</button>
  <br><br>
  <label for='form-switch'>Already Member ? Sign In Now..</label>
</form>
<%

  
  
  

if(k==1)
{
    String message=request.getParameter("message");
    out.println(message);
}


%>
</section>
<!-- //Booking -->


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
