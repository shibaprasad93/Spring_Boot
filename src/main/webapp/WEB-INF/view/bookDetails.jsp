<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Book Details</title>
</head>
<body>
	<div>
		<link rel="stylesheet" type="text/css"
			href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script
			src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#table_id').DataTable();
			});
		</script>


	</div>
	<table border="1" , align="center" , id="table_id">
		<thead>
			<tr>
				<th>Serial-No.</th>
				<th>BookName</th>
				<th>Price</th>
				<th>Publication</th>
				<th>Author Name</th>
				<th>Image</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ models }" var="model" varStatus="index">
				<tr>
					<td><c:out value="${index.count}" /></td>
					<td><c:out value="${model.bookName}" /></td>
					<td><c:out value="${model.price}" /></td>
					<td><c:out value="${model.publication}" /></td>
					<td><c:out value="${model.authors[0]}" /></td>
					<td><c:out value="${model.image}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div align="center">
		<a href="/">book</a>
	</div>

</body>
</html>