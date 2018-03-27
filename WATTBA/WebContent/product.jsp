<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.example.i18n.text"/>
<!DOCTYPE html>
<html lang="${language}">
<head>
  <title>WATTBA Sandwiches</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/style.css">  
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
    <h1>WATTBA Sandwiches</h1>      
    <p>Sandwiches & Sandwiches</p>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#"><fmt:message key="main.home" /></a></li>
        <li><a href="customerproduct.jsp"><fmt:message key="main.products" /></a></li>
        <li><a href="#"><fmt:message key="main.deals" /></a></li>
        <li><a href="#"><fmt:message key="main.stores" /></a></li>
        <li><a href="#"><fmt:message key="main.contact" /></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><span id="language"></span>
  	    
         </li>
        <li><a href="#"><span id="modalBtn" class="glyphicon glyphicon-user"></span> Sign up/Log in</a></li>
       
        <div id="modal" class="modal">
			<span class="closeBtn">&times;</span>
			<div class="loginform">
			<img src="images/user.jpg" class="user">
				<div style="float:left; /*background: rgba(0,0,0,.5);*/">
				<h2><fmt:message key="login.login" /></h2>
				
				<form action="loginServlet" method="post">
				
					<p><fmt:message key="login.email"/></p>
					
					<input type="text" name="email" required placeholder="<fmt:message key="placeholder.EnterEmail"/>">
					<p><fmt:message key="login.password"/></p>
					<input type="password" name="password" required placeholder="<fmt:message key="placeholder.EnterPassword"/>">
					<p></p>
					<input type="submit" value="<fmt:message key="login.login"/>" />
					<p></p>
					<a href="#"><fmt:message key="placeholder.Forgotpassword"/></a>
				</form>
				</div>
				<div class="register" style="float:right;">
				<h2><fmt:message key="register"/></h2>
				<form action="CreateUser" method="post">
					<p><fmt:message key="login.email"/></p>
					<input type="text" name="email" required placeholder="<fmt:message key="placeholder.EnterEmail"/>">
					<p><fmt:message key="login.password"/></p>
					<input type="password" name="userpass" required placeholder="<fmt:message key="placeholder.EnterPassword"/>">
					<p><fmt:message key="register.name"/></p>
					<input type="text" name="username" required placeholder="<fmt:message key="placeholder.EnterFirstLastName"/>">
				<p><fmt:message key="register.address"/></p>
					<input type="text" name="address" required placeholder="e.g. 123 aabbcc st">
					<p><fmt:message key="register.postalcode"/></p>
					<input type="text" name="postalcode" maxlength="7" required placeholder="<fmt:message key="placeholder.EnterPostalCode"/>">
					<p><fmt:message key="register.phone"/></p>
					<input type="text" name="phoneNumber" maxlength="20" required placeholder="<fmt:message key="placeholder.EnterPhoneNumber"/>">
					<p></p>
					<input type="submit" value="<fmt:message key="register.createuser"/>" />
				</form>
				</div>
			</div>
		</div>
		<script src="Javascript/main.js"></script>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

<sql:setDataSource var="source" driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/the_wich" user="root" password="2v0b1c8"/>
	
<sql:query dataSource = "${source}" var = "result">
	SELECT * FROM sandwich WHERE sandwich_id = ${param.id};
</sql:query>


<div class="container">
	<c:forEach var = "sandwich" items = "${result.rows}">
	<div class="row">
		<div class="col-sm-6"></div>
		<div class="col-sm-6">
			<div class="panel panel-primary">
				<div class=panel-heading><c:out value = "${sandwich.name}"/></div>
				<div class=panel-body><c:out value = "${sandwich.description}"/></div>
				<div class=panel-footer><c:out value = "${sandwich.price}"/></div>
			</div>
		</div>
	</div>
	</c:forEach>
</div>
<br><br>

<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>