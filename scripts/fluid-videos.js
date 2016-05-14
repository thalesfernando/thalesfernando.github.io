var $allVideos = $("iframe"),
    $fluidEl = $(".video");

$allVideos.each(function() {

  $(this)
    // jQuery .data does not work on object/embed elements
    .attr('data-aspectRatio', this.height / this.width)
    .removeAttr('height')
    .removeAttr('width');

});

$(window).resize(function() {

  var newWidth = $fluidEl.width();
  $allVideos.each(function() {

    var $el = $(this);
    $el
        .width(newWidth)
        .height(newWidth * $el.attr('data-aspectRatio'));

  });

}).resize();
console.log($fluidEl);
  