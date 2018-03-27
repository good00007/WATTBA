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
								<li><a href="customerhome.jsp">Home</a></li>
								<li><a href="customerhome.jsp#about">Specials</a></li>
								<li><a href="#">BLAH</a></li>
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
<style>
		#home-content{
		width: 50%;
		 margin: auto;
		}
		td{
		 
		color: red;
		
		}
		th{
		color: red;
		
		}
		p{
		
		font-size: 14px;
		color: red;
		}
		
		</style>
		<!-- Home Content -->
		<div id="home-content">
<br>
		<br>
		<br>
		<div class="contact">
		<!---->
		
		<p>WATTBA sandwiches is a locally owned sandwich service based within Algonquin College <br>
		We ensure the quality of our sandwich <br><br></p>
		
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

	<!-- Home End -->

	<!--  About -->

		<!-- About 02 Ends -->


	<!-- Footer -->
<footer class="text-center">

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<p>
				
				<fmt:message key="contact.information" /><span> WATTBA Inc.</span>
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
 		