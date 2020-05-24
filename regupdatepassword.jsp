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

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Training_And_Placement",
"root","root"); 
Statement st= con.createStatement();

ResultSet rs; 

int i=st.executeUpdate("UPDATE Login_Page set Password='"+dpassword+"' where University_PRN='"+duniversity_prn+"'"); 
if(i==1)
	response.sendRedirect("index.jsp");

out.println("Registered"); 

%>
<a href ="Login.html">Login</a><br/><br/>
<a href="index.html">Home</a>
</body>
</html>