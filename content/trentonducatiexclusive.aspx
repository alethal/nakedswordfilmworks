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
<div id="NavTrentonExclusive">


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
<h2>trenton exclusive content (when movies are in database they will show up here)</h2>
</div>
</div>


     
     
   


<%-- Studio Branding --%>
<nsf:StudioBrand id="StudioHeader" runat="server" 
    PictureType="Logo" 
    StudioID="22867" />   

<br />





<%-- Unified Search Results --%>
<nsf:MovieAndSceneSearchResults 
   id="NSOriginals" 
    SearchType="Studio"
 	SearchTerm="22867"
    MovieSortField="Newest"
    SceneSortField="Newest"
  	MoviePageSize ="32"
    ScenePageSize="24"
    AllowedSortFields="Newest, MostWatched, Duration, Title"
    ShowSearchHeader="true"
    ShowSortOptions="true"
    ShowPaging="true" 
    StartingContentType="Movies"
    runat="server" />
    



<%-- Search Results 
<nsf:SceneSearchResults id="FeaturedScenes" 
    SearchType="Studio" 
    SearchTerm="22309"
    SortField="Newest"
    ShowSearchHeader="false"
    ShowSortOptions="true"
    ShowPaging="true"
    runat="server" 
    />  --%> 



<%-- Search Results 
<nsf:MovieSearchResults runat="server"
    id="NSOriginalMovies" 
    SearchType="Studio"
    SearchTerm="22309"
    ShowSearchHeader="false"
    ShowSortOptions="true" 
    SortField="Newest"
    ShowPaging="true"
    PageSize="12"
    />--%> 


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