<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Trenton Ducati Exclusive" runat="server" />
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
<div id="NavTrentonAllMovies">


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


     
       <!--<div class="row">
    
      <div class="columns small-12 medium-12 large-12">
<h2>NS Originals</h2>
</div>
</div>-->

  

   
<%-- Star --%>
<nsf:StarDetail runat="server" 
    id="Star" 
    ScenesJumpTag="xScenes"
    StarID="90408"
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
    StarID="90408"
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
    StarID="90408"
    />

<p />

  
    
      <%-- Search Results --%> 
<nsf:MovieSearchResults runat="server"
    id="TrentonDucatiOriginals" 
    SearchType="Studio" 
    SearchTerm="22981"
    SearchHeader="trenton ducati originals"
    SortField="Newest"
    OptionsHeaderText="see more trenton ducati originals" 
    OptionsLinkUrl="~/studios/22981/trentonducati"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="4"
    />  
    
      
          
 

<%-- Unified Search Results --%>
<nsf:MovieAndSceneSearchResults 
   id="TrentonAllMovies" 
    SearchType="Star"
    SearchTerm="90408"
    MovieSortField="Newest"
    SceneSortField="Newest"
    SearchHeader="all trenton ducati movies"
    MoviePageSize ="32"
    ScenePageSize="24"
    AllowedSortFields="MostWatched, Newest, Duration, Title"
    ShowSearchHeader="true"
    ShowSortOptions="true"
    ShowPaging="true" 
    StartingContentType="Movies"
    ForceStartingContentType="true"
    runat="server" />
    
          
     
<%-- Search Results 
<nsf:MovieSearchResults runat="server"
    id="FeaturedScenesTrentonMoviesAll" 
    SearchType="Star" 
    SearchTerm="90408"
    SearchHeader="trenton ducati movies"
    SortField="Newest"
    OptionsHeaderText="See all trenton ducati movies" 
    OptionsLinkUrl="/stars/90408/trenton-ducati"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="8"
    />  --%> 
    
     
   



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