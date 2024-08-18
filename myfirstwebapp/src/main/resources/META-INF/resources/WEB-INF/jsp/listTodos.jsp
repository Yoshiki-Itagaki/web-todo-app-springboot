<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
	<head>
		<meta charset="UTF-8">
		<title>List Todos Page</title>
	</head>
	<body>
		<div>Welcome, ${name}</div>
		<hr>
		<h1> Your Todos</h1>
		
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Description</th>
					<th>Target Date</th>
					<th>Is Done?</th>
				</tr>				
			</thead>
			<tbody>
				<c:forEach items="${todos }" var="todo">
					<tr>
						<td>${todo.id}</td>
						<td>${todo.description}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>
					
					</tr>
				</c:forEach>
				
			</tbody>
		</table>
		
	</body>	
</html>