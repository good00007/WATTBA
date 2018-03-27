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
								<li><a href="#home"><fmt:message key="main.home" /></a></li>
								<li><a href="#about"><fmt:message key="main.specials"/></a></li>
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
							  <ul class="nav navbar-nav navbar-right">
							<li><a href="login.jsp"><fmt:message key="main.login"/></a></li>
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

		<!-- Home Content -->
		<div id="home-content">

			<div id="home-content-inner" class="text-center">

				<div id="home-heading">
					<h1 id="home-heading-1">
						<span>WAT</span>TB<span>A</span>
					</h1>
					<br>
					<h1 id="home-heading-2">
						<span>Sandwich</span> Shop
					</h1>
					<br>
				</div>

				<div id="home-text">
					<p>Hungry for sandwiches?</p>
				</div>

				<div id="home-btn">
					<a class="btn btn-general btn-home" href="#specials"
						title="View Specials!" role="button">View Specials!</a>
				</div>

			</div>

		</div>
		<!-- 		
		<!-- Downwards Arrow -->
		<a href="#specials" id="arrow-down"> <i class="fa fa-angle-down"></i>
		</a> -->

	</section>
	<!-- Home End -->

	<!--  About -->
	<section id="about">
		<!-- About 02 -->
		<div id="about-02">
			<div class="content-box-md">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="about-item text-center">

								<i class="fa fa-rocket"></i>
								<h3>Sandwich 1</h3>
								<hr>
								<p>Sandwich 1 is BLAH BLAHBLAHBLAHBLAH BLAH BLAH BLAH BLAH</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="about-item text-center">

								<i class="fa fa-rocket"></i>
								<h3>Sandwich 2</h3>
								<hr>
								<p>Sandwich 2 is BLAH BLAHBLAHBLAHBLAH BLAH BLAH BLAH BLAH</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="about-item text-center">

								<i class="fa fa-rocket"></i>
								<h3>Sandwich 3</h3>
								<hr>
								<p>Sandwich 3 is BLAH BLAHBLAHBLAHBLAH BLAH BLAH BLAH BLAH</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- About 02 Ends -->

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
<!-- Footer End -->

	<!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="js/bootstrap/bootstrap.js"></script>

	<!-- Custom JS -->
	<script src="js/script.js"></script>
</body>
</html>
 		