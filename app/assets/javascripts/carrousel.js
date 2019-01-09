$(function(){
  $('.carousel').hover(function() {
    $(this).carousel('next');
    $(this).carousel({ ride: true });

  }, function() {
    $(this).carousel({ ride: false });
  });
});
