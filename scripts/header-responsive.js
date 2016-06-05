var breakpoint = 24;
var distanceY = window.pageYOffset || document.documentElement.scrollTop;
var mobmenu = document.querySelector("#nav-icon");

$(document).ready(function(){
	$('#nav-icon').click(function(){
		$(this).toggleClass('xis');
		$('#menu-mobile-bg').toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		$('body').toggleClass('fixed');
	});
	$('#menu-mobile').click(function(){
		$('#nav-icon').toggleClass('xis');
		$('#menu-mobile-bg').toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		var body = $('body');
		$('body').toggleClass('fixed');
	});
	$('#grid').click(function(){
		$(this).toggleClass('aberto');
		$('#baseline-grid').toggleClass('aberto');
	});
});

var reset = function(reset) {
	if (mobmenu.className == 'xis') {
		$('#nav-icon').toggleClass('xis');
		$('#menu-mobile-bg').toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		var body = $('body');
		$('body').toggleClass('fixed');
	}
}

window.addEventListener('scroll', reset);
window.addEventListener('resize', reset);
window.addEventListener('resize', reset);