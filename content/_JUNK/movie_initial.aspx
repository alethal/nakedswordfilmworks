<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="Movie" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />
<!-- #MovieInfo .off-canvas-content { margin:-100px 0 0 0 !important; } -->

     <style type="text/css">


 .MovieInfoHero .MIHeroSlide{
      display: none;
    }
    .MovieInfoHero .MIHeroSlide:first-child {
      display: block; 
    }
    .MovieInfoHero.slick-initialized .MIHeroSlide {
      display: block;
    }



</style>
  
  


</head>
<body>
<A NAME="top"></A>
<div id="MovieInfo">
  

<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />    

      

 <div class="off-canvas-content"  data-off-canvas-content>


    <!-- ///////////////
    
    PAGE CONTENT
     -->

  <!--<div style="margin: 100px 0 0 0;">&nbsp;</div>-->

<%-- Movie --%>
<nsf:MovieDetail id="Movie" runat="server" /> 

<%-- Scenes --%>
<nsf:MovieSceneDetailList runat="server"
    id="Scenes" 
    SampleStillCount="12"
     />

<%-- More Like This Movie --%> 
<nsf:SceneSearchResults runat="server" 
    ID="MoreLikeThis" 
    SearchType="SimilarToMovie"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    /> 
    

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




<script type="text/javascript">
    $(document).ready(function(){
      $('.MovieInfoHero').slick({
       //setting-name: setting-value
      });
    });
  </script>


</body>
</html>