<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>LogIn Page</title>
</head>
<body>
	<style>
body {
	font-family: Arial, Helvetica,
	sans-serif;
	}
	* {box-sizing: border-box}
form {
	border: 3px; 
	solide: #f1f1f1;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}
img.avatar {
  width: 10%;
  border-radius: 25%;
}

.container{
	text-align: center;
}
input[type=text], input[type=password] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;
  text-align:  center;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}
	</style>

	<h2 align="center">Login Form</h2>

<form:form method="POST" action="/dologin"
		modelAttribute="login" style="border:1px solid #ccc">
  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <form:input path="username"/><br>
    
     <label for="psw"><b>Password</b></label>
     <form:input path="password"/><br> 
      
    <button type="submit">Login</button><br>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label><br>
  </div>

  <div class="container">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw"><a href="#"> Forgotpassword?</a></span>
  </div>
  ${msg}
</form:form>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>