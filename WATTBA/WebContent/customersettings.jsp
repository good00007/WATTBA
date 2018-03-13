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
  <title>WATTBA Sandwiches</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        <li><a href="#">Products</a></li>
        <li><a href="#">Deals</a></li>
        <li><a href="#">Stores</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><span id="language"></span>
  	    <form>
            <select id="language" name="language" onchange="submit()">
                <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
               	<option value="fr" ${language == 'fr' ? 'selected' : ''}>French</option>
            </select>
         </form>
         </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span>&nbsp<%=session.getAttribute("email")%></a>
          <ul class="dropdown-menu">
             <li><a href="#"><fmt:message key="customer.account" /><span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            <li class="divider"></li>
            <li><a href="LogoutServlet"><fmt:message key="customer.signout" /><span class="glyphicon glyphicon-log-out pull-right"></span></a></li>  
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> <fmt:message key="main.orders"/></a></li>
      </ul>
    </div>
  </div>
</nav>
<style>

label{
    display:inline-block;
    width:100px;
}


</style>
<div class="container">    
  <div class="row">
    <div class="panel-heading"><fmt:message key="update.info"/></div>

    <c:set var = "email" value = "${sessionScope.email}"/>
				<sql:query dataSource="${source}" var="result">SELECT customer.customer_id, name, email, address, postal_code,phone_number FROM customer INNER JOIN customer_detail ON customer_detail.customer_id = customer.customer_id where email=?
				<sql:param value="${email}" />
				</sql:query>
				
					
					<c:forEach var="row" items="${result.rows}">
					
					<ul>
						<form action="UpdateInfo" method="post">
						
						<label><fmt:message key="update.CustomerID"/></label> <input type="text" name="customer_id" readonly value="<c:out value="${row.customer_id}" />">
						<br>
						
						<label><fmt:message key="update.email"/></label> <input type="text" name="email" required value="<c:out value="${row.email}" />">
						<br>
						
						<label><fmt:message key="update.name"/></label> <input type="text" name="username" required value="<c:out value="${row.name}" />">
						<br>
						
						<label><fmt:message key="update.address"/></label> <input type="text" name="address" required value="<c:out value="${row.address}" />">
						<br>
						
						<label><fmt:message key="update.postalcode"/></label> <input type="text" name="postalcode" required value="<c:out value="${row.postal_code}" />">
						<br>
						<label><fmt:message key="update.phone"/></label> <input type="text" name="phoneNumber" required value="<c:out value="${row.phone_number}" />">
						<br>
						  <input type="submit" value="<fmt:message key="update.updateuser"/>">
						</form>
		
						</ul>
				
					</c:forEach>
					</div>
					</div>
					
   <br>

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