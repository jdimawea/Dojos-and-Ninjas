<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojos</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container mt-5">
		<h1>New Dojo</h1>
		<form:form action="/dojos/new" method="POST" modelAttribute="dojo" class="form-control">
			<div>
				<form:label path="name" class="form-label">Name:</form:label>
				<form:errors path="name" class="text-danger"/>
				<form:input path="name" class="form-control"/>
			</div>
			<button class="btn btn-primary">Create!</button>
		</form:form>
	</div>
	<a href="/ninjas/new">Ninja Form</a>
</body>
</html>