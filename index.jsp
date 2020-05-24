<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="indexw3.css">
<style>

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
<form action="login.jsp">
  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="name" maxlength="9"  minlength="9" required>

    <label for="psw"><b>Password</b></label>
    <input type="password"placeholder="Enter Password" name="password" maxlength="9" minlength="9" required>
    
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

</div>
</body>
</html>