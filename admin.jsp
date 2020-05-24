<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="admin.css">
<style>
h1{background-color:#00ccff;color:#034f84}
</style>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import = "java.io.*,java.util.*" %>
	
<%
			//if (session.getAttribute("duname").equals("") && session.getAttribute("dpsw").equals("")) {
			//if (request.getSession(false) == null) {
            	//response.sendRedirect("index.jsp");
           // }
%>
</head>
<body>
 <div class="maincontainer">
<div class="framecontainer">
<h1 style="text-align:center;">Training and Placement</h1>
<div class="dropdown">
<div class="year">

<div class ="drop">
    	<table style="with: 50%" >

                 <tr>  				
    					<td>
    						<select name="year" style="max-width:100%;" required>
    							<option value="search">Year</option>
    					 		<option value="te">TE</option>
    					 		<option value="be">BE</option>
    					 	</select>
    	     		   </td>
    			</tr>
    		
    				
      </table>
   
   </div>
</div>
<div class="branch">

<div class ="drop">
    	<table style="with: 50%" >

                 <tr>  				
    					<td>
    						<select name="branch" style="max-width:100PX;" required>
    							<option value="search">Branch</option>
    					 		<option value="COMPUTER">COMPUTER</option>
    					 		<option value="ENTC">ENTC</option>
    					 		<option value="MECHANICAL">MECHANICAL</option>
    					 		<option value="MECHANICAL">COMPUTER AND MECHANICAL</option>
    					 		<option value="MECHANICAL">ENTC AND MECHANICAL</option>
    					 		<option value="MECHANICAL">COMPUTER AND ENTC</option>
    					 		<option value="MECHANICAL">ALL</option>
    					 		
    					 	</select>
    	     		   </td>
    			</tr>
    		
    				
      </table>
   
   </div>
</div>
<div class="search"> 
<div class ="drop">
    	<table style="with: 50%" >

                 <tr>  				
    					<td>
    						<select name="Search" style="max-width:100%;"  required>
    							<option value="Criteria">Criteria</option>
    					 		<option value="COMPUTER">Above 60%</option>
    					 		<option value="ENTC">Only Diploma</option>
    					 		<option value="MECHANICAL">Placed</option>
    					 		<option value="MECHANICAL">Not Placed</option>
    					  		<option value="MECHANICAL">Backlogs</option>
    					 		<option value="MECHANICAL">No Backlogs</option>
    					 		
    					 	</select>
    	     		   </td>
    			</tr>
    		
    				
      </table>
   
   </div>

 <button type="submit" alt="submit" class="submit">Search</button>   
</div>
</div>
<div class="logoutlogo">
			<a href="logout.jsp">Logout</a>	 
		</div>

<!--  <h3 style="text-align:left;">Profile</h3>-->
<iframe src="adminframe.jsp" name="iframeadmin"  class="logocontainer" width="865px"
	height="650px" >
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
 	
 	<!--  
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
 	-->
	 <div class="favouritescontainer">
		 <div class="favourites_container">
		  <a href="indexfavourites.jsp" target="_self">	 Favourites  	</a>  
		</div> 
		<div class="imgfavouritescontainer">
	     <img src="images/favourites.png" alt="favouriteslogo" class="favouriteslogo"> 
 	   </div>
	</div>
	
	<br>	
 	
	 <div class="inboxcontainer">
		 <div class="inbox_container">
		  <a href="indexinbox.jsp" target="_self">	 Inbox  	</a>  
		</div> 
		<div class="imginboxcontainer">
	     <img src="images/inbox.png" alt="inboxlogo" class="inboxlogo"> 
 	   </div>
	</div>
	
	<br>	
 	<!--  
	 <div class="composecontainer">
		 <div class="compose_container">
		  <a href="indexcompose.jsp" target="_self">	 Compose 	</a>  
		</div> 
		<div class="imgcomposecontainer">
	     <img src="images/compose1.png" alt="composelogo" class="composelogo"> 
 	   </div>
	</div>
	
	<br>	
 	-->
	 <div class="reportcontainer">
		 <div class="report_container">
		  <a href="indexreport.jsp" target="_self">	 Report  	</a>  
		</div> 
		<div class="imgreportcontainer">
	     <img src="images/report.jpg" alt="reportlogo" class="reportlogo"> 
 	   </div>
	</div>
	<br>	
 	<!--  	
 	 <div class="trashcontainer">
		 <div class="trash_container">
		  <a href="indextrash.jsp" target="_self">	 Trash 	</a>  
		</div> 
		<div class="imgtrashcontainer">
	     <img src="images/trash.JPG" alt="trashlogo" class="trashlogo"> 
 	   </div>
	</div>
	
	-->
	
	
	
	
		</div>
</div>		
</body>
</html>