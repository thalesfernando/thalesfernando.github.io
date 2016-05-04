// var logo = document.querySelector("header .logo");
// var shrink = function(shrink){
// 	var distanceY = window.pageYOffset || document.documentElement.scrollTop;
// 	var shrinkOn = 50;
// 	if (distanceY > shrinkOn) {
// 		if (logo.className == "logo large") {
// 			logo.className = "logo small"
// 		}
// 	} else {
// 		if (logo.className == "logo small") {
// 			logo.className = "logo large"
// 		}
// 	}
// }

// window.addEventListener('scroll', shrink);
// window.addEventListener('resize', shrink);

$(document).ready(function(){
	$('#nav-icon').click(function(){
		$(this).toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		$('body').toggleClass('fixed');
		$('header').toggleClass('blurred');
		$('main').toggleClass('blurred');
		$('footer').toggleClass('blurred');
	});
});

var mobmenu = document.querySelector("#nav-icon");
var reset = function(reset){
	if (mobmenu.className == 'open') {
		$('#nav-icon').toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		$('body').toggleClass('fixed');
		$('header').toggleClass('blurred');
		$('main').toggleClass('blurred');
		$('footer').toggleClass('blurred');
	}
}

window.addEventListener('resize', reset);