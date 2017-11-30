 jQuery(document).bind('cbox_open', function(){
    jQuery("#colorbox").swipe( {
      //Generic swipe handler for all directions
      swipeLeft:function(event, direction, distance, duration, fingerCount) {
        jQuery.colorbox.prev();
      },
      swipeRight:function(event, direction, distance, duration, fingerCount) {
        jQuery.colorbox.next();
      },
      //Default is 75px, set to 0 for demo so any distance triggers swipe
      threshold:75
    });
  });
			




