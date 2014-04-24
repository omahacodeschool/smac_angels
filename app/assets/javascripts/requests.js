$(document).ready(function() {

	$('.obo_name').hide();
	$('.obo_check input:checkbox').removeAttr('checked')
	$('.obo_check').change(function(){
    if(this.checked)
        $('.obo_name').slideToggle('slow');
    else
        $('.obo_name').slideToggle('slow');
  });
    
});
