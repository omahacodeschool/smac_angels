$(document).ready(function(){      
      
    $('.hover').hover(function(){
        $(this).addClass('flip');
    },function(){
        $(this).removeClass('flip');
    });
    
		$('a.top').click(function() {
      $('html, body').animate({scrollTop:0}, 'slow');
			return false;
    });
    
});