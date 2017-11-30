<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="My Favorites" runat="server" />
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
<div id="MyAccountPage">


<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />    



 <div class="off-canvas-content"  data-off-canvas-content>


    <!-- ///////////////
    
    PAGE CONTENT
     -->
<div class="PageContentWrap">

  <div ID="MyFavoritesPage">
<%-- My Favorites --%>
<nsf:SceneSearchResults runat="server"
    id="MyFavorites" 
    SearchType="MemberFavorites"
    SearchHeader="My Favorites"
    SuppressIfNoResults="false"
    NoResultsMessageText="you don't have any favorites. start your collection now!"
    OptionsHeaderText="See all my favorites" 
    OptionsLinkUrl="~/my/favorites"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="true"
    PageSize="24"
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
  

  

<ns:ScriptWriter id="Scripts" runat="server" />  
</body>
</html>