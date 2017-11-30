<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="ThemeHeader" runat="server" />
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
<div id="ThemePage">


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



<%-- Theme Branding --%>
<nsf:CategoryBrand id="ThemeHeader" runat="server" PictureType="header" /> 
    
      
        
<%-- Unified Search Results --%>
<nsf:MovieAndSceneSearchResults id="Theme"
    SearchType="Category"
    MovieSortField="Newest"
    SceneSortField="Newest"
    MoviePageSize="32"
    ScenePageSize="24"
    AllowedSortFields="Newest, MostWatched, Duration, Title"
    ShowSearchHeader="false"
    ShowSortOptions="true"
    ShowPaging="true"
    StartingContentType="Movies"
    SuppressIfNoResults="true"
    runat="server" />
    
    

<%-- Search Results
<nsf:SceneSearchResults id="FeaturedScenes" 
    SearchType="Category" 
    SortField="Newest"
    ShowSearchHeader="false"
    ShowSortOptions="true"
    ShowPaging="true"
    runat="server" />   --%> 

<%-- Metrics --%>
<nsMetrics:AnalyticsTracker ID="Tracker" runat="server"  ActionType="ThemeClick" /> 


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