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

<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">
</head>


<body>

	<!-- Header -->
	<header>
		<nav class="navbar navbar-fixed-top"> <!--  *white-nav-top*/ -->
			<div class="container-fluid">
				<div class="site-nav-wrapper">
					<div class="navbar-header">
						<!-- Logo -->
						
					</div>
					
					<!-- Main menu -->
					<div class="container">
						<div class="collapse navbar-collapse">
							<ul class="nav navbar-nav">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="#about">Specials</a></li>
								<li><a href="login.jsp">BLAH</a></li>
								<li><a href="#">BLAH</a></li>
								<li><a href="#">BLAH</a></li>
								 <li><span id="language"></span>
					  	    <form >
					            <select id="language" name="language" onchange="submit()" class="form-control form-controll-sm">
					                <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
					               	<option value="fr" ${language == 'fr' ? 'selected' : ''}>French</option>
					            </select>
					         </form>
					         </li>
					       
							</ul>
						</div>
					</div>
				</div>
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
		
<style>
		#about-02{
	background-color:transparent;
		
		}
		
		</style>
		<!-- Home Content -->
		<div id="home-content">

		<br>
		<br>
		<br>

	
	<!-- Home End -->

	<!--  About -->
	
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="sheet" href="css/loginstyle.css">  
<script src="js/main.js"></script>
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link"><fmt:message key="login.login"/></a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link"><fmt:message key="register.reg"/></a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="loginServlet" method="post" role="form" style="display: block;">
									<div class="form-group">
									<input type="text" name="email" class="form-control" tabindex="1" required placeholder="<fmt:message key="placeholder.EnterEmail"/>">	
									</div>
									<div class="form-group">
									<input type="password" name="password" class="form-control" tabindex="2" required placeholder="<fmt:message key="placeholder.EnterPassword"/>">
										
									</div>
									<div class="form-group text-center">
										<!--	<input type="checkbox" tabindex="3" class="" name="remember" id="remember">-->
										<!--  <label for="remember"> Remember Me</label>-->
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="https://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="CreateUser"  method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="email" name="email" required placeholder="<fmt:message key="placeholder.EnterEmail"/>" tabindex="1" class="form-control">
									</div>
				
									<div class="form-group">
										<input type="password" name="userpass" required placeholder="<fmt:message key="placeholder.EnterPassword"/>" tabindex="2" class="form-control">
									</div>
									<div class="form-group">
										<input type="text" name="username" required placeholder="<fmt:message key="placeholder.EnterFirstLastName"/>" tabindex="2" class="form-control">
									</div>
									<div class="form-group">
										<input type="text" name="address" required placeholder="e.g. 123 aabbcc st" tabindex="2" class="form-control">
									</div> 	
									<div class="form-group">
										<input type="text" name="postalcode" maxlength="7"  required placeholder="<fmt:message key="placeholder.EnterPostalCode"/>" tabindex="2" class="form-control">
									</div> 	
									<div class="form-group">
										<input type="text" name="phoneNumber" maxlength="20"  required placeholder="<fmt:message key="placeholder.EnterPhoneNumber"/>" tabindex="2" class="form-control">
									</div> 	
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value=<fmt:message key="register.reg"/>>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<section id="about-02">
	</section>

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

 <% if(session.getAttribute("creation")=="failed"){%> 
     <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>
	   <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	   
	  <script> swal({
		   position: 'top-end',
		   type: 'error',
		   title: 'Account Creation Failed. Email Already Registered',
		   showConfirmButton: false,
		   timer: 1500
		 })</script>
	 <% session.removeAttribute("creation");
      }%>
      <% if(session.getAttribute("creation")=="success"){%> 
     <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>
	   <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	   
	  <script> swal({
		   position: 'top-end',
		   type: 'success',
		   title: 'Account Creation Successful',
		   showConfirmButton: false,
		   timer: 1500
		 })</script>
	 <% session.removeAttribute("creation");
      }%>
<!-- Footer End -->

	<!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="js/bootstrap/bootstrap.js"></script>

	<!-- Custom JS -->
	<script src="js/script.js"></script>
</body>
</html>
 		