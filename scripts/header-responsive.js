$(document).ready(function(){
	$('#nav-icon').click(function(){
		$(this).toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		$('body').toggleClass('fixed');
		$('header').toggleClass('blurred');
		$('main').toggleClass('blurred');
		$('footer').toggleClass('blurred');
	});
	$('#grid').click(function(){
		$(this).toggleClass('aberto');
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