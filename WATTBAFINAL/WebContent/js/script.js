/* ============================================
	|	|	|	Navigation
==============================================*/
/* Show & Hide White Navigation using JQuery*/
$(function(){
	$(window).scroll(function(){
		//alert("You just scrolled!");
		if ($(window).scrollTop() > 50) {
			//Show white nav bar
			$("nav").addClass("white-nav-top");
		}else {
			//Hide white nav bar
			$("nav").removeClass("white-nav-top");
		}
	});
});