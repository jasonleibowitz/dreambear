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

  // set current page's nav link to active
  $('.nav-links').children('li').each(function(index){
    // debugger
    if ($('.' + $(this).children('a').attr('id') + '-page' ).length > 0) {
      $('#' + $(this).children('a').attr('id')).addClass('active');
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
