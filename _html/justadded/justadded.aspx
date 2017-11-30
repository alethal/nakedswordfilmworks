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


	 

<!-- // just added -->
<!-- Header and Sort -->
     <div class='row'>
     <!-- Search Header -->
     <div class='columns small-12' SearchSortFilter><h2>Just Added</h2></div><!-- // Search Header -->
     <!-- Sort Movie Options -->
     <!-- Type Options --><div class='columns small-12 medium-6 large-6 SearchFullSceneFilter'>
     <ul>
     <li><a href='#' class='SortBySelFullScene'>movies</a></li>
     <li><a href='/just-added?content=Scenes&page=1'>tiles view</a></li>
     </ul>
     </div><!-- // Type Options -->
     <!-- Sort Options -->
     <div class='columns small-12 medium-6 large-6 SearchFullSceneFilter'>
     <ul>
     <li><a href='#' class='SortBySelFullScene'>movies</a></li>
     <li><a href='/just-added?content=Scenes&page=1'>tiles view</a></li>
     </ul>
     <BR>
     <ul> <!--class="SearchSortMenuScMv"-->
     <li><a href='#' class='SortBySel'>newest</a></li>
     <li><a href='?content=Movies&sort=MostWatched&page=1'>most watched</a></li>
     <li><a href='?content=Movies&sort=Duration&page=1'>duration</a></li>
     <li><a href='?content=Movies&sort=Title&page=1'>title</a></li>
     </ul>
     </div><!-- // col -->
     <!-- // Sort Options -->
     </div><!-- // row -->
     <!-- // Header and Sort -->

     
<div class="row left-collapse-row left-collapse">

<div class="columns medium-4 small-6">
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp013_holdyourpeace-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp013_holdyourpeace-02.jpg' width='100%'></a></div><!-- // tile-->
</div>

<div class="columns medium-4 small-6">
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp014_IamHappinessOnEarth-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp014_IamHappinessOnEarth-02.jpg' width='100%'></a></div><!-- // tile-->
</div>
	
<div class="columns medium-4 small-6">
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp015_iwanttogetmarried-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp015_iwanttogetmarried-02.jpg' width='100%'></a></div><!-- // tile-->
</div>

<!-- 2nd -->

	 </div><!-- // row -->
	 
	 
	 <!-- Pagination --><div class='row PaginationRow'><div class='columns small-12'><ul class='pagination text-center' role='navigation' aria-label='Pagination'><li class='pagination-previous disabled'>Previous</li><li class='current'><span class='show-for-sr'>Page: </span> 1</li><li><a href='/just-added?page=2' aria-label='Page 2'>2</a></li><li><a href='/just-added?page=3' aria-label='Page 3'>3</a></li><li><a href='/just-added?page=4' aria-label='Page 4'>4</a></li><li class='ellipsis'></li><li><a href='/just-added?page=10' aria-label='Page 10'>10</a></li><li class='pagination-next'><a href='/just-added?page=2' aria-label='Next Page'>Next</a></li></ul></div><!-- // col--></div><!-- / row --><!-- // Pagination -->
	 
	 




<div class="row">
<div class="columns small-12">

	<div class="BreakingNSFWSlideH">ACTION | <A HREF="seeallaction">SEE ALL</A></div>
	</div></div>

<div class="row">
<div class="columns small-12">

 <div class="BreakingNSFWSlide">
 
 
 
  <!-- TilesSlide -->
      <div class="TilesSlide">
          <a href='/top10hottestsummerstars2017'>

			<div class="TilesSlideSeeAll"><div class="TilesSlideSeeAllCenter">SEE ALL<BR>action</div></div>
       
          
    

          </a>
      </div>
      <!-- // TilesSlide -->
 
 

	
	

	
         <!-- TilesSlide -->
      <div class="TilesSlide">
         

<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp013_holdyourpeace-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp013_holdyourpeace-02.jpg' width='100%'></a></div><!-- // tile-->

            

       
      </div>
      <!-- // TilesSlide -->
      
      
   
      
      
        <!-- Welcome Slide -->
      <div class="WelcomeSlide" style="margin: 0 2px 0 0;">
          
         <!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp014_IamHappinessOnEarth-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp014_IamHappinessOnEarth-02.jpg' width='100%'></a></div><!-- // tile-->
         
      </div>
      <!-- // WelcomeSlide -->
      
      
      
      
      
      
      
        <!-- TilesSlide -->
     <div class="TilesSlide">
          <!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp015_iwanttogetmarried-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp015_iwanttogetmarried-02.jpg' width='100%'></a></div><!-- // tile-->
      </div>
      <!-- // TilesSlide -->
      
      
      
      
      
      
      
       <!-- TilesSlide -->
      <div class="TilesSlide">
          
		  <!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp010_folsomforever-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp010_folsomforever-02.jpg' width='100%'></a></div><!-- // tile-->
          
           </div>
      <!-- // TilesSlide -->
      
     
      
        
        
         
  <!-- TilesSlide -->
      <div class="TilesSlide">
          
		  <!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp011_geographyclub-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp011_geographyclub-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
     
         
  <!-- TilesSlide -->
      <div class="TilesSlide">
          
		  <!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp012_gone-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp012_gone-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
      
     
         
  <!-- TilesSlide -->
     <div class="TilesSlide">
          
		 <!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp007_delshores_sordidconfessions-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp007_delshores_sordidconfessions-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
      
      
        <!-- TilesSlide -->
     <div class="TilesSlide">
          
		 <!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp008_elvismadonna-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp008_elvismadonna-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
      
      
        <!-- TilesSlide -->
      <div class="TilesSlide">
          
		  <!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp009_endoflove-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp009_endoflove-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
    

      
  </div><!-- // BreakingNSFW -->
  
  
	</div></div><!-- // col / row --> 
  

<!-- // SLIDER -->



<!-- SLIDER -->

	

<div class="row">
<div class="columns small-12">

	<div class="BreakingNSFWSlideH">animation | <A HREF="seeallaction">SEE ALL</A></div>
	</div></div>

<div class="row">
<div class="columns small-12">

 <div class="BreakingNSFWSlide">
 
 
 
  <!-- TilesSlide -->
      <div class="TilesSlide">
          <a href='/top10hottestsummerstars2017'>

			<div class="TilesSlideSeeAll"><div class="TilesSlideSeeAllCenter">SEE ALL<BR>animation</div></div>
       
          
    

          </a>
      </div>
      <!-- // TilesSlide -->
 
 

	
	

	
         <!-- TilesSlide -->
      <div class="TilesSlide">
         

<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp003_bobs-new-suit-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp003_bobs-new-suit-02.jpg' width='100%'></a></div><!-- // tile-->

            

       
      </div>
      <!-- // TilesSlide -->
      
      
   
      
      
        <!-- Welcome Slide -->
      <div class="WelcomeSlide" style="margin: 0 2px 0 0;">
          
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp002_englishman-in-new-york-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp002_englishman-in-new-york-02.jpg' width='100%'></a></div><!-- // tile-->
         
      </div>
      <!-- // WelcomeSlide -->
      
      
      
      
      
      
      
        <!-- TilesSlide -->
     <div class="TilesSlide">
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp001_alex-and-Leo-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp001_alex-and-Leo-02.jpg' width='100%'></a></div><!-- // tile-->
      </div>
      <!-- // TilesSlide -->
      
      
      
      
      
      
      
       <!-- TilesSlide -->
      <div class="TilesSlide">
          
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp006_thecostoflove-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp006_thecostoflove-02.jpg' width='100%'></a></div><!-- // tile-->
          
           </div>
      <!-- // TilesSlide -->
      
     
      
        
        
         
  <!-- TilesSlide -->
      <div class="TilesSlide">
          
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp005_corpusChristi-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp005_corpusChristi-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
     
         
  <!-- TilesSlide -->
      <div class="TilesSlide">
          
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp004_capitalgames-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp004_capitalgames-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
      
     
         
  <!-- TilesSlide -->
     <div class="TilesSlide">
          
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp009_endoflove-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp009_endoflove-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
      
      
        <!-- TilesSlide -->
     <div class="TilesSlide">
          
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp008_elvismadonna-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp008_elvismadonna-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
      
      
        <!-- TilesSlide -->
      <div class="TilesSlide">
          
<!-- tile--><div class='TilesRollover'><a href="/_html/movieinfo/movieinfo.aspx"><img src='/img/tiles/bgp007_delshores_sordidconfessions-01.jpg' width='100%' /><img class='TilesOverlay' src='/img/tiles/bgp007_delshores_sordidconfessions-02.jpg' width='100%'></a></div><!-- // tile-->
     
      </div>
      <!-- // TilesSlide -->
      
    

      
  </div><!-- // BreakingNSFW -->
  
  
	</div></div><!-- // col / row --> 
  

<!-- // SLIDER -->


    
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