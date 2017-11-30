<%-- Guarantee Members Only MEMBER Page--%>
<%--ns:PageBouncer runat="server" 
    ID="MembersOnlyBouncerUltrafan" 
    ShowForCustomerProfile="SignedIn" 
    BounceToUrl="~/seed-money"
    /--%>
    
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="Movie" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />
    
    
    

<style type="text/css">

/*
.vjs-control-bar {
    background-color: #ff6600;
    color: #fff; }

video::-webkit-media-controls {
  display: inline !important;
  z-index: 2147483647; }
  
video::-webkit-media-controls-panel { display: inline; }

video::-webkit-media-controls-play-button { display: inline; }

video::-webkit-media-controls-volume-slider-container { display: none; }

video::-webkit-media-controls-volume-slider { display: none; }

video::-webkit-media-controls-mute-button { display: none; }

video::-webkit-media-controls-timeline { display: inline; }

video::-webkit-media-controls-current-time-display { display: none; }

video::-webkit-full-page-media::-webkit-media-controls-panel { display: inline; }

video::-webkit-media-controls-timeline-container { display: none; }

video::-webkit-media-controls-time-remaining-display { display: none; }

video::-webkit-media-controls-seek-back-button { display: none; }

video::-webkit-media-controls-seek-forward-button { display: none; }

video::-webkit-media-controls-fullscreen-button { display: none; }

video::-webkit-media-controls-rewind-button { display: none; }

video::-webkit-media-controls-return-to-realtime-button{ display: none; }

video::-webkit-media-controls-toggle-closed-captions-button { display: none; }

*/
</style>




<!-- begin google analytics code -->
<!-- #Include virtual="/includes/googleanalytics.aspx" -->
<!-- end google analytics code -->


</head>
<body>
<!-- begin google tag manager -->
<!-- #Include virtual="/includes/googletagmanager.aspx" -->
<!-- end google tagmanager -->
<A NAME="top"></A>
<div id="HelpPage">


<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />    

      

 <div class="off-canvas-content"  data-off-canvas-content>


    <!-- ///////////////
    
    PAGE CONTENT
     -->

<div class="PageContentWrap">

 <!--//////////// Special Promo -->
<!-- #Include virtual="/includes/special_promo.aspx" -->
<!-- /////////// Special Promo -->
 
     
       <div class="row">
    
      <div class="columns small-12 medium-12 large-12">
<h2>"seed money"</h2>
</div>
</div>





 

<%-- turns off when scene 1 goes live --%>
    <ns:ContentInclude runat="server"
        id="GreasersTilLive"
        FallbackContentUrl="~/content/static_movie_folder/ultrafan/members_teaser/hide_members_teaser.html"
        ShowForCustomerProfile="ActiveMember"
        ShowContentUrl="~/content/static_movie_folder/ultrafan/members_teaser/members_teaser.html"
        ScheduleStart="2016-12-26T09:01:00"
        ScheduleEnd="2017-02-01T09:01:00"
         />
    <%-- End SnippetContentSwap --%>
    
    
    
      
 
  
   <div class="row">
 <div class="small-12 columns">
 
 
 



<%-- Movie --%>
<nsf:MovieDetail id="Movie" MovieID="209347" runat="server" /> 

    
<nsf:MovieSceneDetailList runat="server"
    id="Scenes" 
    MovieID="209347"
    SampleStillCount="12"
     />
 
 
       





</div><!-- // col  --> </div><!-- // row -->


<div class="row"><div class="small-12 columns"><hr></div></div>



 
 
 <div class="row">
 <div class="columns small-12">
 <br>
<h1>check out exclusive interviews</h1>
 </div>
 </div>
 
 <div class="row">
 <div class="columns small-12">
 <hr>
 </div>
 </div>
 
 

 <div class="row">
 
 <div class="columns small-12 medium-6">
 <h2>chi chi larue</h2>

<video  width="100%"  id="trailer" preload="none" loop controls  poster="https://promovideos.nakedsword.com/content/promos/seedmoney_chichi/chichilarue.jpg">
<source src="https://promovideos.nakedsword.com/content/promos/seedmoney_chichi/Nsf001SbChichi.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
 </div>
 
 <div class="columns small-12 medium-6">
<h2>jeff stryker</h2>

<video  width="100%"  id="trailer" preload="none" loop controls  poster="https://promovideos.nakedsword.com/content/promos/seedmoney_jeffstryker/jeffstryker.jpg">
<source src="https://promovideos.nakedsword.com/content/promos/seedmoney_jeffstryker/Nsf001ScJeffstryker.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
	 
</div>


</div><!-- // row -->

 <div class="row">
 
 <div class="columns small-12 medium-6">
 <h2>jim bentley</h2>

<video  width="100%"  id="trailer" preload="none" loop controls  poster="https://promovideos.nakedsword.com/content/promos/seedmoney_jimbentley/jimbentley.jpg">
<source src="https://promovideos.nakedsword.com/content/promos/seedmoney_jimbentley/Nsf001SdJimbentley.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
 </div>
 
 <div class="columns small-12 medium-6">
<h2>john rutherford</h2>

<video  width="100%"  id="trailer" preload="none" loop controls  poster="https://promovideos.nakedsword.com/content/promos/seedmoney_johnrutherford/johnrutherford.jpg">
<source src="https://promovideos.nakedsword.com/content/promos/seedmoney_johnrutherford/Nsf001SeJohnrutherford.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
	 
</div>


</div><!-- // row -->

 <div class="row">
 
 <div class="columns small-12 medium-6">
 <h2>john waters</h2>

<video  width="100%"  id="trailer" preload="none" loop controls  poster="https://promovideos.nakedsword.com/content/promos/seedmoney_johnwaters/johnwaters.jpg">
<source src="https://promovideos.nakedsword.com/content/promos/seedmoney_johnwaters/Nsf001SJohnwaters.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
 </div>
 
 <div class="columns small-12 medium-6">
<h2>steven scarborough</h2>

<video  width="100%"  id="trailer" preload="none" loop controls  poster="https://promovideos.nakedsword.com/content/promos/seedmoney_stevenscarborough/steven.jpg">
<source src="https://promovideos.nakedsword.com/content/promos/seedmoney_stevenscarborough/Nsf001SgStevenscarborough.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
	 
</div>


</div><!-- // row -->


<div class="row">
 
 <div class="columns small-12 medium-6">
 <h2>tom chase</h2>

<video  width="100%"  id="trailer" preload="none" loop controls  poster="https://promovideos.nakedsword.com/content/promos/seedmoney_tomchase/tomchase.jpg">
<source src="https://promovideos.nakedsword.com/content/promos/seedmoney_tomchase/Nsf001ShTomchase.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
 </div>
 
 <div class="columns small-12 medium-6">
&nbsp;
	 
</div>


</div><!-- // row -->




 

 

 
 <div class="row"><div class="small-12 columns"><hr></div></div>

 <div class="row">
<div class="columns small-12">
 <h2>WATCH THESE FALCON CLASSICS AS SEEN IN SEED MONEY...</h2>
	 </div>
	 </div>





<%-- Search Results --%> 
<nsf:MovieSearchResults runat="server" 
    id="seedmoney" 
    SearchType="playlist"
    SearchHeader=""
    ShowSearchHeader="false"
    ShowSortOptions="false"
    ShowPaging="false"
    SearchTerm="7BF23DDD-F8A3-44AF-A45D-C97B33E3D81D"
     />   

<br>

 
 

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

 <!--  gallery  -->
 
 <%-- Gallery - Portrait --%>
<nsf:StarPictureGallery runat="server"
    id="GalleryPortrait" 
    PictureType="GalleryShot" 
    Orientation="Portrait" 
    ThumbnailPictureWidth="320"
    FullSizePictureWidth="640"
    PictureSizeApproximation="20%"
    MinimumPictureCount="1"
    RenderWithoutContent="true"
    />



<ns:ScriptWriter id="Scripts" runat="server" />  

<!--
<script type='text/javascript' src='/js/jquery.colorbox.js'></script>
<script type='text/javascript' src='/js/jquery.colorbox_swipe.js'></script>
<script type='text/javascript' src='/js/jquery.touchSwipe.min.js'></script>
-->

<script>
$(document).ready(function () {
	
  $('.gallery').colorbox({
        rel: 'gallery',
        transition: "elastic", // fade,none,elastic
        width: "90%",
        height: "90%",
        current: "{current} / {total}",
        previous: "<",
        next: ">",
        close: "close",
       })	
});
</script>

 
 <!-- video -->
<!--<script type='text/javascript'>
    $(document).ready(function () {
        $('#trailer').get(0).play();
    });
</script>-->





</body>
</html>