<%-- 
    Document   : addpackage
    Created on : 29 Feb, 2020, 12:13:14 PM
    Author     : lucky borasi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="tour.pojo.GetCity"%>
<%@page import="tour.Dao.getCityDao"%>
<%@page import="tour.Dao.getPackageDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Side Navigation Bar</title>
	<link rel="stylesheet" href="css/styles.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
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
textarea{
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
select{
margin-bottom:3px;
  padding:10px;
  width: 100%;
  border:1px solid #CCC
}

        </style>
</head>
<body>

    

<div class="wrapper">
    <div class="sidebar">
        <h2>Sidebar</h2>
        <ul>
            <li><a href="admin.jsp" class="active"><i class="fas fa-home"></i>Home</a></li>
            <li><a href="addpackage.jsp"><i class="fas fa-user"></i>Profile</a></li>
            <li><a href="addagent"><i class="fas fa-address-card"></i>About</a></li>
            <li><a href="addhotel"><i class="fas fa-project-diagram"></i>portfolio</a></li>
            <li><a href="#"><i class="fas fa-blog"></i>Blogs</a></li>
            <li><a href="#"><i class="fas fa-address-book"></i>Contact</a></li>
            <li><a href="#"><i class="fas fa-map-pin"></i>Map</a></li>
        </ul> 
        <div class="social_media">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
   
<%
getPackageDao dao=new getPackageDao();
int p_id=dao.getPackageId();

getCityDao citydao=new getCityDao();
ArrayList<GetCity> citynames=citydao.getCityNames();

%>
 <center><h1>Add New Package</h1></center>
<form  action="addPackage" enctype="multipart/form-data" method='post'>
  <label>Package Id</label><input type="text" name="p_id" value="<%= p_id %>">
  <br>
  <label>City</label>
  <select name="city">
  <option selected disabled>Select city</option>
  <%for(GetCity city:citynames){%>
  <option><% out.println(city.getCity_name()); %></option>
  <%} %>
  </select>
  <br>
  <label>Description</label>
  <textarea name="desc"></textarea>
  <br>
  <label>Package Cost</label>
  <input type="text"  name="p_cost" required>
  <br>
  <label>Duration</label>
  <input type="text"  name="days" required>
  <br>
  <label>category</label>
  <select name="cat">
  <option selected disabled>Choose one</option>
  <option>Religious</option>
  <option>Adventure</option>
  <option>Family</option>
  <option>Safari</option>
  </select>
  <br>
  <label>Insert Image</label>
  <input type="file"name="image"required>
 
  <button type='submit'>Submit</button>
  
</form>
</div>

</body>
</html>