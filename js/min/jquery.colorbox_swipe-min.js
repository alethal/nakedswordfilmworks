jQuery(document).bind("cbox_open",function(){jQuery("#colorbox").swipe({swipeLeft:function(o,e,n,r,c){jQuery.colorbox.prev()},swipeRight:function(o,e,n,r,c){jQuery.colorbox.next()},threshold:75})});