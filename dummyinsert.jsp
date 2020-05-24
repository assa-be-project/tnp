<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

 input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 5px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
} 
.maincontainer {
	width:1350px;
	height:780px;
	border:1px solid #ccc;
background-color:#ecf0f1
}
h1{
	text-align:center;
}

button.login {
    background-color: #4CAF50;
    color: white;
    border:none;
    margin: 3px 0px;
    width: 20%;
    height:32px;
} 

button.register {
    background-color: #4CAF50;
    color: white;
    border:none;
    margin: 3px 66px;
    width: 20%;
    height:32px;
} 

button:hover {
    opacity: 0.8;
}

.imgcontainer {
    text-align: center;
	margin:24px 10;
}

img.avatar {
    width: 10%;
}

.container {
	width:30%;
    margin:auto;
}

img.avatar:hover {
    opacity: 0.8;
}
.tnp{
	text-align:center;
	
}
.tnp:hover {
    opacity: 0.8;
}

.mescoe:hover {
    opacity: 0.8;
}
.mescoe{
	text-align:center;
}
</style>
</head>
<body>
 <div class="maincontainer">
<h1  class="tnp" alt="tnp"> Training and Placement</h1>

<div class="imgcontainer">
    <img src="images/mescoe.jpg" alt="Avatar" class="avatar">
 </div>

<h3  class="mescoe" alt="mescoe">M.E.S College Of Engineering</h3>
<br>
<form action='#'>
  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" maxlength="9"  minlength="9" required>

    <label for="psw"><b>Password</b></label>
    <input type="password"placeholder="Enter Password" name="psw" minlength="8" required>
    
    <br><br>
    <b>Select registration:</b>
    <select name=Login  size=1 required>
    <option value="Student">Student</option>
    <option value="Faculty">Faculty</option>
    <option value="Admin">Admin</option>
    </select>
        <br><br>
     
    <button type="submit" alt="login" class="login">Login</button>  
    <br/>    <br/>
    
    <a href="newregistration1.jsp" >New Registration</a>
  </div>
  
	
</form>

	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import = "java.io.*,java.util.*" %>
	
	<%
			try
			{
				String duname=request.getParameter("uname");
				String dpsw=request.getParameter("psw"); 
				Class.forName("com.mysql.jdbc.Driver"); 
				java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Training_And_Placement","root","root"); 
				Statement st= con.createStatement(); 
				int rs=st.executeUpdate("insert into Login_Page(University_PRN,Password) values('"+duname+"','"+dpsw+"')"); 
				out.println("Data is successfully inserted!");
			}
			catch(Exception e)
			{
				System.out.print(e);
				e.printStackTrace();
			}
			/*	if(rs.next()) 
			{ 
				if(rs.getString(1).equals(duname) && rs.getString(2).equals(dpsw)) 
				{ 
				
				    // New location to be redirected
				    session.putValue("duname",duname); 
					session.putValue("dpsw",dpsw);
				    String site = new String("index2.jsp");
				    response.setStatus(response.SC_MOVED_TEMPORARILY);
				    response.setHeader("Location", site); 
				
				} 
				else if(!(rs.getString(1).equals(duname)))
				{ 
					out.println("<b>Invalid University_PRN</b>"); 
				} 
			}*/ 
	%>
</div>
</body>
</html>