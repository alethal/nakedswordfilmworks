<%-- Guarantee Members Only MEMBER Page--%>
<%--ns:PageBouncer runat="server" 
    ID="MembersOnlyBouncerPhoenixRising" 
    ShowForCustomerProfile="SignedIn" 
    BounceToUrl="~/phoenix-rising"
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
<h2>"phoenix rising" - watch now!</h2>
</div>
</div>


      
 
  
   <div class="row">
 <div class="small-12 columns">
 
 
 



<%-- Movie --%>
<nsf:MovieDetail id="Movie" MovieID="206845" runat="server" /> 

    
<nsf:MovieSceneDetailList runat="server"
    id="Scenes" 
    MovieID="206845"
    SampleStillCount="12"
     />
 
 
       





</div><!-- // col  --> </div><!-- // row -->

  
 <div class="row">
 <div class="columns small-12">
 <hr>
 </div>
 </div>
 
 
 
 



<DIV CLASS="MoreLikeThisResults">
<nsf:SceneSearchResults runat="server" 
    ID="MoreLikeThis" 
    SearchTerm="206845"
    SearchType="SimilarToMovie"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    /> 
</div>
 
 
 

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