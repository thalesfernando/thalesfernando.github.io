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
		$('body').toggleClass('fixed');
	});
	$('#grid').click(function(){
		$(this).toggleClass('aberto');
		$('#baseline-grid').toggleClass('aberto');
	});
});

var mobmenu = document.querySelector("#nav-icon");
var reset = function(reset){
	if (mobmenu.className == 'xis') {
		$('#nav-icon').toggleClass('xis');
		$('#menu-mobile-bg').toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		$('body').toggleClass('fixed');
	}
}

window.addEventListener('resize', reset);