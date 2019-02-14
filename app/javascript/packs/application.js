
import "jquery";
import "bootstrap";

$(function(){
  $('.carousel').carousel({
    interval: 2000
  });
  $('.carousel').carousel('pause');
  $('.carousel').hover(function() {
    $(this).carousel('next');
    $(this).carousel('cycle');
  }, function() {
    $(this).carousel('pause');
  });
});
