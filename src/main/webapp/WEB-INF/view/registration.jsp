<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRATION PAGE</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous">
	
</script>
<script>
	$(function() {
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
					confirmPassword: {
	                    equalTo: "#password"
	                }
				},

				messages : {
					username : " Enter UserName",
					password : " Enter Password",
					confirmPassword : " Enter Correct Password"
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
	align-items: center;
}

* {
	box-sizing: border-box
}

input[type=text], input[type=password] {
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

label {
	width: 150px;
	display: inline-block;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

.container {
	padding: 16px;
}

.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

.cancelbtn, .signupbtn {
	width: 10%;
}
</style>


	<front color="green"> ${sucess}</front>
	<front color="red"> ${failure}</front>
	<form:form id="form" method="POST" action="/doregistration"
		modelAttribute="register" style="border:1px solid #ccc">
		<div class="container" align="center">
			<h1 align="center">REGISTER</h1>
			<p align="center">Please fill in this form to create an account.</p>
			<hr>
			<label for="name"><b>User Name</b></label>
			<form:input path="username" placeholder="Enter User Name"
				maxlength="30" />
			<br> <label for="psw"><b>Password</b></label>
			<form:input path="password" placeholder="Enter Password" type="password" name="password" id="password"/>
			<br> <label for="psw-repeat"><b>Confirm Password</b></label>
			<form:input path="confirmPassword" placeholder="Confirm Password" type="password" name="confirmpassword" id="confirmpassword" />
			<br> <label> <input type="checkbox" checked="checked"
				name="remember" style="margin-bottom: 15px"> Remember me
			</label>

			<p>
				By creating an account you agree to our <a href="#"
					style="color: dodgerblue">Terms & Privacy</a>.
			</p>

			<div class="clearfix" align="centers">
				<button type="button" class="cancelbtn">Cancel</button>
				<button type="submit" class="signupbtn">Register</button>
			</div>
		</div>
	</form:form>
	<form action="/" method=GET>
		<input type="submit" value="Back to Home">
	</form>
	<div id="footer"></div>
</body>
</html>