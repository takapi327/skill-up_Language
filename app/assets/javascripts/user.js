$(function(){

  $('.side__bar__box').on('click', function(){
    $('.side__bar__box').not($(this)).next().animate({height:'hide'});
    $(this).next().animate({height:'toggle'});
  });

  // $('.side__bar__box1').on('click', function(){
  //   $('.side__bar__box1').not($(this)).next().animate({width:'hide'});
  //   $(this).next().animate({width:'toggle'});
  // });

  $('.button').on('click', function(){
    $('.button').not($(this)).next().animate({width:'hide'});
    // $('.button').animate({width:'hide'});
    $(this).next().animate({width:'toggle'});
  });
    
});