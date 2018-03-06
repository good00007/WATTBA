<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/galary.css"> 
<link rel="stylesheet" type="text/css" href="css/myGalary.css"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">                                      <!-- This line is responsible for formatting the text font throughout the page -->
<style>
body, html {height: 100%}
body,h1,h2,h3,h4,h5,h6 {font-family: "Amatic SC", sans-serif}
.menu {display: none}
.bgimg {
    background-repeat: no-repeat;
    background-size: cover;
    background-image: url("images/sandwichMain.jpg");
    min-height: 90%;
}
</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top w3-hide-small">
<div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" class="w3-bar-item w3-button">WATTBA</a>
    </div>
      <ul class="nav navbar-nav">
        <li><a href="#menu">MENU</a></li>
        <li><a href="#about">ABOUT</a></li> 
        <li><a href="#googleMap">CONTACT</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
</div>
</div>
  
<!-- Header with image -->
<header class="bgimg w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-bottomleft w3-padding">
    <span class="w3-tag w3-xlarge">Open from 10am to 12pm</span>
  </div>
  <div class="w3-display-middle w3-center">
    <span class="w3-text-white w3-hide-small" style="font-size:100px">WATTBA<br>Sandwiches</span>
    <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"><b>WATTBA<br>Sandwiches</b></span>
    <p><a href="#menu" class="w3-button w3-xxlarge w3-black">Let me see the menu</a></p>
  </div>
</header>

<!-- Menu Container -->
<div class="w3-container w3-black w3-padding-64 w3-xxlarge" id="menu">
  <div class="w3-content">
  
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">THE MENU</h1	
    
<div class="container"> <!-- End of container -->
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-12">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <img src="https://images.unsplash.com/photo-1442406964439-e46ab8eff7c4?dpr=2&fit=crop&fm=jpg&h=825&q=50&w=1450
" alt="Random Special1">
    </div>

    <div class="item">
      <img src="http://i.imgur.com/qK42fUu.jpg" alt="Random Special2">
    </div>

    <div class="item">
      <img src="https://images.unsplash.com/photo-1439694458393-78ecf14da7f9?dpr=2&fit=crop&fm=jpg&h=825&q=50&w=1450" alt="Random Special3">
    </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  <div class="col-lg-6 col-md-6 col-sm-12">
  <div id="content">
     <h1>WATTABA Sandwich</h1>
    <h3>Create Your Perfect Sandwitch</h3>
    <hr>
    <button class="btn btn-default btn-lg">Get Started!</button>
  </div>
  </div>
</div>

   
  </div> <!-- End of container -->	


  </div>
</div>
<!-- About Container -->
<div class="w3-container w3-padding-64 w3-red w3-grayscale w3-xlarge" id="about">
  <div class="w3-content">
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">About</h1>
    <p>WHO WE ARE<br>
We bring big flavor<br>
For 35 years, Quiznos has taken pride in bringing big flavour with quality ingredients. We are the pioneers of the toasted sub, serving you hot toasted subs made with butcher-quality meats and all natural cheeses. We are committed to serving great tasting Chef inspired food made with ingredients you can trust.</p>
    <p><strong>The Chef?</strong> Mr. Italiano himself<img src="/w3images/chef.jpg" style="width:150px" class="w3-circle w3-right" alt="Chef"></p>
    <p>We are proud of our interiors.</p>
    <img src="/w3images/onepage_restaurant.jpg" style="width:100%" class="w3-margin-top w3-margin-bottom" alt="Restaurant">
    <h1><b>Opening Hours</b></h1>
    
    <div class="w3-row">
      <div class="w3-col s6">
        <p>Mon & Tue CLOSED</p>
        <p>Wednesday 10.00 - 24.00</p>
        <p>Thursday 10:00 - 24:00</p>
      </div>
      <div class="w3-col s6">
        <p>Friday 10:00 - 12:00</p>
        <p>Saturday 10:00 - 23:00</p>
        <p>Sunday Closed</p>
      </div>
    </div>
    
  </div>
</div>

<!-- Contact (with google maps) -->
<div id="googleMap" class="w3-grayscale-max" style="width:100%;height:400px;"></div>

<div class="w3-container w3-padding-64 w3-blue-grey w3-grayscale-min w3-xlarge">
  <div class="w3-content">
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">Contact</h1>
    <p>Find us at some address at some place or call us at 05050515-122330</p>
    <p><span class="w3-tag">FYI!</span> We offer full-service catering for any event, large or small. We understand your needs and we will cater the food to satisfy the biggerst criteria of them all, both look and taste.</p>
    <p class="w3-xxlarge"><strong>Reserve</strong> a table, ask for today's special or just send us a message:</p>
    <form action="http://www.subway.com/en-ca">
      
      <p><input class="content-first-name w3-button w3-light-grey w3-block" type="text" placeholder="First name" required name="First name"><p>
      <p><input class="content-last-name w3-button w3-light-grey w3-block" type="text" placeholder="Last name" name="Last name"></p>
      <p><input class="content-phone-number w3-button w3-light-grey w3-block" type="tel" placeholder="Telephone number" required name="Telephone number"></p>
      
      <p><input class="content-city w3-button w3-light-grey w3-block" type="text" placeholder="City" name="City"></p>
      <p><input class="content-province w3-button w3-light-grey w3-block" type="text" placeholder="Province" name="Province"></p>

<!--     
  <p><div class="dropdown">
        <button class="dropbtn">Country</button>
        <div class="dropdown-content" style="left:0;">
          <a href="#">Country</a>
          <a href="#">Canada</a>
        </div>
      </div></p>
-->
      <p><input class="content-province w3-button w3-light-grey w3-block" type="text" placeholder="Postal code" name="Postal code"></p>
<!-- 
     <p><input type="radio" name="gender" value="male" checked> Male<br></p>
      <p><input type="radio" name="gender" value="female"> Female<br></p>
      <p><input type="radio" name="gender" value="other"> Other<br><br></p>
-->
      <p><input class="content-message w3-button w3-light-grey w3-block" type="text" placeholder="Message \ Special requirements" required name="Message"></p>
      <p><button class="w3-button w3-light-grey w3-block" type="submit">SEND MESSAGE</button></p>
    </form>
  </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-48 w3-xxlarge">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
</footer>

<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}

// Tabbed Menu
function openMenu(evt, menuName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("menu");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
  }
  document.getElementById(menuName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-red";
}
document.getElementById("myLink").click();
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
