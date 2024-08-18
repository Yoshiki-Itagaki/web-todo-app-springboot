<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<title>Login Page</title>
</head>
<body>
	<h1>Login</h1>
	<div class="container">
		<pre>${errorMessage}</pre>			
		<form method="post">
			Name: <input type="text" name="name">
			Password: <input type="password" name="password">
			<input type="submit" class="btn btn-success" value="Login" />				
		</form>
	</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>			
</body>
</html>