<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="SearchResults" runat="server" />
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
<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />   
    
    <div class="PageContentWrap">
    
     <!--//////////// Special Promo -->
<!-- #Include virtual="/includes/special_promo.aspx" -->
<!-- /////////// Special Promo -->



 
<%-- Unified Search Results --%>
<nsf:MovieAndSceneSearchResults 
   id="SearchResults" 
    MoviePageSize="32"
    ScenePageSize="24"
    AllowedSortFields="Newest, MostWatched, Duration, Title"
    ShowSearchHeader="true"
    ShowSortOptions="true"
    ShowPaging="true" 
    StartingContentType="Movies"
    runat="server" />
    
    
    
  
<%-- Search Results --%>
<%--nsf:SceneSearchResults id="SearchResults" 
    ShowSearchHeader="true"
    ShowSortOptions="true"
    ShowPaging="true"
    runat="server" /--%>    
 
</div><!-- // PageContentWrap -->

  <!--  PageSize="1" -->
       
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