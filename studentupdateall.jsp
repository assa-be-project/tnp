    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
   <style> 
   .personal_detail{
  border-radius:25px;
  border:2px solid;
  background-color:white;
  box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19)
  
  
  }
  .guardian_detail{
  border-radius:25px;
  border:2px solid;
  background-color:white;
  box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19)
    
  
  }
  
  .educational_detail{
  border-radius:25px;
  border:2px solid;
  background-color:white;
  box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19)
  
  }
  
  
  button.save { 
    background-color: #4CAF50;
    color: white;
    width: 100px;
    height:32px;
    top:3030px;
    position:absolute;
    left:1200px;
} 
button.reset {
    background-color: #4CAF50;
    color: white;
    top:3030px;
    width: 100px;
    height:32px;
    position:absolute;
    left:1000px;
} 

.container{
	width:1000px;
	height:3070px;

}
 
 .achievement_hobbies{
  border-radius:25px;
  border:2px solid;
  background-color:white;
  box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19)
  
 }

.star{
      color:red;
}


  </style>  
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    </head>
    <body><!--  <option value=></option>-->
    
    <%
			//if (session.getAttribute("dpsw").equals("")) {
			//if (request.getSession(false) == null) {
            	//response.sendRedirect("systempassword.jsp");
            //}
	%>
	<form action="regupdateall.jsp">
	<div class="container">
	<div>
   		
    			<div class="personal_detail">
    				<table style="with: 50%">
    			
    			<!-- Start of Personal Details -->
    			
					<tr>
    			    	<td>
    			    		<h2>Personal Details</h2>
    			    		 
    			    	</td>
					</tr>
    				
    				<tr>
    					 <td>
    					 	&nbsp;
    					 </td>
    				</tr>
    		
    				<tr>
    					<td>
    						Name<span class="star"> *</span>
    					</td>
    					<td> 
    		
<%@ page import="java.sql.*" %>
<%
Connection con= null;
PreparedStatement ps1 = null;
ResultSet rs1 = null;


PreparedStatement ps2 = null;
ResultSet rs2 = null;

PreparedStatement ps3 = null;
ResultSet rs3 = null;


PreparedStatement ps4 = null;
ResultSet rs4 = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/Training_And_Placement";
String user = "root";
String password = "root";
String dUniversity_PRN=(String)session.getAttribute("name");

String sql1 = "select * from Personal_Details where University_PRN='"+dUniversity_PRN+"'";

String sql2 = "select * from Guardian_Details where University_PRN='"+dUniversity_PRN+"'";

String sql3 = "select * from Educational_Details where University_PRN='"+dUniversity_PRN+"'";

String sql4 = "select * from Extra_Activity where University_PRN='"+dUniversity_PRN+"'";

try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
ps1 = con.prepareStatement(sql1);
rs1 = ps1.executeQuery(); 

ps2 = con.prepareStatement(sql2);
rs2 = ps2.executeQuery(); 

ps3 = con.prepareStatement(sql3);
rs3 = ps3.executeQuery(); 

ps4 = con.prepareStatement(sql4);
rs4 = ps4.executeQuery(); 


while(rs1.next() && rs2.next()&& rs3.next() && rs4.next())
{
//personal
	
					String dLast_Name = rs1.getString("Last_Name");
					String dFirst_Name = rs1.getString("First_Name");
					String dMiddle_Name = rs1.getString("Middle_Name");
					String dStudent_Email_Id = rs1.getString("Student_Email_Id");
					String dCollege_PRN = rs1.getString("College_PRN");
					String dGender = rs1.getString("Gender");
					String dDOB = rs1.getString("DOB");
					String dMobile_Number = rs1.getString("Mobile_Number");
					String dCaste = rs1.getString("Caste");

//gradian
					String dParent_Email_Id = rs2.getString("Parent_Email_Id");
					String dFather_Occupation = rs2.getString("Father_Occupation");
					String dFather_Occupation_Organization = rs2.getString("Father_Occupation_Organization");
					String dFather_Mobile_Number = rs2.getString("Father_Mobile_Number");
					String dMother_Occupation = rs2.getString("Mother_Occupation");
					String dMother_Occupation_Organization = rs2.getString("Mother_Occupation_Organization");
					String dMother_Mobile_Number = rs2.getString("Mother_Mobile_Number");
					String dPermanent_Address = rs2.getString("Permanent_Address");
					String dState = rs2.getString("State");
					String dDistrict = rs2.getString("District");
					String dCity = rs2.getString("City");
					String dPincode = rs2.getString("Pincode");
//educational
					String dSSC_Marks_Obtained = rs3.getString("SSC_Marks_Obtained");
					String dSSc_Marks_Outof = rs3.getString("SSc_Marks_Outof");	
					String dSSC_Percentage = rs3.getString("SSC_Percentage");
					String dSSC_School_Name = rs3.getString("SSC_School_Name");	
					String dSSC_Board = rs3.getString("SSC_Board");
					
					String dSSC_Year_Of_Passing = rs3.getString("SSC_Year_Of_Passing");	
					String ddSSC_Year_Of_Passing=dSSC_Year_Of_Passing.substring(0,4);
					
					String dHSC_Marks_Obtained = rs3.getString("HSC_Marks_Obtained");
					String dHSC_Marks_Outof = rs3.getString("HSC_Marks_Outof");	
					String dHSC_Percentage = rs3.getString("HSC_Percentage");
					String dHSC_School_Name = rs3.getString("HSC_School_Name");	
					String dHSC_Board = rs3.getString("HSC_Board");
					
					String dHSC_Year_Of_Passing = rs3.getString("HSC_Year_Of_Passing");	
					String ddHSC_Year_Of_Passing=dHSC_Year_Of_Passing.substring(0,4);
					
					String dDiploma_Marks_Obtained = rs3.getString("Diploma_Marks_Obtained");
					String dDiploma_Marks_Outof = rs3.getString("Diploma_Marks_Outof");	
					String dDiploma_Percentage = rs3.getString("Diploma_Percentage");
					String dDiploma_College_Name = rs3.getString("Diploma_College_Name");	
					String dDiploma_Board = rs3.getString("Diploma_Board");
					
					String dDiploma_Year_Of_Passing = rs3.getString("Diploma_Year_Of_Passing");	
					String ddDiploma_Year_Of_Passing=dDiploma_Year_Of_Passing.substring(0,4);
					
					String dDiploma_No_of_Dead_Backlogs = rs3.getString("Diploma_No_of_Dead_Backlogs");
					String dMHTCET_Score = rs3.getString("MHTCET_Score");	
					String dAIEEE_JEE_Score = rs3.getString("AIEEE_JEE_Score");
					String dFE1_Addition_Of_Credits = rs3.getString("FE1_Addition_Of_Credits");	
					String dFE1_Total_Of_Credits_Earned = rs3.getString("FE1_Total_Of_Credits_Earned");
					String dFE1_SGPA = rs3.getString("FE1_SGPA");	
					String dFE2_Addition_Of_Credits = rs3.getString("FE2_Addition_Of_Credits");
					String dFE2_Total_Of_Credits_Earned = rs3.getString("FE2_Total_Of_Credits_Earned");	
					String dFE2_SGPA = rs3.getString("FE2_SGPA");
					String dSE1_Addition_Of_Credits = rs3.getString("SE1_Addition_Of_Credits");	
					String dSE1_Total_Of_Credits_Earned = rs3.getString("SE1_Total_Of_Credits_Earned");
					String dSE1_SGPA = rs3.getString("SE1_SGPA");	
					String dSE2_Addition_Of_Credits = rs3.getString("SE2_Addition_Of_Credits");
					String dSE2_Total_Of_Credits_Earned = rs3.getString("SE2_Total_Of_Credits_Earned");	
					String dSE2_SGPA = rs3.getString("SE2_SGPA");
					String dTE1_Addition_Of_Credits = rs3.getString("TE1_Addition_Of_Credits");	
					String dTE1_Total_Of_Credits_Earned = rs3.getString("TE1_Total_Of_Credits_Earned");
					String dTE1_SGPA = rs3.getString("TE1_SGPA");	
					String dTE2_Addition_Of_Credits = rs3.getString("TE2_Addition_Of_Credits");
					String dTE2_Total_Of_Credits_Earned = rs3.getString("TE2_Total_Of_Credits_Earned");
					String dTE2_SGPA = rs3.getString("TE2_SGPA");	
					String dNo_Of_Dead_Backlogs = rs3.getString("No_Of_Dead_Backlogs");
					String dNo_Of_Live_Backlogs = rs3.getString("No_Of_Live_Backlogs");
					String dPhysically_Handicapped = rs3.getString("Physically_Handicapped");	
					String dIntrested_In = rs3.getString("Intrested_In");

//extra

					String dHobbies_Activities = rs4.getString("Hobbies_Activities");
%>
    					
    						<input type="text" pattern="[a-zA-Z]+" placeholder="Last Name" name="last_name" style="text-transform:uppercase" value=<%=dLast_Name%> required/>
    					</td>        
    					
    					<td>
    						<input type="text" pattern="[a-zA-Z]+" placeholder="First Name" name="first_name" style="text-transform:uppercase" value=<%=dFirst_Name%> required/>
    					</td>
    					<td>
    						<input type="text" pattern="[a-zA-Z]+" placeholder="Middle Name" name="middle_name" style="text-transform:uppercase" value=<%=dMiddle_Name%> required/>
    					</td>
    						
    				</tr>
    				
    				<tr>
    					 <td>
    					 	&nbsp;
    					 </td>
    				</tr>
    		
    	    				
                    <tr>    				
    					<td>
    						Email Id<span class="star"> *</span>
    					</td>
    					<td>
    						<input type="email" title="Enter your Email Id ." name="email_id" value=<%=dStudent_Email_Id%> required/>
    					</td>
    				</tr>
    				
    				<tr>
    					 <td>
    					 	&nbsp;
    					 </td>
    				 </tr>
    		
    				  
    				
    				<tr>
    					<td>
    						University PRN<span class="star"> *</span>
    					</td>
    					<td>
    						<input type="text" pattern="[a-zA-Z0-9]+" title="Enter University PRN." name="university_prn" value="<%=dUniversity_PRN%>" required  disabled/>
    					</td>
    					
    					<td>
    						<center>College PRN<span class="star"> *</span></center>
    					</td>
    					<td>
    						<input type="text" pattern="[a-zA-Z0-9]+" title="Enter College PRN." name="college_prn" value=<%=dCollege_PRN%> required />
    					</td>
    				</tr>
    				
    				<tr>
    					 <td>
    					 	&nbsp;
    					 </td>
    				</tr>
    				 
    			
    				
    				<tr>
    					<td>
    						Gender<span class="star"> *</span>
    					</td>
    				    <td>
    			    		<input type="radio" name="gender" required>Male
    						<br>
    						<input type="radio" name="gender" >Female
						</td>  
    				
    					<td>
    						<center>DOB<span class="star"> *</span></center>
    					</td>
    					<td>
    						<input type="date" title="Enter your Date of Birth." name="dob" placeholder="YYYY/MM/DD" value="<%=dDOB%>" maxlength=10 required/>
    					</td>
    				</tr>
    				
    				<tr>
    					 <td>
    					 	&nbsp;
    					 </td>
    				 </tr>
    		

    				
    				<tr> 
    					<td>Mobile No.<span class="star"> *</span></td>
    					    <td>
    					    	<input type="text" pattern="[1-9]{1}[0-9]{9}" title="Enter your Mobile number." name="mobile_no" value=<%=dMobile_Number%>  maxlength=10 required/>
    					    </td>
    					<td>
    						<center>Caste<span class="star"> *</span></center>
    					</td>
    					<td>
    						<select name="caste" value=<%=dCaste%> required>
	    					<option value="open">OPEN</option>
	    					<option value="obc">OBC</option>
	    					<option value="sc">SC</option>
	    			    	<option value="st">ST</option>
	    					<option value="nt1">NT-1</option>			 
	        				<option value="nt2">NT-2</option>
	    					<option value="nt3">NT-3</option>
	    					<option value="ntb">NT-B</option>
	    					<option value="ntc">NT-c</option>
	        	            <option value="dt/vj">DT/VJ</option>
	    					<option value="sbc">SBC</option>
	    					<option value="tfws">TFWS</option>
	    					<option value="others">OTHERS</option>
	    					</select>
    					</td>
    				</tr>
    				
    				
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				
    				 
    				
    				</table>
    		</div>	
    				<!-- End of Personal Details -->
    				
    			&nbsp;
    			&nbsp;
    				
    				<!-- Start Guardian Details -->
    				
    	
						
    		<div class="guardian_detail"> 
    		
    			<table style="with: 50%" >
    		    	<tr>
    				    <td> <h2>Guardian Details</h2> </td>
    				</tr>
    				
    				<tr>
    					<td>Parent Email Id<span class="star"> *</span></td>
    					<td><input type="email" title="Enter your Parent's Email Id ." name="parent_email_id" value=<%=dParent_Email_Id%>  required/></td>
    				</tr>
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				 
    				<tr>
    					<td>Father's Occupation</td>  
    					<td><input type="text" title="Enter Father's occupation." name="father_occupation" value="<%=dFather_Occupation%>" /></td>
    			  
    					<td><center>Occupation Organization</center></td>
    					<td><input type="text" title="Enter Father's occupation organization." name="father_occupation_organization" value="<%=dFather_Occupation_Organization%>" /></td>
    			   </tr>
    			  
    			  <tr>
    			   <td>&nbsp;</td>
    			   </tr>
    			   <tr>
    					<td>Father's Mobile no.<span class="star"> *</span></td>
    					<td><input type="text" pattern="[1-9]{1}[0-9]{9}" title="Enter Father's Mobile number." maxlength="10" name="father_mobile_no" value=<%=dFather_Mobile_Number%> /></td>
    				</tr>
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				<tr>
    					<td>Mother's Occupation</td>
    				  
    					<td><input type="text" title="Enter Mother's occupation."  name="mother_occupation" value="<%=dMother_Occupation%>"/></td>
    				
    					<td><center>Occupation Organization</center></td>
    					<td><input type="text" title="Enter Mother's occupation organization." name="mother_occupation_organization" value="<%=dMother_Occupation_Organization%>" /></td>
    				   			 				
    				</tr>
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				 
    				<tr>
    					<td>Mother's Mobile no.</td>
    					<td><input type="text" pattern="[1-9]{1}[0-9]{9}" maxlength="10" title="Enter Mother's Mobile number." name="mother_mobile_no" value=<%=dMother_Mobile_Number%> /></td>
    				</tr>    					
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				<tr>
    					<td>Permanent Address<span class="star"> *</span></td>
    					<td>
    						<textarea rows="4" cols="30" title="Enter Permanent address." name="permanent_address"  required ><%=dPermanent_Address%></textarea>
    					</td>
    				</tr>
    				
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				<tr>
    				
    					<td>State<span class="star"> *</span></td>
    					<td><input type="text" pattern="[a-zA-z\s]+" title="Enter State." name="state" value="<%=dState%>" required /></td>
    				
    					<td><center>District<span class="star"> *</span></center></td>
    					<td><input type="text" pattern="[a-zA-z\s]+" title="Enter District."name="district" value="<%=dDistrict%>" required/></td>
    				</tr>
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				<tr>
    					<td>City<span class="star"> *</span></td>
    					<td>
    						<input type="text" pattern="[a-zA-z\s]+" title="Enter City."name="city" value="<%=dCity%>" required/>
    					</td>
    					
    					<td><center>Pincode<span class="star"> *</span></center></td>
    					<td>
    						<input type="text" pattern="[0-9]{6}" title="Enter Pincode." name="pincode" value=<%=dPincode%> maxlength="6" required/>
    					</td>
    				</tr>
    				
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				</table>
    				
    				
    			</div>	
    			
    			&nbsp;
    			&nbsp;
    			
    				    	<!--End of Gaurdian Details -->			
    				    	
    				    	
    				    	
    				
    				
           				
    	<!-- Educational Details -->
    				
    				    	
    		<div class="educational_detail">	
    			
    			<table style="with: 50%">
    			  <tr>
    				   <td> <h2>Education Details</h2></td>
    			  </tr>
    			   <tr>
    				     <td><h3>10<sup>th</sup> Details</h3></td>
    			   </tr>
    				<tr>
    					<td>Marks Obtained<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" title="Enter marks obtained in standard 10." name="10_marks_obtained" value=<%=dSSC_Marks_Obtained%> required/></td>
    
    					<td>Marks Out Off<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" title="Enter marks outof in standard 10." name="10_marks_out_off" value=<%=dSSc_Marks_Outof%> required/></td>
    			
    					<td>%<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9.]+" name="10_percent" maxlength=5 value=<%=dSSC_Percentage%> required/></td>
    				</tr>
    				<tr>
    					<td>School Name<span class="star"> *</span></td>
    					<td><input type="text" title="Enter school name." name="school_name" value=<%=dSSC_School_Name%> required/></td>
    				</tr>
    					<tr>
    					<td>Board<span class="star"> *</span></td>
    					<td>
    					<select name="10_board" value=<%=dSSC_Board%> required>
    					<option value="10board">SELECT</option>
    					 <option value="cbse">CBSE</option>
    					 <option value="icse">ICSE</option>
    					 <option value="ssc">SSC</option>
    					 <option value="others">OTHERS</option>
    					</select>
    					</td>
    				
    					<td>Year Of Passing<span class="star"> *</span></td>
    					<td>
    						<input type="text" pattern="[0-9]{4}" title="Enter year of passing." name="10_year_of_passing" value='<%=ddSSC_Year_Of_Passing%>' maxlength=4 required/>
    					</td>
    				</tr>
    	
    				
                   <tr>
    				     <td><h3>12<sup>th</sup> Details</h3>
    				     	<h6>(Diploma students can skip this.)</h6>
    				     </td>
    			   </tr>    			
    			   	<tr>
    					<td>Marks Obtained<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" title="Enter marks obtained in standard 12."name="12_marks_obtained" value=<%=dHSC_Marks_Obtained%> /></td>
    				   			 				
    			
    					<td>Marks Out Off<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" title="Enter marks outof in standard 12." name="12_marks_out_off" value=<%=dHSC_Marks_Outof%> /></td>
    				
    					<td>%<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9.]+" name="12_percent" min="0" max="100" value=<%=dHSC_Percentage%> maxlength=5 /></td>
    				</tr>
    				<tr>
    					<td>School/College Name<span class="star"> *</span></td>
    					<td><input type="text" title="Enter school/college name." name="college_name" value="<%=dHSC_School_Name%>" /></td>
    				</tr>
    				<tr>
    					<td>Board</td>
    					<td>
    					<select name="12_board" value=<%=dHSC_Board%>>
    					<option value="12name">SELECT</option>
    					 <option value="cbse">CBSE</option>
    					 <option value="icse">ICSE</option>
    					 <option value="hsc">HSC</option>
    					 <option value="others">OTHERS</option>
    					</select>
    					</td>
    				
    					<td>Year Of Passing</td>
    					<td><input type="text" pattern="[0-9]{4}" title="Enter year of passing." value=<%=ddHSC_Year_Of_Passing%> maxlength=4 name="12_year_of_passing" /></td>
    				</tr>
    				

    				<tr>
    				     <td><h3>Diploma Details</h3></td>
    			   </tr>
    				<tr>
    					<td>Marks Obtained</td>
    					<td><input type="text" pattern="[0-9]+" title="Enter marks obtained in diploma."name="diploma_marks_obtained" value=<%=dDiploma_Marks_Obtained%> /></td>
    				
    					<td>Marks Out Off</td>
    					<td><input type="text"  pattern="[0-9]+" title="Enter marks outof in diploma."  name="diploma_marks_out_off" value=<%=dDiploma_Marks_Outof%> /></td>
    				
     					<td>%</td>
    					<td><input type="text" pattern="[0-9.]+" title="Enter percentage in diploma."  name="diploma_percent" value=<%=dDiploma_Percentage%> maxlength=5 /></td>
    				</tr>
    				<tr>
    					<td>College Name</td>
    					<td><input type="text" title="Enter college name." name="diploma_college_name" value="<%=dDiploma_College_Name%>" /></td>
    				</tr>
    					<tr>
    					<td>Board</td>
    					<td>
    					<select name="diploma_board" value=<%=dDiploma_Board%>>
    					<option value="diplomaname">SELECT</option>
    					 <option value="autonomous">Autonomous</option>
    					 <option value="msbte">MS-BTE</option>
    					 <option value="na">NA</option>
    					</select>
    					</td>
    				
    				
    					<td>Year Of Passing</td>
    					<td><input type="text"  pattern="[0-9]{4}" title="Enter year of passing." name="diploma_year_of_passing" value=<%=ddDiploma_Year_Of_Passing%> maxlength=4/></td>
    				</tr>
    				<tr>
    					<td>Dead Backlogs</td>
    					<td><input type="text" pattern="[0-9]+" name="diploma_dead_backlogs" value=<%=dDiploma_No_of_Dead_Backlogs%> title="Number of subjects cleared in more than ONE attempt." /></td>  				   			 				
    				</tr>
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				
    				<tr>
    					<td>MHT-CET Score</td>
    					<td><input type="text" pattern="[0-9]+" name="mhtcet" value=<%=dMHTCET_Score%> maxlength=3 /></td>
    				    					
    					<td>AIEEE/JEE Score</td>
    					<td><input type="text" pattern="[0-9]+" name="aieee" value=<%=dAIEEE_JEE_Score%> /></td>
    				</tr>
    				
    					
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				<tr>
    					<td><h3>Engineering Details:</h3></td>
    				</tr>
    				
    				<tr>
    					<td><b>FE SEM 1</b></td>
    				</tr>
    				
    				<tr>
    					<td>Addition of Credits<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+"  name="fe1_add_of_credits" value=<%=dFE1_Addition_Of_Credits%> title="Enter addition of credit points in each subject."/></td>
    				</tr>
    				<tr>
    					<td>Total Credits Earned<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+"  name="fe1_total_credits_earned" value=<%=dFE1_Total_Of_Credits_Earned%> title="Enter total number of credits earned in this sem 1." /></td>
    				
    					<td><center>SGPA<span class="star"> *</span></center></td>
    					<td><input type="text" pattern="[0-9.]+" name="fe1_sgpa" value=<%=dFE1_SGPA%> title="Enter FE sem 1 SGPA" maxlength="5"/></td>
    				</tr>
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				<tr>
    					<td><b>FE SEM 2</b></td>
    				</tr>
    				<tr>
    					<td>Addition of Credits<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+"  name="fe2_add_of_credits" value=<%=dFE2_Addition_Of_Credits%> title="Enter addition of credit points in each subject." /></td>
    				</tr>
    				<tr>
    					<td>Total Credits Earned<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+"  name="fe2_total_credits_earned" value=<%=dFE2_Total_Of_Credits_Earned%> title="Enter total number of credits earned in sem 2."/></td>
    				
    					<td><center>SGPA<span class="star"> *</span></center></td>
    					<td><input type="text" pattern="[0-9.]+" name="fe2_sgpa" value=<%=dFE2_SGPA%> title="Enter FE sem 2 SGPA"/></td>
    				</tr>
    				    <tr>
    					 <td>&nbsp;</td>
    				</tr>
    								
    				<tr>
    					<td><b>SE SEM 1</b></td>
    				</tr>
    				
    				<tr>
    					<td>Addition of Credits<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" name="se1_add_of_credits" value=<%=dSE1_Addition_Of_Credits%> title="Enter addition of credit points  in each subject." required/></td>
    				</tr>

    				<tr>
    					<td>Total Credits Earned<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" name="se1_total_credits_earned" value=<%=dSE1_Total_Of_Credits_Earned%> title="Enter total number of credits earned in this sem 3." required/></td>
    				
    					<td><center>SGPA<span class="star"> *</span></center></td>
    					<td><input type="text" pattern="[0-9.]+" name="se1_sgpa" value=<%=dSE1_SGPA%> title="Enter SE sem 1 SGPA" maxlength="5" required/></td>
    				</tr>
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				<tr>
    					<td><b>SE SEM 2</b></td>
    				</tr>
    				
    				<tr>
    					<td>Addition of Credits<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" name="se2_add_of_credits" value=<%=dSE2_Addition_Of_Credits%> title="Enter addition of credit points  in each subject." required/></td>
    				</tr>
    				<tr>
    					<td>Total Credits Earned<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" name="se2_total_credits_earned" value=<%=dSE2_Total_Of_Credits_Earned%> title="Enter total number of credits earned in this sem 4." required/></td>
    				
    					<td><center>SGPA<span class="star"> *</span></center></td>
    					<td><input type="text" pattern="[0-9.]+" name="se2_sgpa" value=<%=dSE2_SGPA%> title="Enter SE sem 2 SGPA" maxlength="5" required/></td>
    				</tr>
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
       				<tr>
    					<td><b>TE SEM 1</b></td>
    				</tr>
    				
    				<tr>
    					<td>Addition of Credits<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" name="te1_add_of_credits" value=<%=dTE1_Addition_Of_Credits%> title="Enter addition of credit points in each subject." required/></td>
    				</tr>
    				<tr>
    					<td>Total Credits Earned<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" name="te1_total_credits_earned" value=<%=dTE1_Total_Of_Credits_Earned%> title="Enter total number of credits earned in this sem 5." required/></td>
    					<td><center>SGPA<span class="star"> *</span></center></td>
    					<td><input type="text" pattern="[0-9.]+" name="te1_sgpa" value=<%=dTE1_SGPA%> title="Enter TE sem 1  SGPA" maxlength="7" required /></td>
    				</tr>
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				<tr>
    					<td><b>TE SEM 2</b></td>
    				</tr>
    				
    				<tr>
    					<td>Addition of Credits<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" name="te2_add_of_credits" value=<%=dTE2_Addition_Of_Credits%> title="Enter addition of credit points in each subject." required/></td>
    				</tr>
    				<tr>

    					<td>Total Credits Earned<span class="star"> *</span></td>
    					<td><input type="text" pattern="[0-9]+" name="te2_total_credits_earned" value=<%=dTE2_Total_Of_Credits_Earned%> title="Enter total number of credits earned in this sem 6." required/></td>
    				
    					<td><center>SGPA<span class="star"> *</span></center></td>
    					<td><input type="text" pattern="[0-9.]+" name="te2_sgpa" value=<%=dTE2_SGPA%> title="Enter TE sem 2 SGPA" maxlength="7" required/></td>
    				</tr>
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				<tr>
    					<td>Dead Backlogs<span class="star"> *</span></td>
    					<td><input type="number" name="engg_dead_backlogs" min="0" value=<%=dNo_Of_Dead_Backlogs%> title="Enter number of subjects cleared in more than ONE attempt." required/></td>
    		
    					<td><center>Live Backlogs<span class="star"> *</span></center></td>
    					<td><input type="number" name="engg_live_backlogs" min="0" value=<%=dNo_Of_Live_Backlogs%> title="Enter number of subjects not cleared yet." required/></td>
    				</tr>
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
    				
    				
    				<tr>
    					<td>
    					Physically Handicapped <span class="star"> *</span>  <br>					
    					<input type="radio" name="handicapped" value="no" checked required>No
    					<br>
    					<input type="radio" name="handicapped" value="yes">Yes
    					</td>
    				</tr>
    				
    				<tr>

    					 <td>&nbsp;</td>
    				</tr>
    				
    				
    					<tr>
    					<td>
    					Interested In: <span class="star"> *</span>  <br>				
    					<input type="radio" name="interest" value="placement"  checked required>Placement
    					<br>
    					<input type="radio" name="interest" value="higher_studies">Higher Studies</td>  		
    				</tr>
    				
    				<tr>
    					 <td>&nbsp;</td>
    				</tr>
       
                	</table>
				</div>
    					
    			
    			<!-- End of Educational Details -->
    			
     					 &nbsp;
    					 &nbsp;
    					 
    		
    		<div class="achievement_hobbies">	
    			
    			<table style="with: 50%">
    			 
  					 <tr>
    				   <td> <h2>Achievements And Hobbies</h2></td>
    				 </tr>
 					<tr>
    					<td>Achievements and Hobbies</td>
    					<td>
    						<textarea rows="4" cols="30" title="Enter Achievements,Extra Activities and Hobbies." name="achievement_hobbies" ><%=dHobbies_Activities%></textarea>
    					</td>
    					</tr> 
 						
 						
						<tr>
 			       			<td>&nbsp;</td>
 			       		</tr>       					 
 </table>
 </div>
    		
     					 &nbsp;
    					 &nbsp;
    					 		 
    					 
     <button type="reset" alt="reset" class="reset">Reset</button>   
    				
     <button type="save" alt="save" class="save">Save</button>   
<% 
}
}
catch(SQLException sqe)
{
out.println("home"+sqe);
}
%> 
  
  						&nbsp;
  						&nbsp;
 </div>
 </div>
   </form>
   
      
   </body>
   </html>
