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
							String duniversity_prn=request.getParameter("university_prn");
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
Statement st4= con.createStatement();
ResultSet rs; 
int i0=st.executeUpdate("insert into Login_Page(University_PRN,Password)  values ('"+duniversity_prn+"','"+dpassword+"')"); 
int i1=st.executeUpdate("insert into Personal_Details( Student_Email_Id, University_PRN  ,College_PRN  ,Branch  , First_Name   ,Middle_Name  ,Last_Name ,Gender  ,DOB,Caste ,Mobile_Number ) values ('"+demail_id+"','"+duniversity_prn+"','"+dcollege_prn+"','"+dbranch+"','"+dfirst_name+"','"+dmiddle_name+"','"+dlast_name+"','"+dgender+"','"+ddob+"','"+dcaste+"','"+dmobile_no+"')"); 

int i2=st2.executeUpdate("insert into Guardian_Details(University_PRN , Parent_Email_Id ,Father_Mobile_Number,Father_Occupation , Father_Occupation_Organization,Mother_Mobile_Number, Mother_Occupation,Mother_Occupation_Organization,Permanent_Address,State , District  ,City,Pincode ) values ('"+duniversity_prn+"','"+dparent_email_id+"','"+dfather_mobile_no+"','"+dfather_occupation+"','"+dfather_occupation_organization+"','"+dmother_mobile_no+"','"+dmother_occupation+"','"+dmother_occupation_organization+"','"+dpermanent_address+"','"+dstate+"','"+ddistrict+"','"+dcity+"','"+dpincode+"')"); 

int i3=st3.executeUpdate("insert into Educational_Details(University_PRN, SSC_Marks_Obtained,SSc_Marks_Outof,SSC_Percentage,SSC_School_Name ,SSC_Board ,SSC_Year_Of_Passing,HSC_Marks_Obtained,HSC_Marks_Outof, HSC_Percentage ,HSC_School_Name,HSC_Board, HSC_Year_Of_Passing ,FE1_Addition_Of_Credits,FE1_Total_Of_Credits_Earned,FE1_SGPA, FE2_Addition_Of_Credits, FE2_Total_Of_Credits_Earned,FE2_SGPA,SE1_Addition_Of_Credits,SE1_Total_Of_Credits_Earned,SE1_SGPA , SE2_Addition_Of_Credits, SE2_Total_Of_Credits_Earned, SE2_SGPA ,TE1_Addition_Of_Credits,TE1_Total_Of_Credits_Earned,TE1_SGPA, TE2_Addition_Of_Credits,TE2_Total_Of_Credits_Earned,TE2_SGPA ,No_Of_Dead_Backlogs  ,Physically_Handicapped,Intrested_In,No_Of_Live_Backlogs,Diploma_Marks_Obtained,Diploma_Marks_Outof,Diploma_Percentage,Diploma_College_Name,Diploma_Year_Of_Passing,Diploma_Board,Diploma_No_of_Dead_Backlogs,MHTCET_Score,AIEEE_JEE_Score) values ('"+duniversity_prn+"','"+d10_marks_obtained+"','"+d10_marks_out_off+"','"+d10_percent+"','"+dschool_name+"','"+d10_board+"','"+d10_year_of_passing+"','"+d12_marks_obtained+"','"+d12_marks_out_off+"','"+d12_percent+"','"+dcollege_name+"','"+d12_board+"','"+d12_year_of_passing+"','"+dfe1_add_of_credits+"','"+dfe1_total_credits_earned+"','"+dfe1_sgpa+"','"+dfe2_add_of_credits+"','"+dfe2_total_credits_earned+"','"+dfe2_sgpa+"','"+dse1_add_of_credits+"','"+dse1_total_credits_earned+"','"+dse1_sgpa+"','"+dse2_add_of_credits+"','"+dse2_total_credits_earned+"','"+dse2_sgpa+"','"+dte1_add_of_credits+"','"+dte1_total_credits_earned+"','"+dte1_sgpa+"','"+dte2_add_of_credits+"','"+dte2_total_credits_earned+"','"+dte2_sgpa+"','"+dengg_dead_backlogs+"','"+dhandicapped+"','"+dinterest+"','"+dengg_live_backlogs+"','"+ddiploma_marks_obtained+"','"+ddiploma_marks_out_off+"','"+ddiploma_percent+"','"+ddiploma_college_name+"','"+ddiploma_year_of_passing+"','"+ddiploma_board+"','"+ddiploma_dead_backlogs+"','"+dmhtcet+"','"+daieee+"')"); 

int i4=st4.executeUpdate("insert into Extra_Activity(University_PRN,Hobbies_Activities) values ('"+duniversity_prn+"','"+dachievement_hobbies+"')"); 

if(i0==1 && i1==1 && i2==1 && i3==1 && i4==1)
{
	response.sendRedirect("formlogout.jsp");
}
out.println("Registered"); 

%>
<a href ="Login.html">Login</a><br/><br/>
<a href="index.html">Home</a>
</body>
</html>