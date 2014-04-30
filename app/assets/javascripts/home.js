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
    
   // Parallax scrolling - start of section function.
   // Cache the window object.
   $window = $(window);

   $('section[data-type="background"]').each(function(){
     // Declare the variable to affect the defined data-type.
     var $scroll = $(this);
             
      $(window).scroll(function() {
        // Negative value because we're scrolling upwards.                             
        var yPos = -($window.scrollTop() / $scroll.data('speed')); 
 
        // Background position.
        var coords = '50% ' + yPos + 'px';

        // Move the background.
        $scroll.css({ backgroundPosition: coords });    
      }); // End window scroll.
   });  // End section function.
    
});