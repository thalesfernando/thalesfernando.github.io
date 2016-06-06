s = Snap("#logo");
var shrunk;
var breakpoint = 24;
var distanceY = window.pageYOffset || document.documentElement.scrollTop;
var mobmenu = document.querySelector("#nav-icon");

$(document).ready(function(){
	$('#nav-icon').click(function(){
		if (mobmenu.className == 'xis') {
			$(this).toggleClass('xis');
			if (distanceY <= breakpoint){
				expandLogo();
			}
		} else {
			shrinkLogo();
			$(this).toggleClass('xis');
		}
		$('#menu-mobile-bg').toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		$('body').toggleClass('fixed');
	});
	$('#menu-mobile').click(function(){
		$('#nav-icon').toggleClass('xis');
		$('#menu-mobile-bg').toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		var body = $('body');
		console.log(body);
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
		console.log(body);
		$('body').toggleClass('fixed');
	}
	if (distanceY <= breakpoint) {
		shrunk = false;
		expandLogo();
	}
}

if (distanceY > breakpoint) {
	shrunk = false;

	s.attr({width: "126", height: "30"});
	s.attr({viewBox:"0 0 189 30"});

	var p = s
    .path("M 1.5, 28.112 V 1.697 c 16.664 -0.912, 25.276, 1.236, 25.276, 8.738 c 0, 6.639 -7.783, 9.805 -25.276, 7.421")
    .attr({ id: "p", class: "letra-logo", strokeWidth: "2.5"});

    var o = s
    .path("M 58.468, 14.997 c 0, 7.74 -5.872, 13.497 -13.115, 13.497 c -7.62, 0 -13.115     -6.043 -13.115 -13.497 c 0 -8.306, 5.287 -13.497, 13.115 -13.497 C 52.596, 1.5, 58.468, 7.163, 58.468, 14.997 z")
    .attr({ id: "o", class: "letra-logo", strokeWidth: "2.5"});

    var ponto = s
    .ellipse(45.353, 14.997 , 3, 3)
    .attr({ id: "ponto", class: "ponto-logo"});

    var m = s
    .path("M 94.003, 28.112 V 1.697 C 83.207, 1.697 76.593, 8.364 76.593, 12.295 c 0, 1.991,     1.226, 3.47, 3.288, 3.47 c 1.618, 0, 2.924 -1.562, 2.924 -3.47 c 0 -4.112 -8.27 -10.598 -17.047 -10.598 v 26.415")
    .attr({ id: "m", class: "letra-logo", strokeWidth: "2.5"});

    var b = s
    .path("M 102.896, 1.956 v 26.156 c 11.92, 1.329, 21.604 -0.621, 21.604 -8.001 c 0 -6.608 -6.091 -8.446 -21.604 -8.063 c 10.321 -0.433, 13.607 -2.58, 13.607 -5.638 C 116.503, 1.631, 109.81, 0.834, 102.896, 1.956 z")
    .attr({ id: "b", class: "letra-logo", strokeWidth: "2.5"});


} else {
	shrunk = true;

	s.attr({width: "126", height: "74"});
	s.attr({viewBox:"0 0 189 74"});

    var p = s
    .path("M 1.5, 71.753 V 1.945 c 24.086 -1.28, 36.533 -0.207, 36.533, 8.688 c 0, 7.87 -11.853, 10.702 -36.533, 9.383")
    .attr({ id: "p", class: "letra-logo", strokeWidth: "3"});

    var o = s
    .path("M 48.23, 53.063 c 0, 11.145 -7.812, 19.437 -17.448, 19.437 c -10.138, 0 -17.448 -8.702 -17.448 -19.437 c 0 -11.961, 7.034 -19.436, 17.448 -19.436 C 40.418, 33.627, 48.23, 41.782, 48.23, 53.063 z")
    .attr({ id: "o", class: "letra-logo", strokeWidth: "3"});

    var ponto = s
    .ellipse(30.782, 53.064, 4, 4)
    .attr({ id: "ponto", class: "ponto-logo"});

    var m = s
    .path("M 88.269, 71.753 V 2.121 C 80.04, 5.408, 68.56, 18.757, 68.56, 30.627 c 0, 3.677, 1.707,     7.102, 5.292, 7.102 c 3.688, 0, 5.292 -3.204, 5.292 -6.881 c 0 -11.869 -12.296 -26.226 -19.527    -28.726 v 69.632")
    .attr({ id: "m", class: "letra-logo", strokeWidth: "3"});

    var b = s
    .path("M 101.423, 1.5 v 70.676 c 11.538, 0, 23.077 -8.602, 23.077 -22.226 c 0 -14.111 -10.316 -20.909 -16.806 -21.692 c 5.234 -2.567, 8.366 -8.845, 8.366 -13.772 C 116.06, 9.56, 112.761, 1.5, 101.423, 1.5 z")
    .attr({ id: "b", class: "letra-logo", strokeWidth: "3"});
}

function shrinkLogo() {
	s.animate({ viewBox: "0 0 189 30"}, 500, mina.easeinout);
	s.animate({ height: "30" }, 500, mina.easeinout);
	p.animate({ d: "M 1.5, 28.112 V 1.697 c 16.664 -0.912, 25.276, 1.236, 25.276, 8.738 c 0, 6.639 -7.783, 9.805 -25.276, 7.421", strokeWidth: "2.5"}, 500, mina.easeinout);
	o.animate({ d: "M 58.468, 14.997 c 0, 7.74 -5.872, 13.497 -13.115, 13.497 c -7.62, 0 -13.115     -6.043 -13.115 -13.497 c 0 -8.306, 5.287 -13.497, 13.115 -13.497 C 52.596, 1.5, 58.468, 7.163, 58.468, 14.997 z", strokeWidth: "2.5"}, 500, mina.easeinout);
	ponto.animate({ cx: "45.353", cy: "14.997" , rx: "3", ry: "3" }, 500, mina.easeinout);
	m.animate({ d: "M 94.003, 28.112 V 1.697 C 83.207, 1.697 76.593, 8.364 76.593, 12.295 c 0, 1.991,     1.226, 3.47, 3.288, 3.47 c 1.618, 0, 2.924 -1.562, 2.924 -3.47 c 0 -4.112 -8.27 -10.598 -17.047 -10.598 v 26.415", strokeWidth: "2.5" }, 500, mina.easeinout);
	b.animate({ d: "M 102.896, 1.956 v 26.156 c 11.92, 1.329, 21.604 -0.621, 21.604 -8.001 c 0 -6.608 -6.091 -8.446 -21.604 -8.063 c 10.321 -0.433, 13.607 -2.58, 13.607 -5.638 C 116.503, 1.631, 109.81, 0.834, 102.896, 1.956 z", strokeWidth: "2.5" }, 500, mina.easeinout);
	console.log(shrunk);
	console.log(distanceY);
	console.log(breakpoint);
};

function expandLogo() {
	if (mobmenu.className == 'xis') {
	} else {
		s.animate({ viewBox: "0 0 189 74"}, 500, mina.easeinout);
		s.animate({ height: "74" }, 500, mina.easeinout);
		p.animate({ d: "M 1.5, 71.753 V 1.945 c 24.086 -1.28, 36.533 -0.207, 36.533, 8.688 c 0, 7.87 -11.853, 10.702 -36.533, 9.383", strokeWidth: "3" }, 500, mina.easeinout);
		o.animate({ d: "M 48.23, 53.063 c 0, 11.145 -7.812, 19.437 -17.448, 19.437 c -10.138, 0 -17.448 -8.702 -17.448 -19.437 c 0 -11.961, 7.034 -19.436, 17.448 -19.436 C 40.418, 33.627, 48.23, 41.782, 48.23, 53.063 z", strokeWidth: "3" }, 500, mina.easeinout);
		ponto.animate({ cx: "30.782", cy: "53.064" , rx: "4", ry: "4" }, 500, mina.easeinout);
		m.animate({ d: "M 88.269, 71.753 V 2.121 C 80.04, 5.408, 68.56, 18.757, 68.56, 30.627 c 0, 3.677, 1.707, 7.102, 5.292, 7.102 c 3.688, 0, 5.292 -3.204, 5.292 -6.881 c 0 -11.869 -12.296 -26.226 -19.527 -28.726 v 69.632", strokeWidth: "3" }, 500, mina.easeinout);
		b.animate({ d: "M 101.423, 1.5 v 70.676 c 11.538, 0, 23.077 -8.602, 23.077 -22.226 c 0 -14.111 -10.316 -20.909 -16.806 -21.692 c 5.234 -2.567, 8.366 -8.845, 8.366 -13.772 C 116.06, 9.56, 112.761, 1.5, 101.423, 1.5 z", strokeWidth: "3" }, 500, mina.easeinout);
		console.log(shrunk);
		console.log(distanceY);
		console.log(breakpoint);
	}
};

function changeLogo() {
	distanceY = window.pageYOffset || document.documentElement.scrollTop;
	if (distanceY > breakpoint) {
		if (shrunk == true) {
			shrinkLogo();
			shrunk = false;
		} else {
			return;
		}
	} else {
		if (shrunk == true) {
			return;
		} else {
			expandLogo();
			shrunk = true;
		}
	}
};

window.addEventListener('scroll', changeLogo);
window.addEventListener('resize', changeLogo);
window.addEventListener('resize', reset);