<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.example.i18n.text"/>
<sql:setDataSource var="source" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/the_wich" user="root"
	password="2v0b1c8" />

<html lang="${language}">
<head>
<title>WATTBA Sandwiches Administrator</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

td {
	padding: 10px;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}
</style>
</head>
<body>

	<div class="jumbotron">
		<div class="container text-center">
			<h1>WATTBA Sandwich Administrator</h1>
			<p>Hello Mr. Administrator</p>
		</div>
	</div>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><fmt:message key="admin.home" /></a></li>
					<li><a href="#"><fmt:message key="admin.editsandwich" /></a></li>
					<li><a href="#"><fmt:message key="admin.edituser" /></a></li>
					<li><a href="#"><fmt:message key="admin.stores" /></a></li>
					<li><a href="#"><fmt:message key="admin.adjustprice" /></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>&nbsp<%=session.getAttribute("email")%></a>

						<ul class="dropdown-menu">
							<li><a href="#"><fmt:message key="customer.account" /><span
									class="glyphicon glyphicon-cog pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="LogoutServlet"><fmt:message key="customer.signout" /><span
									class="glyphicon glyphicon-log-out pull-right"></span></a></li>
						</ul></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="panel-heading">Customer List</div>
				<sql:query dataSource="${source}" var="result">SELECT customer.customer_id, name, email, address, postal_code FROM customer INNER JOIN customer_detail ON customer_detail.customer_id = customer.customer_id;</sql:query>
				<table border="1">
					<tr>
						<th>&nbsp;CUSTOMER ID</th>
						<th>&nbsp;NAME</th>
						<th>&nbsp;EMAIL</th>
						<th>&nbsp;ADDDRESS</th>
						<th>&nbsp;POSTAL&nbsp;CODE</th>
					</tr>
					<c:forEach var="row" items="${result.rows}">
						<tr>
						<td><c:out value="${row.customer_id}" />
							<td><c:out value="${row.name}" />
							<td><c:out value="${row.email}" />
							<td><c:out value="${row.address}" />
							<td><c:out value="${row.postal_code}" />
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>

	</div>
	<br>
	<br>
	<br>

	<footer class="container-fluid text-center">
		<p>Online Store Copyright</p>
		<form class="form-inline">
			Get deals: <input type="email" class="form-control" size="50"
				placeholder="Email Address">
			<button type="button" class="btn btn-danger">Sign Up</button>
		</form>
	</footer>

</body>
</html>