<%-- 
    Document   : customer
    Created on : 18 Feb, 2020, 1:25:22 AM
    Author     : lucky borasi
--%>

<%@page import="tour.pojo.GetHotel"%>
<%@page import="tour.Dao.getHotelDao"%>
<%@page import="tour.Dao.getCityDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tour.Dao.getPackageDao"%>
<%@page import="tour.pojo.GetPackage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            
          #tour{
                min-height: 50vh;
            }
        </style>
	
</head>
<body>

<%
    
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
     response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
    
    
    
    if(session.getAttribute("c_name")==null)
    {
        response.sendRedirect("index.jsp");
         
    }
//int pd=Integer.parseInt(request.getParameter("p_id"));
 
%>
   
<!-- header -->
<header>
	<div class="container">
		<!-- nav -->
		<nav class="py-md-4 py-3 d-lg-flex">
			<div id="logo">
				<h1 class="mt-md-0 mt-2"> <a href="index.jsp"><span class="fa fa-map-signs"></span> Newway Tours</a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu ml-auto mt-1">
				<!--<li class=""><a href="newcustomer.jsp">Home</a></li>-->
				<li class=""><a href="yourTour.jsp">Your Tours</a></li>
                                <li class="active"><a href="customer.jsp?p_id=0">Book Tour</a></li>
                                <li class=""><a href="cpackage.jsp">Packages</a></li>
				<!--<li class=""><a href="contact.">Contact</a></li>-->
                                <li class="booking"><a href="Logout">LOGOUT</a></li>
			</ul>
		</nav>
		<!-- //nav -->
	</div>
</header>

<%if(Integer.parseInt(request.getParameter("p_id"))!=0){%>

<!-- //header -->
<%
    int p_id=Integer.parseInt(request.getParameter("p_id"));
String c_name=(String)session.getAttribute("c_name");
%>

<%


getPackageDao dao=new getPackageDao();
ArrayList<GetPackage> infoset=dao.getListOfPackges();

//String package_id=session.getAttribute("p_id");

//int p_id=(int)request.getAttribute("p_id");


getCityDao cityDao=new getCityDao();
    String city=cityDao.getCityNameByPackage(p_id);
    ArrayList<String> states=cityDao.getStates();
    getHotelDao hoteldao=new getHotelDao();
    ArrayList<GetHotel> h_names=hoteldao.getHotelByCity(city);
 
%>


<!-- banner -->
<section class="banner_inner" id="home">
	<div class="banner_inner_overlay">
	</div>
</section>
<!-- //banner -->


<!-- Booking -->
<section class="contact py-5">
    <h1>Welcome ${c_name} </h1>
	<div class="container py-lg-5 py-sm-4">
		<h2 class="heading text-capitalize text-center mb-lg-5 mb-4"> Book Your Tour</h2>
		<div class="contact-grids">
			<div class="row">
				<div class="col-lg-7 contact-left-form">
                                    <form action="booking.jsp?p_id=<%out.println(p_id);%>" method="post" class="row">
						<!--<div class="col-sm-6 form-group contact-forms">
						  <input type="text" class="form-control" placeholder="Package id" value="<%= p_id%>"required="">
						</div>-->
						<div class="col-sm-6 form-group contact-forms">
                                                    <label>No. of People</label>
						  <input type="text" class="form-control" placeholder="No. of People" name="no_of_people"required="">
						</div>
						<div class="col-sm-6 form-group contact-forms">
                                                   <label>Choose Date</label>
						  <input type="date" class="form-control" placeholder="tour-date" name="p_date"required=""> 
						</div>
						<!--<div class="col-sm-6 form-group contact-forms">
						  <input type="text" class="form-control" placeholder="Date" required=""> 
						</div>-->
						<div class="col-sm-6 form-group contact-forms">
                                                    <label>Select Hotel</label>
                                                    <select class="form-control" name="hotel" id="hotelselect" onchange="hotelPrice()">
								
                                                                <option selected disabled>Select hotel</option>
                                                                <%for(GetHotel h:h_names){%>
                                                                <option><% out.println(h.getH_name()); %></option>
                                                                <%} %>
 
							</select>
						</div>
                                                <div class="col-sm-6 form-group contact-forms">
                                                    
                                                     <label>Hotel Price( Rs.)</label>
						  <input type="text" class="form-control" id="hotelprice" placeholder="Hotel Price (Rs)." name="h_cost"required="">
						</div>
                                                
                                                <div class="col-sm-6 form-group contact-forms">
                                                <label>choose state</label>
                                                <select class="form-control" name="state" id="state"onchange="ajax()">
								
                                                                <option selected disabled>Select state</option>
                                                                <%for(String h:states){%>
                                                                <option value="<% out.println(h); %>"><% out.println(h); %></option>
                                                                <%} %>
 
							</select>
                                                    
                                                </div>
                                              <!-- <div class="col-sm-6 form-group contact-forms">
                                                <label>From</label>
                                                    <input type="text" id="from" class="form-control"onkeyup="ajax()" name="from"placeholder="from" required="">
                                                </div>-->
                                                <div class="col-sm-6 form-group contact-forms">
                                                <label>city</label>
                                                <select class="form-control" id="from" name="city">
                                                    <option selected disabled>select city</option>	
                                            
 
							</select>
                                                    
                                                </div>
                                            
                                                
						<div class="col-sm-6 form-group contact-forms">
                                                   <label>Travel_type</label>
							<select class="form-control" id="mode" name="travel_type">
                                                                <option selected disabled>Choose travel</option>
								<option value="TRANSIT">Train</option>
                                                                <option value="DRIVING">Bus</option>
                                                                <option value="WALKING">Air</option>
							</select>
						</div>
                                                
                                                <div class="col-sm-6 form-group contact-forms">
                                                    <label>Travel Cost( Rs.)</label>
                                                    <input type="text" class="form-control" placeholder="Travel cost (Rs.)" name="t_cost"id="dist" value=""required="">
						</div>
                                                <!--<span id="error" style="color:red"></span><br>-->
                                                
						<div class="col-md-12 booking-button">
							<button class="btn btn-block sent-butnn">Book Now</button>
						</div>
					</form>
				</div>
                            
                             <% for(GetPackage a:infoset){ %>

                             <% if(a.getP_id()==p_id) {%>
				<div class="col-lg-5 contact-right pl-lg-5">
				
					<div class="image-tour position-relative">
						<img src="images\<% out.println(a.getP_image());%>" alt="" class="img-fluid" />
						<p><span class="fa fa-tags"></span> <span>20$ - 15% off</span></p>
					</div>
					
					<h4>Tour Description</h4>
					<p class="mt-3"></p>
                                        <p>Category: <% out.println(a.getCategory());%></p>
                                        <p>Places: <% out.println(a.getDescription());%></p>
                                        <p>P_Cost: <% out.println(a.getP_cost());%></p>
                                        <p>Days:<% out.println(a.getDays());%></p>
                                        
				</div>
                             
                           <%} %>
                          <%} %>
			</div>
		</div>
	</div>
</section>
                          
                        
                        
                        <input type="hidden" id="to" class="form-control" value="<%= city%>">
                        
                        
      
    


<div id="map" class=" map p-2" style="height:400px;width:100%">
                            
</div>
     <% }%>
   




     
     <%if(Integer.parseInt(request.getParameter("p_id"))==0){%>
     
<section class="banner_inner" id="home">
	<div class="banner_inner_overlay">
            
           
	</div>
    
    
</section>
     <div class="container " id="tour">
         <h1 class="py-10 my-5">you havent chosen a package please chose a package first.</h1>
         <a class="button btn btn-primary btn-large btn-block my-5" role="button" href="cpackage.jsp">Choose a Package</a>
           </div>
          <%}%>

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

<script>
 

  
function hotelPrice()
{
    
    var request=null;
  try{
      request=new XMLHttpRequest();
      
  }
  catch(exception)
  {
     alert("browser does not support request");     
  }
  request.onreadystatechange=function()
  {
      if(request.readyState==4)
      {
          document.getElementById("hotelprice").value = request.responseText;
          //var error=document.getElementById("error");
          //error.innerHTML=request.responseText;
          //check=request.responseText;
      }
  };
  var h_name = document.getElementById("hotelselect").value;
  //var city=document.getElementById("city").value;
  var url="getprice.jsp?h_name="+h_name;
  request.open("GET",url,true);
  request.send(null);
  
}
    
    function ajax()
 {
   
  var request=null;
  try{
      request=new XMLHttpRequest();
      
  }
  catch(exception)
  {
     alert("browser does not support request");     
  }
  request.onreadystatechange=function()
  {
      if(request.readyState==4)
      {
          var error=document.getElementById("from");
          error.innerHTML=request.responseText;
          //var check=request.responseText;
          //alert(check);
      }
  };
  var state=document.getElementById("state").value;
  var url="checkcity.jsp?state="+state;
  request.open("GET",url,true);
  request.send(null);
    
 }
 
 function initMap() {
        var directionsService = new google.maps.DirectionsService();
        var directionsRenderer = new google.maps.DirectionsRenderer();
        var map = new google.maps.Map(document.getElementById("map"), {
          zoom: 7,
          center: { lat: 23.25, lng: 77.41 }
        });
        directionsRenderer.setMap(map);

        var onChangeHandler = function() {
            
               calculateAndDisplayRoute(directionsService, directionsRenderer);
        };
       
        document
          .getElementById("from")
          .addEventListener("change", onChangeHandler);
        
        //document
          //.getElementById("end")
          //.addEventListener("change", onChangeHandler);
        document
          .getElementById("mode")
          .addEventListener("change", onChangeHandler);
      }

      function calculateAndDisplayRoute(directionsService, directionsRenderer) {
        directionsService.route(
          {
            origin: { query: document.getElementById("from").value },
            destination: { query: document.getElementById("to").value },
            travelMode: document.getElementById("mode").value
          },
          function(response, status) {
            if (status === "OK") {
              directionsRenderer.setDirections(response);
              console.log(response);
              showDistance(response);
            } else {
              window.alert("Directions request failed due to " + status);
            }
          }
        );
      }

      function showDistance(response) {
        let distance = response["routes"][0]["legs"][0]["distance"]["value"]/1000;
        var type = document.getElementById("mode").value;
         if(type=="TRANSIT")
         {
            document.getElementById('dist').value=Math.floor(distance*.53);
         }
         if(type=="DRIVING")
         {
             document.getElementById('dist').value=Math.floor(distance*1.8);
         }     
       if(type=="WALKING")
       {        
           document.getElementById('dist').value=Math.floor(distance*4);
       }
       
      }
    </script>
    <script
      async
      defer
      src="https://maps.googleapis.com/maps/api/js?key="
    ></script>
     
   
	
</body>
</html>
