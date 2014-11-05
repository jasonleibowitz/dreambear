$(document).ready(function(){

  // nav bar animation
  $(window).scroll(function(){
    var scrolled = $(window).scrollTop();
    if (scrolled > '100'){
      navFadeOut();
    } else if (scrolled < '100'){
      navFadeIn();
    }

  });

});

var navFadeOut = function(){
  $('.logo').addClass('animated fadeOutUp');
  setTimeout(function(){
    $('.nav-section').css('top', '-100px');
    $('.text-logo').css('display', 'block');
  }, 100);
}

var navFadeIn = function(){
  $('.text-logo').css('display', 'none')
  $('.nav-section').css('top', 0);
  $('.text-logo').css('display', 'none');
  $('.logo').removeClass('fadeOutUp').addClass('fadeInDown');
}
