<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Welcome" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />
    <!-- begin google analytics code -->
<!-- #Include virtual="/includes/googleanalytics.aspx" -->
<!-- end google analytics code -->



<style type="text/css">

	

.vjs-control-bar {
    background-color: #ff6600;
    color: #fff;
}


video::-webkit-media-controls {
  display: none !important;
  z-index: 2147483647;
}
video::-webkit-media-controls-panel { display: none; }

video::-webkit-media-controls-play-button { display: none; }

video::-webkit-media-controls-volume-slider-container { display: none; }

video::-webkit-media-controls-volume-slider { display: none; }

video::-webkit-media-controls-mute-button { display: none; }

video::-webkit-media-controls-timeline { display: none; }

video::-webkit-media-controls-current-time-display { display: none; }

video::-webkit-full-page-media::-webkit-media-controls-panel { display: none; }

video::-webkit-media-controls-timeline-container { display: none; }

video::-webkit-media-controls-time-remaining-display { display: none; }

video::-webkit-media-controls-seek-back-button { display: none; }

video::-webkit-media-controls-seek-forward-button { display: none; }

video::-webkit-media-controls-fullscreen-button { display: none; }

video::-webkit-media-controls-rewind-button { display: none; }

video::-webkit-media-controls-return-to-realtime-button{ display: none; }

video::-webkit-media-controls-toggle-closed-captions-button { display: none; }


</style>



 <style type="text/css">
		 
		 /* video */
	 



@media only screen and (min-width: 400px) {
    
	#over_video {
    position: relative;
	width: 100%;
	max-height: 300px;
    z-index: 1;
    left: 0px;
    margin: -300px 0 0 0;
   background-image: url(/img/pattern4.png);
	overflow: hidden;
			}
	
}
		 
		 
@media only screen and (max-width: 399px) {
    
	#over_video {
    position: relative;
	width: 100%;
	max-height: 300px;
    z-index: 1;
    left: 0px;
    margin: -244px 0 0 0;
   background-image: url(/img/pattern4.png);
	overflow: hidden;
			}
	
}
		 
	
.header-unit {
  max-height: 300px;
  border: 0px solid #000;
  position: relative;
	overflow: hidden;
}
	
#video-container {
	position: relative;
}
	
#video-container {
	height:100%;
	width:100%;
	overflow: hidden;	
}
	
video {
	position:relative;
	z-index:-1;
	z-index:-1;
}
	
video.fillWidth {
	width: 100%;
}
	 
	 
	 .VideoTextOverlay {
    padding-bottom: 30px !important;
    padding-left: 0 !important;
    padding-right: 0;
    padding-top: 8% !important;
    position: relative;
    z-index: 100;
}
		 
		 /* page */

/*	 
.GenreDrop:after {
 content: '';
    border: 20px solid transparent;
    border-top: 20px solid orange;
    margin-left: 2px;
    margin-bottom: 3px;
    display: inline-block;
    vertical-align: top;
	float: right;
}		 
*/

	 
	 
</style>
  
  
  

</head>
<body>

<!-- begin google tag manager -->
<!-- #Include virtual="/includes/googletagmanager.aspx" -->
<!-- end google tagmanager -->
<A NAME="top"></A>
<div id="WelcomePage">


<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />     

 <div class="off-canvas-content"  data-off-canvas-content>

    
    
        <!-- ///////////////
    
    PAGE CONTENT
     -->
<!-- featured genres -->
<div class="row">
<div class="columns small-12">
<h2>featured genres</h2>
	</div><!-- // column -->
	 </div><!-- // row -->
	 
	 <div class="row GenreFeat">
<div class="columns small-12">
	<A HREF="#"><img src="/img/genre/genre_comedy.jpg" border="0"></a>
	</div><!-- // column -->
	 </div><!-- // row -->
	 
	  <div class="row GenreFeat">
<div class="columns small-12">
<A HREF="#"><img src="/img/genre/genre_comedy.jpg" border="0"></a>
	</div><!-- // column -->
	 </div><!-- // row -->
	 
	 	  <div class="row GenreFeat">
<div class="columns small-12">
<A HREF="#"><img src="/img/genre/genre_comedy.jpg" border="0"></a>
	</div><!-- // column -->
	 </div><!-- // row -->
	 
	 

<!-- // featured genres -->

<!-- all genres -->

<div class="row">
<div class="columns small-12">
<h2>all genres</h2>
	</div><!-- // column -->
	 </div><!-- // row -->

<div class="row">
<div class="columns medium-3 small-12">	
<A HREF="#" class="button expanded GenreListBtn">action</A>
<A HREF="#" class="button expanded GenreListBtn">animation</A>
<A HREF="#" class="button expanded GenreListBtn">arthouse</A>
<A HREF="#" class="button expanded GenreListBtn">biography</A>
<A HREF="#" class="button expanded GenreListBtn">classics</A>


	</div><!-- // column -->
	
	<div class="columns medium-3 small-12">	
<A HREF="#" class="button expanded GenreListBtn">comedy</A>
<A HREF="#" class="button expanded GenreListBtn">cult movies</A>
<A HREF="#" class="button expanded GenreListBtn">crime</A>
<A HREF="#" class="button expanded GenreListBtn">documentary</A>
<A HREF="#" class="button expanded GenreListBtn">drama</A>

	</div><!-- // column -->
	
	<div class="columns medium-3 small-12">	
<A HREF="#" class="button expanded GenreListBtn">faith and spiritualty</A>
<A HREF="#" class="button expanded GenreListBtn">family</A>
<A HREF="#" class="button expanded GenreListBtn">foreign</A>
<A HREF="#" class="button expanded GenreListBtn">horror</A>
<A HREF="#" class="button expanded GenreListBtn">musical</A>

	</div><!-- // column -->
	
	<div class="columns medium-3 small-12">	
<A HREF="#" class="button expanded GenreListBtn">romance</A>
<A HREF="#" class="button expanded GenreListBtn">sci-fi</A>
<A HREF="#" class="button expanded GenreListBtn">thriller</A>
	</div><!-- // column -->
	
	 </div><!-- // row -->

<!-- // all genres -->




    
      <!-- ///////////////
    
    / PAGE CONTENT
     -->

  
   
     </div><!-- // PageContentWrap -->

 <!--//////////// Page Btm Nav -->
<!-- #Include virtual="/includes/join_btm.aspx" -->
<!-- /////////// Page Btm Nav -->


  
    
     <div class="row expanded">
 
  




  
       
 <!--//////////// Page Btm Nav -->
<!-- #Include virtual="/includes/page_btm.aspx" -->
<!-- /////////// Page Btm Nav -->



       
      
     </div></div>  
         
   
            
 <!--//////////// Floating Footer -->
<!-- #Include virtual="/includes/spectre-footer.aspx" -->
<!-- /////////// Floating Footer -->


    
    
      <!-- ///////////////
    
    / PAGE CONTENT
     -->

  </div><!--off-canvas-wrapper-->
  </div><!--off-canvas-wrapper-inner-->

</div><!-- PageID -->



<!-- Script Include used by: (Navigation) (Navigation_Include_Search) (LoggedOutSlider) (JoinBtn) (LiveUpsell) (LiveUpsellMobile) (MobileFooter)  -->
<script type='text/javascript' src='//code.jquery.com/jquery-2.1.4.min.js'></script>
<!-- Script Include used by: (Navigation_Include_Search)  -->
<script type='text/javascript' src='//code.jquery.com/ui/1.12.0/jquery-ui.js'></script>
<!-- Script Include used by: (Navigation) (Navigation_Include_Search) (LoggedOutSlider) (JoinBtn) (LiveUpsell) (LiveUpsellMobile) (MobileFooter)  -->
<script type='text/javascript' src='/bower_components/foundation-sites/dist/foundation.js'></script>
<!-- Script Include used by: (Navigation_Include_Search)  -->
<script type='text/javascript' src='/js/uisearch.js'></script>
<!-- Script Include used by: (Navigation_Include_Search)  -->
<script type='text/javascript' src='/js/classie.js'></script>
<!-- Script Include used by: (LoggedOutSlider)  -->
<script type='text/javascript' src='/js/slick.js'></script>
<!-- Script Include used by: (LoggedOutSlider)  -->
<script type='text/javascript' src='/js/spotlight_slider.js'></script>
<!-- Script Block used by: (Navigation_Include_Search)  -->
<script type='text/javascript'>
new UISearch(document.getElementById('sb-search'));
</script>
<!-- Script Block used by: (Navigation_Include_Search)  -->
<script type='text/javascript'>
$(document).ready(function () {
    $("#Navigation_Include_Search_searchString").autocomplete({
        source: function (request, response) {
            $.getJSON("/scriptservices/search/suggest", {
                term: extractLast(request.term)
            }, response);
        },
        search: function () {
            var term = extractLast(this.value);
            if (term.length < 1) {
                return false;
            }
        },
        minLength: 3,
        delay: 300,
        focus: function () {
            return false;
        },
    });
    function split(val) {
        return val.split(/,\s*/);
    }
    function extractLast(term) {
        return split(term).pop();
    }
});

</script>
<!-- Script Block used by: (Navigation_Include_Search)  -->
<script type='text/javascript'>
$(window).load(function () {
    $(".ui-autocomplete").bind("DOMSubtreeModified", function () {
        $(this).on("click", function (e) {
            if (e.handled !== true) {
                $("form#Navigation_Include_Search_form").submit();
                e.handled = true;
            }
        });
    });
});

</script>
<!-- Script Block used by: (Navigation) (Navigation_Include_Search) (LoggedOutSlider) (JoinBtn) (LiveUpsell) (LiveUpsellMobile) (MobileFooter)  -->



<script type='text/javascript' src='/js/slick.js'></script>

<script type='text/javascript' src='/js/slick_options.js'></script>

<script type='text/javascript' src='/js/welcomepage_slider.js'></script>

<script type='text/javascript' src='/js/5_spot.js'></script>




<script type='text/javascript'>
$(document).foundation();
</script>

  

 


<script type='text/javascript'>//<![CDATA[
$(window).load(function(){
$(document).ready(function() {
        var divHeight = $('.BreakingNSFWSlide').height(); 
        $('.TilesSlide').css('height', divHeight+'px');
    });
});//]]> 

</script>






</body>
</html>