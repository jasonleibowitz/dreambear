$(document).ready(function(){

  // nav bar animation
  homeTop = $('.home').position().top;
  $(window).scroll(function(){
    var scrolled = $(window).scrollTop();
    if (scrolled > '100'){
      console.log('hi');
      navFadeOut();
    } else if (scrolled < '100'){
      navFadeIn();
    }

  });

});

var navFadeOut = function(){
  $('.logo').addClass('animated fadeOutUp');
  setTimeout(function(){
    $('.logo').css('display', 'none');
    $('.text-logo').css('display', 'block');
  }, 200);
}

var navFadeIn = function(){
  $('.text-logo').css('display', 'none')
  $('.logo').css('display', 'block');
  $('.logo').removeClass('fadeOutUp').addClass('fadeInDown');
}
