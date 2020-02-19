$(function(){

  $('.login-btn').on('click',function(){
    $('.js-login').fadeIn();
    return false;
  });
  $('.js-login-close').on('click',function(){
    $('.js-login').fadeOut();
    return false;
  });

  $('.signup-btn').on('click',function(){
    $('.js-signup').fadeIn();
    return false;
  });
  $('.js-signup-close').on('click',function(){
    $('.js-signup').fadeOut();
    return false;
  });
      
});