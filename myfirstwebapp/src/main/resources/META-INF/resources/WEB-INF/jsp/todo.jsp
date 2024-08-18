<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
		<title>Add Todo Page</title>
	</head>
	<body>
		<div class="container">
			<h1>Enter Todo Details</h1>
			<form:form method="post" modelAttribute="todo">
				Description: <form:input type="text" path="description" required="required" />
				<form:errors path="description" cssClass="text-warning" />
				<form:input type="hidden" path="id" />
				<form:input type="hidden" path="done" />
				<input type="submit" class="btn btn-success" value="Submit" />
			</form:form>
		</div>
		<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.0/jquery.min.js"></script>	
	</body>
	
	
</html>