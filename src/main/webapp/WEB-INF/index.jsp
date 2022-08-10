<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<title>Fruit Store</title>
</head>
<body class="container mt-5">
	<h1 style="color:pink">Fruit Store</h1>
	<br>
	<table class="table table-bordered border border-success border-5">
	<thead>
	<tr>
	<th scope="col">Name</th>
	<th scope="col">Price</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="oneFruit" items="${fruitsFromMyController}">
	<tr>
	<td><c:out value="${oneFruit.name}"></c:out></td>
	<td><c:out value="${oneFruit.price}"></c:out></td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
</body>
</html>