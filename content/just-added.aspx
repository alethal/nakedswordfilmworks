<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Just Added" runat="server" />
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
<div id="JustAddedPage">

 
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


<%-- Unified Search Results --%>
<nsf:MovieAndSceneSearchResults 
   id="JustAdded" 
    SearchType="JustAdded"
    SearchTerm="300"
    MovieSortField="Newest"
    SceneSortField="Newest"
    SearchHeader="Just Added"
    MoviePageSize ="32"
    ScenePageSize="24"
    AllowedSortFields="Newest, MostWatched, Duration, Title"
    ShowSearchHeader="true"
    ShowSortOptions="true"
    ShowPaging="true" 
    StartingContentType="Movies"
    runat="server" />
    
   
 

<%-- Just Added Movies --%> 
<%--nsf:MovieSearchResults runat="server"
    id="JustAddedMovies" 
    SearchType="JustAdded"
    SearchTerm="12"
    SearchHeader="Just Added Movies"
    OptionsHeaderText="See all Just Added Movies" 
    OptionsLinkUrl="~/just-added-movies"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    /--%> 


  
<%-- Just Added Scenes --%> 
<%--nsf:SceneSearchResults runat="server"
    id="JustAddedScenes" 
    SearchType="JustAdded"
    SearchTerm="6"
    SearchHeader="Just Added Scenes"
    OptionsHeaderText="See all Just Added Scenes" 
    OptionsLinkUrl="~/just-added-scenes"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    /--%> 


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