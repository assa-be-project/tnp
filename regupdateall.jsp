<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>atozknowledge.com demo Regjsp</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "java.io.*,java.util.*,java.text.DateFormat,java.util.Date ,java.util.*,java.lang.Object,java.text.Format,java.text.DateFormat,java.text.SimpleDateFormat" %>
	
<%
						
//login
							String duniversity_prn=(String)session.getAttribute("name");;
							String dpassword=request.getParameter("password"); 
//personel
							String dbranch=request.getParameter("branch");
							String dlast_name=request.getParameter("last_name");
							String dfirst_name=request.getParameter("first_name");
							String dmiddle_name=request.getParameter("middle_name");
							String demail_id=request.getParameter("email_id");
							String dcollege_prn=request.getParameter("college_prn");
							String dgender=request.getParameter("gender");
							String ddob=request.getParameter("dob");
							String dmobile_no=request.getParameter("mobile_no");
							String dcaste=request.getParameter("caste");
//gardian
							String dparent_email_id=request.getParameter("parent_email_id");
							String dfather_occupation=request.getParameter("father_occupation");
							String dfather_occupation_organization=request.getParameter("father_occupation_organization");
							String dfather_mobile_no=request.getParameter("father_mobile_no");
							String dmother_occupation=request.getParameter("mother_occupation");
							String dmother_occupation_organization=request.getParameter("mother_occupation_organization");
							String dmother_mobile_no=request.getParameter("mother_mobile_no");
							String dpermanent_address=request.getParameter("permanent_address");
							String dstate=request.getParameter("state");
							String ddistrict=request.getParameter("district");
							String dcity=request.getParameter("city");
							String dpincode=request.getParameter("pincode");
//educational
							String d10_marks_obtained=request.getParameter("10_marks_obtained");
							String d10_marks_out_off=request.getParameter("10_marks_out_off");
							String d10_percent=request.getParameter("10_percent");
							String dschool_name=request.getParameter("school_name");
							String d10_board=request.getParameter("10_board");
							String d10_year_of_passing=request.getParameter("10_year_of_passing");
							String d12_marks_obtained=request.getParameter("12_marks_obtained");
							String d12_marks_out_off=request.getParameter("12_marks_out_off");
							String d12_percent=request.getParameter("12_percent");
							String dcollege_name=request.getParameter("college_name");
							String d12_board=request.getParameter("12_board");
							String d12_year_of_passing=request.getParameter("12_year_of_passing");
							String ddiploma_marks_obtained=request.getParameter("diploma_marks_obtained");
							String ddiploma_marks_out_off=request.getParameter("diploma_marks_out_off");
							String ddiploma_percent=request.getParameter("diploma_percent");
							String ddiploma_college_name=request.getParameter("diploma_college_name");
							String ddiploma_board=request.getParameter("diploma_board");
							String ddiploma_year_of_passing=request.getParameter("diploma_year_of_passing");
							String ddiploma_dead_backlogs=request.getParameter("diploma_dead_backlogs");
							String dmhtcet=request.getParameter("mhtcet");
							String daieee=request.getParameter("aieee");
							String dfe1_add_of_credits=request.getParameter("fe1_add_of_credits");
							String dfe1_total_credits_earned=request.getParameter("fe1_total_credits_earned");
							String dfe1_sgpa=request.getParameter("fe1_sgpa");
							String dfe2_add_of_credits=request.getParameter("fe2_add_of_credits");
							String dfe2_total_credits_earned=request.getParameter("fe2_total_credits_earned");
							String dfe2_sgpa=request.getParameter("fe2_sgpa");
							String dse1_add_of_credits=request.getParameter("se1_add_of_credits");
							String dse1_total_credits_earned=request.getParameter("se1_total_credits_earned");
							String dse1_sgpa=request.getParameter("se1_sgpa");
							String dse2_add_of_credits=request.getParameter("se2_add_of_credits");
							String dse2_total_credits_earned=request.getParameter("se2_total_credits_earned");
							String dse2_sgpa=request.getParameter("se2_sgpa");
							String dte1_add_of_credits=request.getParameter("te1_add_of_credits");
							String dte1_total_credits_earned=request.getParameter("te1_total_credits_earned");
							String dte1_sgpa=request.getParameter("te1_sgpa");
							String dte2_add_of_credits=request.getParameter("te2_add_of_credits");
							String dte2_total_credits_earned=request.getParameter("te2_total_credits_earned");
							String dte2_sgpa=request.getParameter("te2_sgpa");
							String dengg_dead_backlogs=request.getParameter("engg_dead_backlogs");
							String dengg_live_backlogs=request.getParameter("engg_live_backlogs");
							String dhandicapped=request.getParameter("handicapped");
							String dinterest=request.getParameter("interest");
							

//extra
							String dachievement_hobbies=request.getParameter("achievement_hobbies");
//con

							
							String dconfirm_password=request.getParameter("confirm_password");
				

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Training_And_Placement",
"root","root"); 
Statement st= con.createStatement();
Statement st1= con.createStatement();
Statement st2= con.createStatement();
Statement st3= con.createStatement();

ResultSet rs; 

int i0=st.executeUpdate("UPDATE Personal_Details set Student_Email_Id='"+demail_id+"' ,College_PRN='"+dcollege_prn+"' ,Branch='"+dbranch+"' ,First_Name='"+dfirst_name+"' ,Middle_Name='"+dmiddle_name+"',Last_Name='"+dlast_name+"',Gender='"+dgender+"',DOB='"+ddob+"' ,Caste='"+dcaste+"',Mobile_Number='"+dmobile_no+"' where University_PRN='"+duniversity_prn+"'"); 
int i1=st1.executeUpdate("UPDATE Guardian_Details set Parent_Email_Id='"+dparent_email_id+"' ,Father_Mobile_Number='"+dfather_mobile_no+"' ,Father_Occupation='"+dfather_occupation+"' ,Father_Occupation_Organization='"+dfather_occupation_organization+"' ,Mother_Mobile_Number='"+dmother_mobile_no+"' ,Mother_Occupation='"+dmother_occupation+"' ,Mother_Occupation_Organization='"+dmother_occupation_organization+"' ,Permanent_Address='"+dpermanent_address+"' ,State='"+dstate+"' ,District='"+ddistrict+"' ,City='"+dcity+"' ,Pincode='"+dpincode+"' where University_PRN='"+duniversity_prn+"'");
int i2=st2.executeUpdate("UPDATE Educational_Details set SSC_Marks_Obtained='"+d10_marks_obtained+"' ,SSc_Marks_Outof='"+d10_marks_out_off+"' ,SSC_Percentage='"+d10_percent+"' ,SSC_School_Name='"+dschool_name+"'  ,SSC_Board='"+d10_board+"' ,SSC_Year_Of_Passing='"+d10_year_of_passing+"' ,HSC_Marks_Obtained='"+d12_marks_obtained+"' ,HSC_Marks_Outof='"+d12_marks_out_off+"' , HSC_Percentage='"+d12_percent+"' ,HSC_School_Name='"+dcollege_name+"' ,HSC_Board='"+d12_board+"' , HSC_Year_Of_Passing='"+d12_year_of_passing+"' ,FE1_Addition_Of_Credits='"+dfe1_add_of_credits+"' ,FE1_Total_Of_Credits_Earned='"+dfe1_total_credits_earned+"' ,FE1_SGPA='"+dfe1_sgpa+"' , FE2_Addition_Of_Credits='"+dfe2_add_of_credits+"' , FE2_Total_Of_Credits_Earned='"+dfe2_total_credits_earned+"' ,FE2_SGPA='"+dfe2_sgpa+"' ,SE1_Addition_Of_Credits='"+dse1_add_of_credits+"' ,SE1_Total_Of_Credits_Earned='"+dse1_total_credits_earned+"' ,SE1_SGPA='"+dse1_sgpa+"' , SE2_Addition_Of_Credits='"+dse2_add_of_credits+"' , SE2_Total_Of_Credits_Earned='"+dse2_total_credits_earned+"' , SE2_SGPA='"+dse2_sgpa+"' ,TE1_Addition_Of_Credits='"+dte1_add_of_credits+"' ,TE1_Total_Of_Credits_Earned= '"+dte1_total_credits_earned+"',TE1_SGPA='"+dte1_sgpa+"' , TE2_Addition_Of_Credits='"+dte2_add_of_credits+"' ,TE2_Total_Of_Credits_Earned='"+dte2_total_credits_earned+"' ,TE2_SGPA='"+dte2_sgpa+"' ,No_Of_Dead_Backlogs='"+dengg_dead_backlogs+"' ,Physically_Handicapped='"+dhandicapped+"' ,Intrested_In='"+dinterest+"' ,No_Of_Live_Backlogs='"+dengg_live_backlogs+"' ,Diploma_Marks_Obtained='"+ddiploma_marks_obtained+"' ,Diploma_Marks_Outof='"+ddiploma_marks_out_off+"' ,Diploma_Percentage='"+ddiploma_percent+"' ,Diploma_College_Name='"+ddiploma_college_name+"' ,Diploma_Year_Of_Passing='"+ddiploma_year_of_passing+"' ,Diploma_Board='"+ddiploma_board+"' ,Diploma_No_of_Dead_Backlogs='"+ddiploma_dead_backlogs+"', MHTCET_Score='"+dmhtcet+"' ,AIEEE_JEE_Score='"+daieee+"' where University_PRN='"+duniversity_prn+"'"); 

int i3=st3.executeUpdate("UPDATE Extra_Activity set Hobbies_Activities='"+dachievement_hobbies+"' where University_PRN='"+duniversity_prn+"'"); 


if(i0==1 && i1==1 && i2==1 && i3==1 )
	response.sendRedirect("index.jsp");

out.println("Registered"); 

%>
<a href ="Login.html">Login</a><br/><br/>
<a href="index.html">Home</a>
</body>
</html>