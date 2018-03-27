<%@ page import=" java.sql.Statement"%>
<%@ page import=" db.ConnectionManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet" %>
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
  <link rel="stylesheet" href="css/style.css">  
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
        <li class="active"><a href="home.jsp"><fmt:message key="main.home" /></a></li>
        <li><a href="customerproduct.jsp">Products</a></li>
        <li><a href="#">Deals</a></li>
        <li><a href="#">Stores</a></li>
        <li><a href="contact.jsp">Contact</a></li>
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

<!-- Stuff I'm adding -->
<div class ="container">
	<div class="contact" style="float = left;">
		<!---->
		<br>
		WATTBA sandwiches is a locally owned sandwich service based within Algonquin College <br>
		We ensure the quality of our sandwich <p><br><br></p>
		
		<table class="contact-table">
	 		<tr>
	  	  		<th>Address:</th>
	   	 		<td>1385 Woodroffe Ave, Nepean, Ontario</td>
	  		</tr>
	  		<tr>
	    		<th>Postal code:  </th>
	   	 		<td>K2G 1V8</td>
	  		</tr>
	  		<tr>
	    		<th>Telephone:</th>
	    		<td>(613) 727-4723</td>
	  		</tr>
	  		<tr>
	    		<th>Email:</th>
	    		<td><a href="mailto:example@mail.com">mail@example.com</a></td>
	  		</tr>
		</table>
		
		<p>
	</div>
	<div class="contact-map" style="float = right;">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2803.944294198994!2d-75.75667638470507!3d45.34993674908193!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5547a440a81b0550!2sAlgonquin+College!5e0!3m2!1sen!2sca!4v1520967167312" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
</div>



<br><br>

<footer class="container-fluid text-center">
  <p></p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>