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
<!DOCTYPE html>
<html lang="${language}">
<head>
  <title>WATTBA Sandwiches</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="sheet" href="css/loginstyle.css">  
    <link rel="sheet" href="css/loginstyle.css">  
  

	<script src="Javascript/main.js"></script>

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
          <li class="#active"><a href="customerhome.jsp"><fmt:message key="main.home" /></a></li>
        <li><a href="#product.jsp"><fmt:message key="main.products" /></a></li>
        <li><a href="#"><fmt:message key="main.deals" /></a></li>
        <li><a href="#"><fmt:message key="main.stores" /></a></li>
        <li><a href="contact.jsp"><fmt:message key="main.contact" /></a></li>
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
             <li><a href="customersettings.jsp"><fmt:message key="customer.account" /><span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            
            <li class="divider"></li>
            <li><a href="LogoutServlet"><fmt:message key="customer.signout" /><span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
            
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>


<sql:query dataSource = "${source}" var = "result" maxRows = "6">
	SELECT * FROM sandwich;
</sql:query>

<c:set var = "count" scope = "page" value = "0"/>
<c:forEach var = "sandwich" items = "${result.rows}">
	<c:choose>
		<c:when test = "${count == 0 || count == 3}">
			<div class="container">
				<div class="row">
		</c:when>
	</c:choose>
	<div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading"><a style = "color:white" href = "customerproducts.jsp?id=${sandwich.sandwich_id}"><c:out value = "${sandwich.name}"/></a></div>
        <div class="panel-body"><c:out value = "${sandwich.description}"/></div>
        <div class="panel-footer"><c:out value = "${sandwich.price}"/></div>
      </div>
    </div>
	<c:choose>
		<c:when test = "${count == 2 || count == 5}">
			</div>
			</div>
			<br>
		</c:when>
	</c:choose>
	<c:set var = "count" scope = "page" value = "${count + 1}"/>
</c:forEach>


<br><br>
<% if (session.getAttribute("signedIn").equals(true)) { %>
   <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>
	   <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	   
	  <script> swal({
		   position: 'top-end',
		   type: 'success',
		   title: 'Account Creation Failed. Email Already Registered',
		   showConfirmButton: false,
		   timer: 1500
		 })</script>
	  
<% } %>
<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>