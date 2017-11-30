<%-- Guarantee NonMembers Only --%>
<ns:PageBouncer runat="server" 
    ID="TourBouncer" 
    ShowForCustomerProfile="SignedOut" 
    BounceToUrl="~/members"
    />
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

     <div class="row expanded collapse"><!-- WelcomeSliderWrap-->
  <div class="small-12 columns text-center">
     <!-- #Include virtual="/includes/welcome_sliders/welcome_slider.html" -->






       </div></div><!-- // row / col -->








  <div class="row expanded" style="background-color:#003478;">
  <div class="small-12 columns text-center">
  
    <!-- responsive nav control -->
  <div class="responsive HPMovieSlider HPCategories2">
  <div class="button HpThemeBtn" data-sect="vidwelcome">welcome</div>
  <div class="button HpThemeBtn" data-sect="vidjustadded">just added</div>
    <div class="button HpThemeBtn" data-sect="vidtrending">trending</div>
   <div class="button HpThemeBtn" data-sect="vidoriginals">originals</div>
      <div class="button HpThemeBtn" data-sect="vidnsfw">nsfw</div>
      <div class="button HpThemeBtn" data-sect="vidthemes">themes</div>
      <div class="button HpThemeBtn" data-sect="vidstudio">studios</div>
      <div class="button HpThemeBtn" data-sect="vidstars">stars</div>
       <div class="button HpThemeBtn" data-sect="vidspotlight">spotlight</div>
  </div>
  <!-- // responsive nav control -->

  </div></div><!-- // row / col -->
  
   
     
    <div class="row">
  <div class="small-12 columns text-center">
  
  
 
  
    
  <div class="WelcomeMosaic HPMovieSlider">


<!-- start all slides -->
  
<div> <!-- slide internal -->
<!-- /////
Welcome
////// -->
  <div data-interchange="[/content/channel/welcomesmall.aspx, small], [/content/channel/welcomesmall.aspx, medium], [/content/channel/welcomelarge.aspx, large]"></div>
<!-- /////
Welcome END
////// -->
 </div><!-- // slide internal -->
  
  <div> <!-- slide internal -->
<!-- /////
JUST ADDED
////// -->

  <div data-interchange="[/content/channel/justaddedsmall.aspx, small], [/content/channel/justaddedsmall.aspx, medium], [/content/channel/justaddedlarge.aspx, large]"></div>

<!-- /////
JUST ADDED END
////// -->

 </div><!-- // slide internal -->  



 <div>
  <!-- slide internal -->

<!--//////////// 
trending 
//////////// -->

  <div data-interchange="[/content/channel/trendingsmall.aspx, small], [/content/channel/trendingsmall.aspx, medium], [/content/channel/trendinglarge.aspx, large]"></div>

    <!--//////////// 
trending 
//////////// --> 

 </div><!-- end slide internal -->
 
 
  

      
<div> 
<!-- slide internal -->
 <!-- ////
 NakedSword Originals
 ////// -->
 
  <div data-interchange="[/content/channel/nsoriginalssmall.aspx, small], [/content/channel/nsoriginalssmall.aspx, medium], [/content/channel/nsoriginalslarge.aspx, large]"></div>
 <!-- ////
 NakedSword Originals
 ////// -->

 </div><!-- // slide internal -->


<div> 
<!-- slide internal -->

<!--//////////// 
NSFW 
//////////// -->

  <div data-interchange="[/content/channel/nsfwsmall.aspx, small], [/content/channel/nsfwsmall.aspx, medium], [/content/channel/nsfwlarge.aspx, large]"></div>
<!--//////////// 
NSFW 
//////////// -->
 </div><!-- // slide internal -->



<div> <!-- slide internal -->
<!-- //////
THEME
///// -->
  <div data-interchange="[/content/channel/themesmall.aspx, small], [/content/channel/themesmall.aspx, medium], [/content/channel/themelarge.aspx, large]"></div>
  <!-- //////
THEME
///// -->  
 </div><!-- // slide internal -->



  
  <div> 
<!-- slide internal -->
<!--//////////// 
studios 
//////////// -->
  <div data-interchange="[/content/channel/studiossmall.aspx, small], [/content/channel/studiossmall.aspx, medium], [/content/channel/studioslarge.aspx, large]"></div>
<!--//////////// 
STUDIOS 
//////////// -->

 </div><!-- // slide internal -->


<div>
<!-- slide internal -->
<!--//////////// 
STARS 
//////////// -->

  <div data-interchange="[/content/channel/starssmall.aspx, small], [/content/channel/starssmall.aspx, medium], [/content/channel/starslarge.aspx, large]"></div>
<!--//////////// 
STARS 
//////////// -->

 </div><!-- // slide internal -->


 
 


 <div> <!-- slide internal -->
  <!-- ///////////////
 SPOTLIGHT
 //////////////// -->
  <div data-interchange="[/content/channel/spotlightsmall.aspx, small], [/content/channel/spotlightlarge.aspx, medium], [/content/channel/spotlightlarge.aspx, large]"></div>

 <!-- ///////////////
 SPOTLIGHT
 //////////////// -->
 </div><!-- // slide internal -->



<!-- // END OF SLIDES -->

  </div><!-- /// WelcomeMosaic HPMovieSlider -->
  
  </div></div><!-- // row / col -->
  
  
    <!-- /// test slider / masonry -->
   
     
   

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




 
    
<ns:ScriptWriter id="Scripts" runat="server" />  

 




<script type='text/javascript' src='/js/slick.js'></script>

<script type='text/javascript' src='/js/slick_options.js'></script>

<script type='text/javascript' src='/js/welcomepage_slider.js'></script>




</body>
</html>