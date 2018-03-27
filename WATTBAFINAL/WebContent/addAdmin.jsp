<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<sql:setDataSource var="source" driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/the_wich" user="root" password="2v0b1c8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.example.i18n.text"/>
<!DOCTYPE html>
<html lang="${language}">
<head>
<!-- meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Title -->
<title>Wat Ta Sandwich</title>

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">


<!-- Bootstrap CSS -->
 <link rel="stylesheet" href="css/loginstyle.css">  
 <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<script src="Javascript/main.js"></script>
<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/dropdown.css">
</head>


<body>

	<!-- Header -->
	<header>
		<nav class="navbar navbar-fixed-top"> <!--  *white-nav-top*/ -->
			
					
					
					<!-- Main menu -->
					<div class="container">
					
							<ul class="nav navbar-nav">
								
					<li class="active"><a href="adminhome.jsp"><fmt:message key="admin.home" /></a></li>
					<li><a href="#"><fmt:message key="admin.editsandwich" /></a></li>
					<li><a href="searchuser.jsp"><fmt:message key="admin.edituser" /></a></li>
					<li><a href="#"><fmt:message key="admin.stores" /></a></li>
					<li><a href="#"><fmt:message key="admin.adjustprice" /></a></li>
					 <li><span id="language"></span>
					  	    <form >
					            <select id="language" name="language" onchange="submit()" class="form-control form-controll-sm">
					                <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
					               	<option value="fr" ${language == 'fr' ? 'selected' : ''}>French</option>
					            </select>
					         </form>
					         </li>
				</ul>	
									     <ul class="nav navbar-nav navbar-right">
                 
					        <li class="dropdown">
          <a href="#"class="dropdown-toggle" data-toggle="dropdown"> <span  class="glyphicon glyphicon-user"></span>&nbsp<%=session.getAttribute("email")%></a>
          			<ul class="dropdown-menu">
            		 <li><a href="customersettings.jsp"><fmt:message key="customer.account" /><span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            
            		<li class="divider"></li>
            		<li><a href="LogoutServlet"><fmt:message key="customer.signout" /><span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
         		 </ul>
        		</li>
        		 </ul>	
		</div>
		</nav>
	</header>
	<!-- Header End-->


		<!-- Background video ..id in custom CSS-->
		<video id="home-bg-video" poster="video/backGroundImage.jpg" autoplay
			loop muted>
			<source src="video/backGroundImage.mp4" type="video/mp4">
			<source src="video/backGroundImage.webm" type="video/webm">
		</video>

		<!-- Overlay ...video to bright?-->
		<div id="home-overlay"></div>
	
		<!-- Home Content -->
		<style>
		#home-content{
		width: 50%;
		 margin: auto;
		}
		h2{
		color: red;
		
		}
		
		</style>
		<div id="home-content">
		
	
		
		<br>
		<br>
		<h2><fmt:message key="admin.addnew"/></h2>
		<br>
			<form>
									<div class="form-group">
										<input type="email" name="email" required placeholder="<fmt:message key="placeholder.EnterEmail"/>" tabindex="1" class="form-control">
									</div>
									<div class="form-group">
										<input type="text" name="username" required placeholder="<fmt:message key="placeholder.EnterFirstLastName"/>" tabindex="2" class="form-control">
									</div>
									<div class="form-group">
										<input type="password" name="userpass" required placeholder="<fmt:message key="placeholder.EnterPassword"/>" tabindex="2" class="form-control">
									</div>
																	
											<div class="col-sm-6 col-sm-offset-3">
										<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="<fmt:message key="admin.create"/>">
									  
									</div>

		</form>
		
			<% 	String check_submit_form = request.getParameter("submit");
    if((request.getParameter("register-submit") == null)?false:true){ %>
    
          	<sql:update dataSource="${source}" var="result">INSERT INTO admin (email, name, password) VALUES (?, ?, ? )
          	
    				<sql:param value="${param.email}" />	
    				<sql:param value="${param.username}" />	
    				<sql:param value="${param.userpass}"  />	
    				</sql:update>

		
<% }%>

		</div>
	<style>
	table {  
    color: #333;
    font-family: Helvetica, Arial, sans-serif;
    width: 640px; 
    border-collapse: 
    collapse; border-spacing: 0; 
}

td, th {  
    border: 1px solid transparent; /* No more visible border */
    height: 30px; 
    transition: all 0.3s;  /* Simple transition for hover effect */
    text-align: center;
}

th {  
    background: #DFDFDF;  /* Darken header a bit */
    font-weight: bold;
}

td {  
    background: #FAFAFA;
    text-align: center;
}
	</style>


	<!-- Home End -->

	<!--  About -->
	
		<!-- About 02 -->
		<section id="about-02">
		

		</section>
		
		<!-- About 02 Ends -->



	<!-- Footer -->
<footer class="text-center">

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<p>
					Copyright &copy; 2017 All Rights Reserved By <span>WATTBA Inc.</span>
				</p>
			</div>
		</div>
	</div>
</footer>
<!-- Footer End -->

	<!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="js/bootstrap/bootstrap.js"></script>

	<!-- Custom JS -->
	<script src="js/script.js"></script>

</body>
</html>
 		