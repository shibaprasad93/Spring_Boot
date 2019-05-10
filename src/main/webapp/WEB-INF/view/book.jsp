<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<link rel="stylesheet"
			href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script
			src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$("#publicationDate").datepicker({
					changeMonth : true,
					changeYear : true
				});

				$("#form").validate({
					rules : {
						bookName : 'required',
						price : 'required'
					},

					messages : {
						bookName : 'This field is required',
						price : 'This field is required',
					},
					submitHandler : function(form) {
						form.submit();
					}
				});

			});
		</script>
	</div>
	<h1 align="center" , style="color: #00FF00;">BOOK DETAILS</h1>
	<div align="center">
		<font color="green"> ${ success } </font> <font color="red">${ failure }</font>
	</div>

	<form:form action="book" id="form" modelAttribute="bookModel"
		method="post" enctype="multipart/form-data">
		<table border="1" , align="center">
			<tr>
				<td>Book Name:</td>
				<td><form:input path="bookName" /></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td>Publication:</td>
				<td><form:input path="publication" /></td>
			</tr>
			<tr>
				<td>Publication Date:</td>
				<td><form:input path="publicationDate" /></td>
			</tr>

			<tr>
				<td>Image</td>
				<td><form:input path="image" type="file" /></td>
			</tr>
			<tr>
				<td>Author Name:</td>
				<td><form:input path="authors" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="reset"
					value="reset"> <input type="submit" value="submit"></td>
			</tr>

		</table>
	</form:form>
	<div align="center">
		<a href="bookDetails">view Book Details</a>
	</div>

</body>
</html>