

$(document).ready(function() {

	if($("#nominate").data("nominate")===true){
	  $('.obo_name').hide();
    $('.obo_name').slideToggle('slow').trigger('autosize.resize');
	  $('.obo_check input:checkbox').prop('checked',true);
  }else{
    $('.obo_name').hide();
    $('.obo_check input:checkbox').removeAttr('checked')
  };

  $('.obo_check').change(function(){
    if(this.checked) {
        $('.obo_name').slideToggle('slow').trigger('autosize.resize');
    }else{
        $('.obo_name').slideToggle('slow').trigger('autosize.resize');
      }
  });

  $("a.fancybox").fancybox({
    type: 'iframe',
    autoSize: false,
    overlayOpacity: .5,
    overlayColor: '#f64',
    transitionIn: 'elastic',
    transitionOut: 'elastic',
    easingOut: 'easeOutSine',
    cyclic: true
  });

  $(".img-req").hover(
    function () {
      originalText="<h2>It is a great feeling to be able to comfort someone in need. Please view the stories of those battling cancer who would like some creature comfort by scrolling over their name. Clicking a picture will take you to their profile.</h2>";
      var story = $(this).data("story");
      $("#story").hide().html(story).fadeIn('easing');
    },
    function () {
      $("#story").hide().html(originalText).fadeIn('easing');
    }
  );

  if($(".upload_photo").length){
    $(".upload_photo").click(function(){
      $('.upload_after_photo').trigger('click');
    });
  }

  //Rather than using getElementByID and .erb
  //I am assuming there will be only one form on this page
  if($("#request_after_photo_url").length){
    document.getElementById('request_after_photo_url').onchange = function(){
      var form = document.getElementsByClassName("edit_request")[0];
      form.submit();
    };
  }

});
