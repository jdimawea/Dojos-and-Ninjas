<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojo</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container mt-5">
	<h1> ${dojo.name} Location Ninjas</h1>
	<table class="table table-striped">
		<thead>
			<tr>
				<td>First Name</td>
				<td>Last Name </td>
				<td>Age </td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="oneNinja" items="${dojo.ninjas}">
				<tr>
					<td>${oneNinja.first_name }</td>
					<td>${oneNinja.last_name } </td>
					<td>${oneNinja.age } </td>
				</tr>
			</c:forEach>
		</tbody>	
	</table>
</div>

</body>
</html>