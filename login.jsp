<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%! String userdbName;
String userdbPsw;
String dbUsertype;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/Training_And_Placement";
String user = "root";
String dbpsw = "root";

String sql = "select * from Login_Page where University_PRN=? and Password=?";

String name = request.getParameter("name");
String password = request.getParameter("password");
//String usertype = request.getParameter("usertype");

if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, password);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("University_PRN");
userdbPsw = rs.getString("Password");
if(name.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
response.sendRedirect("index2.jsp"); 
} 
}
else
response.sendRedirect("error.jsp");
rs.close();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/index.jsp").include(request, response);
}
%>
</body>
</html>