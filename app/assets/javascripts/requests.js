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
      originalText="<h1>It is a great feeling to be able to comfort someone in need. Please view the stories of those suffering with cancer who would like a SMAC by scrolling over their name. Clicking a picture will take you to their profile.</h1>";
      var story = $(".rimage").data("story");
      $("#story").text(story);
    }, 
    function () {
      $("#story").html(originalText);
    }
        );

});
