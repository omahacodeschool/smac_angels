$(document).ready(function() {

	$('.obo_name').hide();
	$('.obo_check input:checkbox').removeAttr('checked')
	$('.obo_check').change(function(){
    if(this.checked)
        $('.obo_name').slideToggle('slow');
    else
        $('.obo_name').slideToggle('slow');
  });
   
  // $(function() {  
  //     var pull        = $('#pull');  
  //         menu        = $('nav ul');  
  //         menuHeight  = menu.height();  
  // 
  //     $(pull).on('click', function(e) {  
  //         e.preventDefault();  
  //         menu.slideToggle();  
  //     });  
  // });   
    
});