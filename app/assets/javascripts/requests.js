$(document).ready(function() {

	$('.obo_name').hide();
	$('.obo_check').change(function(){
    if(this.checked)
        $('.obo_name').slideToggle('slow');
    else
        $('.obo_name').slideToggle('slow');
  });
  
  window.fbAsyncInit = function() {
    FB.init({
      appId      : ENV['APP_ID'],
      status     : true,
      xfbml      : true
    });
    FB.ui(
     {
       method: 'feed',
              name: 'SMAC Cancer',
              caption: 'Uniting cancer victims and sock monkeys!',
              description: (
                 'Welcome'
              ),
              link: 'http://smacangels.com',
              picture: ''
             },
             function(response) {
               if (response && response.post_id) {
                 alert('Post was published.');
               } else {
                 alert('Post was not published.');
               }
     }
    ); 
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/all.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  
});
