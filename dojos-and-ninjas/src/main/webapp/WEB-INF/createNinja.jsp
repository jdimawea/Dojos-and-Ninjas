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
<title>Gifts</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>New Ninja</h1>
	<form:form action="/ninjas/new" method="POST" modelAttribute="ninja"
		class="form-control">
		<div>
			<form:label path="dojo" class="form-label">Dojo:</form:label>
			<form:select path="dojo" class="form-select">
				<c:forEach var="dojo" items="${dojos }">
					<option value="${dojo.id }">${dojo.name }</option>
				</c:forEach>
			</form:select>
		</div>
		<div>
			<form:label path="first_name" class="form-label">First Name:</form:label>
			<form:errors path="first_name" class="text-danger" />
			<form:input path="first_name" class="form-control" />
		</div>
		<div>
			<form:label path="last_name" class="form-label">Last Name:</form:label>
			<form:errors path="last_name" class="text-danger" />
			<form:input path="last_name" class="form-control" />
		</div>
		<div>
			<form:label path="age" class="form-label">Age:</form:label>
			<form:errors path="age" type="number" class="text-danger" />
			<form:input path="age" class="form-control" />
		</div>
		<button class="btn btn-primary">Create</button>
	</form:form>
	<a href="/dojos/new">Dojo Form</a>
</body>
</html>