<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn Page</title>
<script
    src="https://code.jquery.com/jquery-3.3.1.js"
    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous">
</script>
<script> 
$(function(){
  $("#header").load("/header.jsp"); 
  $("#footer").load("/footer.jsp"); 
});
</script> 
</head>
<body>
<div id="header"></div>
<script
		src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#form").validate({
				rules : {
					username : 'required',
					password : 'required',
				},

				messages : {
					username : " Enter UserName",
					password : " Enter Password",
				},
				submitHandler : function(form) {
					form.submit();
				}
			});

		});
	</script>
 <style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box
}

form {
	border: 3px;
	solide: #f1f1f1;
}

label {
	width: 150px;
	display: inline-block;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 10%;
	border-radius: 25%;
}

.container {
	text-align: center;
}

input[type=text], input[type=password] {
	width: 25%;
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
	text-align: center;
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
	<front color="green"> ${sucess}</front>
	<front color="red"> ${failure}</front>
	<form:form id="form" method="POST" action="/dologin" modelAttribute="login"
		style="border:1px solid #ccc">
		<div class="imgcontainer">
			<img src="img_avatar2.png" alt="Avatar" class="avatar">
		</div>

		<div class="container">
			<label for="uname"><b>UserName</b></label>
			<form:input path="username" placeholder="Enter User Name"
				maxlength="30"/></br> 
			<label for="psw"><b>Password</b></label>
			<form:input path="password" placeholder="Enter Password" type="password" name="password" id="password"/>
			<br>

			<button type="submit">Login</button>
			<br> <label> <input type="checkbox" checked="checked"
				name="remember"> Remember me
			</label><br>
		</div>

		<div class="container">
			<button type="button" class="cancelbtn">Cancel</button>
			<span class="psw"><a href="#"> ForgotPassword?</a></span>
		</div>
	</form:form>
</body>
<div id="footer"></div>
</html>