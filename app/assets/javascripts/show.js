$(function(){
  $('.js-sub-image').on('click', function(){
    var select = $(this).attr('src').replace(/^(.+)_thumb(\.gif|\.jpg|\.png+)$/, "$1"+"$2");

    $('.js-main-image').stop().fadeOut(100, function(){
      $('.js-main-image').attr('src', select);
      $('.js-main-image').stop().fadeIn(200);
    });
  });
});