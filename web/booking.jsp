<%-- 
    Document   : booking
    Created on : 23 Feb, 2020, 1:14:14 AM
    Author     : lucky borasi
--%>

<%@page import="tour.pojo.GetPackage"%>
<%@page import="tour.Dao.getPackageDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
        String cust_id=session.getAttribute("c_id").toString();
        int c_id=Integer.parseInt(cust_id);
        
//        String package_id=session.getAttribute("p_id").toString();

int p_id=Integer.parseInt(request.getParameter("p_id"));
   
   int no_of_people=Integer.parseInt(request.getParameter("no_of_people"));
   String date=request.getParameter("p_date");
   String h_name=request.getParameter("hotel");
   int h_cost=Integer.parseInt(request.getParameter("h_cost"));
   String from_city=request.getParameter("city");
   String travel_type=request.getParameter("travel_type");
   String tour_date=request.getParameter("p_date");
   int n=Integer.parseInt(request.getParameter("no_of_people"));
   int t_cost=Integer.parseInt(request.getParameter("t_cost"));
   getPackageDao dao=new getPackageDao();
   GetPackage pk=dao.packagePerId(p_id);
   
   int p_cost=pk.getP_cost();
   
//   session.setAttribute("t_cost",t_cost);
//   session.setAttribute("h_cost",h_cost);
//   session.setAttribute("c_id",c_id);
//   session.setAttribute("p_id",p_id);
//   session.setAttribute("tour_date",tour_date);
//   session.setAttribute("no_of_people", n);
//   session.setAttribute("h_name",h_name);
//   session.setAttribute("from_city",from_city);
//   session.setAttribute("travel_type",travel_type);
   
   
   %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Grand Tour Travel Category Flat Bootstrap Responsive Web Template | Contact :: w3layouts</title>
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
	
</head>
<body>

<!-- header -->
<header>
	<div class="container">
		<!-- nav -->
		<nav class="py-md-4 py-3 d-lg-flex">
			<div id="logo">
				<h1 class="mt-md-0 mt-2"> <a href="index.html"><span class="fa fa-map-signs"></span> Newway Tours </a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu ml-auto mt-1">
				<li class=""><a href="booking.jsp">Booking</a></li>
				<!--<li class=""><a href="about.html">About Us</a></li>-->
				<!--<li class=""><a href="services.html">Services</a></li>-->
<!--				<li class=""><a href="cpackage.jsp">Packages</a></li>
				<li class="active"><a href="contact.html">Contact</a></li>
				<li class="booking"><a href="booking.html">Book Now</a></li>-->
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


<!-- Contact -->
<section class="contact py-5">
	<div class="container py-lg-5 py-sm-3">
			<h2 class="heading text-capitalize text-center mb-sm-5 mb-4">Continue Payment</h2>
			
			
			<div class="contact-grids mt-5">
				<div class="row">
					<div class="col-lg-6 col-md-6 contact-left-form">
						<form action="BookNow" method="post">
                                                    
                                                    <input type="hidden" name="h_name" value="<%= h_name%>">
                                                    <input type="hidden" name="t_cost" value="<%=t_cost %>">
                                                    <input type="hidden" name="h_cost" value="<%=h_cost %>">
                                                    <input type="hidden" name="c_id" value="<%=c_id %>">
                                                    <input type="hidden" name="p_id" value="<%=p_id %>">
                                                    <input type="hidden" name="tour_date" value="<%=tour_date %>">
                                                    <input type="hidden" name="no_of_people" value="<%=n %>">
                                                    <input type="hidden" name="travel_type" value="<%=travel_type %>">
                                                    <input type="hidden" name="from_city" value="<%= from_city %>">
                                                    <input type="hidden" name="p_cost" value="<%= p_cost %>">
							<div class=" form-group contact-forms">
								<label>Name on Card</label>
							  <input type="text" class="form-control" placeholder="Name on card" required="">
							</div>
							<div class="form-group contact-forms">
								<label>Card NO.</label>
							  <input type="text" class="form-control" placeholder="card no." required="">
							</div>
							<div class="col-sm-6 form-group contact-forms">
								<label>Expiry Month</label>
							  <select name='expireMM' class="form-control" id='expireMM'>
                                 <option value=''>Month</option>
                                 <option value='01'>January</option>
                                 <option value='02'>February</option>
                                 <option value='03'>March</option>
                                 <option value='04'>April</option>
                                 <option value='05'>May</option>
                                 <option value='06'>June</option>
                                 <option value='07'>July</option>
                                 <option value='08'>August</option>
                                 <option value='09'>September</option>
                                 <option value='10'>October</option>
                                 <option value='11'>November</option>
                                 <option value='12'>December</option>
                                 </select> 
							</div>
							<div class="col-sm-6 form-group contact-forms">
								<label>Expiry Year</label>
							  <select name='expireYY' class="form-control"id='expireYY'>
                              <option value=''>Year</option>
                              <option value='10'>2020</option>
                              <option value='11'>2021</option>
                              <option value='12'>2022</option>
                              </select> 
							</div>
							<div class="form-group contact-forms">
								<label>Enter Your CVV</label>
							  <input type="text" class="form-control" placeholder="enter CVV" required=""> 
							</div>
							
							<button class="btn btn-block sent-butnn">Proceed</button>
						</form>
					</div>
					<div class="col-lg-5 contact-right pl-lg-5">
				
					<div class="image-tour position-relative">
                                            <img src="images/<%= pk.getP_image() %>" alt="" class="img-fluid" />
						<p><span class="fa fa-tags"></span> <span>20$ - 15% off</span></p>
					</div>
					
					<h4>Price Description</h4>
					<p class="mt-4">Package cost&nbsp;:<%=pk.getP_cost() %><br>
					                hotel cost&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=h_cost %><br>
					                travel cost&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=t_cost %><br>
					                total cost&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<%=t_cost + pk.getP_cost() + h_cost %> </p>
					
				</div>
				</div>
			</div>
	</div>
</section>
<!-- //Contact -->

<!-- map -->	

<!-- //map -->

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