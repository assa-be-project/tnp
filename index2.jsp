<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="index2w3.css">
<style>
h1{background-color:#00ccff;color:#034f84}
</style>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import = "java.io.*,java.util.*" %>
	
<%
			if (session.getAttribute("name").equals("") && session.getAttribute("usertype").equals("")) {
			if (request.getSession(false) == null) {
            	response.sendRedirect("index.jsp");
            }
			}
%>
</head>
<body>
 <div class="maincontainer">
<div class="framecontainer">
<h1 style="text-align:center;">Training and Placement</h1>

<div class="logoutlogo">
			<a href="logout.jsp">Logouts </a>	 
		</div>

<!--  <h3 style="text-align:left;">Profile</h3>-->
<iframe src="subindex2.jsp" name="iframeindex2"  class="logocontainer" width="850px"
	height="657px">
</iframe>


</div>
<br/>



 	<div class="container">
 	   <div class="profile">
    	<img src="images/profile.png" alt="profilelogo" class="profilelogo">
    	</div>
   <br><br>
	<br>
	
	 <div class="companycontainer">
	 	<div class="company_container">
		    <a href="indexcompany.jsp" target="_self"> Companies</a>
		</div> 
		<div class="imgcompanycontainer">
	    	 <img src="images/company.JPG" alt="companylogo" class="companylogo">
	   	</div>
 	</div>
 	
 	 
 	<br>
 	
	 <div class="facultycontainer">
		<div class="faculty_container">
		 <a href="indexfaculty.JPG" target="_self">	 Faculty   	</a> 
		</div>
		<div class="imgfacultycontainer">
	    	 <img src="images/faculty1.png" alt="facultylogo" class="facultylogo"> 
 	  	</div>
 	</div>
 
 	<br>
 	
 	
	<div class="notificationcontainer">
		 <div class="notification_container">
			   <a href="indexnotification.jsp" target="_self">Notification   	</a> 
		</div>
		<div class="imgnotificationcontainer">
			 <a href="indexnotification.jsp" target="_self">
		   	  	<img src="images/notification.JPG" alt="notificationlogo" class="notificationlogo">
		   	</a> 
 		</div>
	</div>
	
	
	<br>	
 	
	 <div class="favouritescontainer">
		 <div class="favourites_container">
		  <a href="indexfavourites.jsp" target="_self">	 Favourites  	</a>  
		</div> 
		<div class="imgfavouritescontainer">
	     <img src="images/favourites.png" alt="favouriteslogo" class="favouriteslogo"> 
 	   </div>
	</div>
	
		</div>
</div>		

</body>


</html>

