<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="Movie" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />
    
<!-- begin google analytics code -->
<!-- #Include virtual="/includes/googleanalytics.aspx" -->
<!-- end google analytics code -->




     <style type="text/css">
.MoreLikeThisResults .large-6 { width: 100%; }
.MoreLikeThisResults .medium-6 { width: 100%; }

</style>
  
  


</head>
<body>
<!-- begin google tag manager -->
<!-- #Include virtual="/includes/googletagmanager.aspx" -->
<!-- end google tagmanager -->
<A NAME="top"></A>
<div id="MovieInfo">
  

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




<%-- Movie --%>
<nsf:MovieDetail id="Movie" runat="server" /> 


 <div class="row"><div class="small-12 columns"><h2>scenes</h2> </div></div>  
<nsf:MovieSceneDetailList runat="server"
    id="Scenes" 
    SampleStillCount="12"
     />
 
 <DIV CLASS="MoreLikeThisResults">
 
 
 
<%-- Unified Search Results --%>
<nsf:MovieAndSceneSearchResults 
   id="MoreLikeThis" 
    SearchType="SimilarToMovie"
    MoviePageSize="8"
    ScenePageSize="8"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false" 
    StartingContentType="Movies" 
    SuppressIfNoResults="true"
    runat="server" />
 
 
 
<%-- 
<nsf:SceneSearchResults runat="server" 
    ID="MoreLikeThis" 
    SearchType="SimilarToMovie"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    /> --%>
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