<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="Star" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />
    
<!-- begin google analytics code -->
<!-- #Include virtual="/includes/googleanalytics.aspx" -->
<!-- end google analytics code -->


</head>
<body>
<!-- begin google tag manager -->
<!-- #Include virtual="/includes/googletagmanager.aspx" -->
<!-- end google tagmanager -->
<A NAME="top"></A>
<div id="StarsPage">





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
<div class="small-12">
<img src="https://spotlight.nakedcdn.com/nakedsword/img/5spots/dec14_2016/week2_dec_5-spot_film_fest_harder_L.jpg" width="100%">
</div>
</div>

   
<%-- Star --%>
<nsf:StarDetail runat="server" 
    id="Star" 
    ScenesJumpTag="xScenes"
    StarID="103323"
     />  

<%-- Gallery - Portrait --%>
<nsf:StarPictureGallery runat="server"
    id="GalleryPortrait" 
    PictureType="GalleryShot" 
    Orientation="Portrait" 
    ThumbnailPictureWidth="320"
    FullSizePictureWidth="640"
    PictureSizeApproximation="20%"
    MinimumPictureCount="1"
    StarID="103323"
    />

<p />

<%-- Gallery - Landscape --%>
<nsf:StarPictureGallery runat="server"
    id="GalleryLandscape" 
    PictureType="GalleryShot" 
    Orientation="Landscape" 
    ThumbnailPictureWidth="640"
    FullSizePictureWidth="1024" 
    PictureSizeApproximation="20%"
    MinimumPictureCount="1"
    StarID="103323"
    />

<p />



<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server" 
    id="Scenes" 
    SearchType="Star"
    SearchHeader="{0} Scenes"
    SortField="Newest"
    ShowSearchHeader="true"
    ShowSortOptions="true"
    ShowPaging="true"
    SearchTerm="103323"
     />   


<%-- Stars Index Navbar --%>
<%--nsf:StarIndexNavbar runat="server"
    id="StarIndexNav" 
    Caption="browse our enormous LIST OF OVER 25,000 STARS"
    /--%>

<%-- Metrics --%>
<nsMetrics:AnalyticsTracker ID="Tracker" runat="server" 
     ActionType="StarClick" /> 

   
   
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


 

<ns:ScriptWriter id="Scripts" runat="server" />  
</body>
</html>