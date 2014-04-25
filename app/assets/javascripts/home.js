$(document).ready(function(){
   $(window).bind('scroll', function() {
   var navHeight = $( window ).height() - 100;
         if ($(window).scrollTop() > navHeight) {
             $('nav').addClass('fixed');
         }
         else {
             $('nav').removeClass('fixed');
         }
    });
});