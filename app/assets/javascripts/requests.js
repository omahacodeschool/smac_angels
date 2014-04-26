$(document).ready(function() {

	$('.obo_name').hide();
	$('.obo_check input:checkbox').removeAttr('checked')
	$('.obo_check').change(function(){
    if(this.checked)
        $('.obo_name').slideToggle('slow');
    else
        $('.obo_name').slideToggle('slow');
  });

  $("a.fancybox").fancybox({
    type: 'iframe',
    overlayOpacity: .5,
    overlayColor: '#f64',
    transitionIn: 'elastic',
    transitionOut: 'elastic',
    easingOut: 'easeOutSine',
    cyclic: true
  });


  $(".rimage").hover(
    function () {
      originalText="Todd is a genious.";
      var story = $(".rimage").data("story");
      $("#story").text(story);
    }, 
    function () {
      $("#story").text(originalText);
    }
        );

});
