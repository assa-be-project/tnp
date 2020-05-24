<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="studentregistration.css">
<title>Student Registration</title>
<style>
h1{background-color:#00ccff; color:#034f84;}

</style>
</head>
<body>
				  <div class="main">
					<h1 ><center><strong>  Student Registration Form</strong></center></h1>
					<form action="index.jsp">
						 <div class="container">
							<center><table>
							 <tr>
	    							 <td>
	    					 			&nbsp;
	    							 </td>
    							</tr>
    							
    							<tr>
	    							<td>
	    								<strong>Name</strong><span class="star"> *</span>
	    							</td>
	    							<td> 
	    					    		<input type="text" pattern="[a-zA-Z]+" placeholder="Last Name" style="text-transform:uppercase" name="student_last_name" required/>
	    							</td>
	    					
	    							<td>
	    								<input type="text" pattern="[a-zA-Z]+" placeholder="First Name" style="text-transform:uppercase" name="student_first_name" required/>
	    							</td>
	    							<td>
	    								<input type="text" pattern="[a-zA-Z]+" placeholder="Middle Name" style="text-transform:uppercase" name="student_middle_name" required/>
	    							</td>
    							</tr>
    							
    							<tr>
	    							 <td>
	    					 			&nbsp;
	    							 </td>
    						   
    							</tr>
    							
                     			<tr>
	                     			<td>
	                     				<strong>University PRN</strong><span class="star"> *</span>
	                     			</td>
	                     			<td>
	                     				<input type="text" pattern="[a-zA-Z0-9_]+" placeholder="University PRN" title="Enter your University PRN."  name="university_prn" required/>
	                     			</td>
                    			 </tr>
                    			
                 		  		 <tr>
	    					 		<td>
	    					 			&nbsp;
	    					 		</td>
     							</tr>
     							
     							
                    			 <tr>
		                     			<td>
		                     				<strong>Email</strong><span class="star"> *</span>
		                     			</td>
		                     			<td colspan="2">
		                     				<input type="text" size="48" name="student_email" placeholder="abc@xyz.com" title="Enter your email." required/>
		                     			</td>
                   				  </tr>	
                   				  
                   				  
                     			<tr>
	    					 		<td>
	    					 			&nbsp;
	    					 		</td>
    							</tr>
    							
    							
                     			<tr>
	                     			<td>
	                     				<strong>Mobile Number</strong><span class="star"> *</span>
	                     			</td>
	                     			<td>
	        				    		<input type="text" pattern="[1-9]{1}[0-9]{9}" placeholder="1234567890" title="Enter your Mobile number." name="student_mobile_no" maxlength=10 required/>
	                     			</td>
                    			 </tr>
                    			 
                    			 
                    			 <tr>
	    							 <td>
	    					 				&nbsp;
	    					 		</td>
    							</tr>
    				
    				
 	              
    							<tr>
	    							<td>
	 		  		 					<strong>Password</strong><span class="star"> *</span>
	 		  		 					</td>
	 		  		 					<td>
	    								<input type="password" pattern="[a-zA-Z0-9_@#$%^&*()+=]+" placeholder="Enter Password" title="Enter System Password." name="psw" maxlength="7" required>
	    							</td>
    							</tr>
    							
    							
    							 
    					 		 
    				 
    						 <button type="reset" alt="reset" class="reset">Cancel</button>   		
    						 <button type="submit" alt="submit" class="submit">Register</button>   
  
				  						
    							</div>
    							
							
								<%@ page import="java.sql.*"%>
								<%@ page import="javax.sql.*"%>
								<%@ page import = "java.io.*,java.util.*" %>
								
								<%
										String dpsw=request.getParameter("psw"); 
										Class.forName("com.mysql.jdbc.Driver"); 
										java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Training_And_Placement","root","root"); 
										Statement st= con.createStatement(); 
										ResultSet rs=st.executeQuery("select * from System_Password where Id='"+dpsw+"'"); 
										if(rs.next()) 
										{ 
											if(rs.getString(1).equals(dpsw)) 
											{ 
											
											    // New location to be redirected 
												session.putValue("dpsw",dpsw);
											    String site = new String("studentformfilling.jsp");
											    response.setStatus(response.SC_MOVED_TEMPORARILY);
											    response.setHeader("Location", site); 
											
											} 
											else
											{ 
												out.println("<b>Invalid University_PRN</b>"); 
											} 
										} 
								%>

						
  						
  						
  						
  				
  				
		</table>
		</center>
	</form>

</div>
</body>
</html>