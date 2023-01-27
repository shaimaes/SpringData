<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee List</title>
<style>
table {
	margin-top: 10px;
	border: solid black 1px;
}

table  td {
	padding: 5px;
}

.message {
	font-size: 90%;
	color: blue;
	font-style: italic;
	margin-top: 30px;
}
</style>
</head>
<body>



	<a href="${pageContext.request.contextPath}/createEmployee">Create
		Employee</a>

	<br />


	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>First name</th>
				<th>Last name</th>
				<th>Date de création</th>
				<th>Titre</th>
				<th>Actions</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${employeeList}" var="info">

				<tr>
					<td>${info.empId}</td>
					<td>${info.firstName}</td>
					<td>${info.lastName}</td>
					<td>${info.startDate}</td>
					<td>${info.title}</td>
					<td><a href="deleteApplicant?id=${info.empId}">Delete</a></td>
					<td><a href="editApplicant?id=${info.empId}">Edit</a></td>
				</tr>

			</c:forEach>
		</tbody>
	</table>
	<c:if test="${not empty message}">

		<div class="message">${message}</div>
	</c:if>



</body>
</html>