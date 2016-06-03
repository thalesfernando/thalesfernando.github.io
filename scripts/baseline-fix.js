var li = $("li")[0];
var leading = parseFloat(window.getComputedStyle(li)['lineHeight']);

var figureList = document.getElementsByTagName('figure');
var figureContentList = $("figure > *");

var figure = document.getElementsByTagName('figure')[0];
var figureContent = $( "figure > *" )[0];
var height = figureContent.clientHeight;
var newHeight = leading * Math.ceil(height / leading);

figure.setAttribute("style","height: " + newHeight + "px");

//replace the following by jquery:
var addEvent = function(object, type, callback) {
    if (object == null || typeof(object) == 'undefined') return;
    if (object.addEventListener) {
        object.addEventListener(type, callback, false);
    } else if (object.attachEvent) {
        object.attachEvent("on" + type, callback);
    } else {
        object["on"+type] = callback;
    }
};

addEvent(window, "resize", function(event) {
	var height = figureContent.clientHeight;
  var newHeight = leading * Math.ceil(height / leading);
  figure.setAttribute("style","height: " + newHeight + "px");
});