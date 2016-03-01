var logo = document.querySelector("header .logo");
var shrink = function(shrink){
	var distanceY = window.pageYOffset || document.documentElement.scrollTop;
	var shrinkOn = 50;
	if (distanceY > shrinkOn) {
		if (logo.className == "logo large") {
			logo.className = "logo small"
		}
	} else {
		if (logo.className == "logo small") {
			logo.className = "logo large"
		}
	}
}

window.addEventListener('scroll', shrink);
window.addEventListener('resize', shrink);