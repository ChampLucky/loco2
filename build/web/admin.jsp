<%@page import="tour.pojo.GetCity"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tour.Dao.getCityDao"%>
<%@page import="tour.Dao.getPackageDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>admin page</title>
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  padding: 10px;
  background: #f1f1f1;
}

/* Header/Blog Title */
.header {
  padding: 10px;
  text-align: center;
  background:white;
}

.header h1 {
  font-size: 30px;
  
}

/* Style the top navigation bar */
.topnav {
  margin:10px 0px;
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}



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




<div class="header">
  <h1>Newway</h1>
  <h3>Tour and Travels</h3>
</div>

<div class="topnav">
  <a href="admin.jsp">Add Package</a>
  <a href="addAgent.jsp">Add Agent</a>
  <a href="viewBookings.jsp">View Bookings</a>
  <a href="addHotel.jsp">Add Hotels</a>
  <a href="adLogout" style="float:right">LOGOUT</a>
</div>



<%

String uname=(String)session.getAttribute("uname");


%>
<div>
<h1> Welcome ${uname}</h1>

<h3>Add New Package</h3>
<%
getPackageDao dao=new getPackageDao();
int p_id=dao.getPackageId();

getCityDao citydao=new getCityDao();
ArrayList<GetCity> citynames=citydao.getCityNames();

%>

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