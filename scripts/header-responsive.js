var breakpoint = 24;
var distanceY = window.pageYOffset || document.documentElement.scrollTop;
var mobmenu = document.querySelector("#nav-icon");
var extraHeight = $('body').height() - $(window).height();
console.log(extraHeight);

var scrolling;
var st;
var lastScrollTop;
var deslocamento;
var lastD;
var downscroll;
var hiddenHeader = false;
var noTransition = true;
var headerHeight = $('header').height();
var refPoint = window.pageYOffset;
console.log("move from " + refPoint);

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
	headerHeight = $('header').height();
	extraHeight = $('body').height() - $(window).height();
	console.log(extraHeight);
	if (mobmenu.className == 'xis') {
		$('#nav-icon').toggleClass('xis');
		$('#menu-mobile-bg').toggleClass('open');
		$('#menu-mobile').toggleClass('open');
		var body = $('body');
		$('body').toggleClass('fixed');
	}
}



$(window).scroll(function() {
	if ( extraHeight > (headerHeight + 5)) {
	    clearTimeout($.data(this, 'scrollTimer'));
	    $.data(this, 'scrollTimer', setTimeout(function() {
	        scrolling = false;
	        console.log("");
	        console.log("now stopped");
	        console.log("");
	        if (hiddenHeader == false) {
	        	$('header').css("top", "0px");
	        }
	    }, 48));

	    if (scrolling == false ) { //it means: if scrolling was false right before current scroll event check
		   	refPoint = window.pageYOffset;
		   	console.log("move from " + refPoint);
		}

		if (noTransition == false) {
			$('header').css("transition", "top .25s ease-in-out");
		}

		if (noTransition == true) {
			$('header').css("transition", "none");
		}

		scrolling = true;
		st = window.pageYOffset;

	   	if (st > lastScrollTop){
	    	if ((st - refPoint) > headerHeight) {
	    		console.log("header is hidden!");
	    		$('header').css("top", -headerHeight);
	    		hiddenHeader = true;
	    		noTransition = false;
	        } else {
	        	if (hiddenHeader == false) {
	        		noTransition = true;
			    	console.log("scrolling down: gradually hiding header...");
			    	console.log(refPoint);
			    	$('header').css("top",(-(st - refPoint))+"px");
			    }
	        }

	       upscroll = false;
	   	}
	   	if (st < lastScrollTop){
	   		upscroll = true;
	   		console.log("scrolling up")
	   	}


	   	deslocamento = st - lastScrollTop;
	   	lastScrollTop = st;
	   	if ((lastD * deslocamento) < 0){
	    	console.log("(changed direction)");
	    	if (upscroll == true){
	    		console.log("show header!");
	    		console.log(refPoint);
	    		$('header').css("top", "0px");
	    		hiddenHeader = false;
	    	}
	   	}
	   	lastD = deslocamento;
	}
});

window.addEventListener('scroll', reset);
window.addEventListener('resize', reset);
window.addEventListener('resize', reset);