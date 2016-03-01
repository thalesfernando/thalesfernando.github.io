var header = document.querySelector("header");
var logo = document.querySelector(".logo");
var logoHeight = $(logo).height();
var rem = 2/3*logoHeight;

var showHeader = function(showHeader){
	var vh = 0.01 * $( window ).height();
	var distanceY = window.pageYOffset || document.documentElement.scrollTop;
	var showheaderOn = (50*vh) - 4.5*rem - 1;
	if (distanceY > showheaderOn) {
		if (header.className == "on-cover") {
			header.className = ""
		}
	} else {
		if (header.className == "") {
			header.className = "on-cover"
		}
	}
}

window.addEventListener('scroll', showHeader);
window.addEventListener('resize', showHeader);