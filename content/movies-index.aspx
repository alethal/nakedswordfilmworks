<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="MovieIndex" runat="server" />
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
<div id="AllTitlesPage">


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


<div style="padding: .5em 0 0 0;">
<%-- Movies Index Navbar --%>
<nsf:MovieIndexNavbar runat="server"
    id="MovieIndexNavTop" 
    /> 
    </div>
  
<%-- Search Results --%> 
<nsf:MovieSearchResults runat="server"
    id="MovieIndex"
    SearchHeader="All Titles - {0}"
    SearchType="Index"
    ShowSortOptions="false"
    />
<div style="padding: 0em 0 .5em 0;">
<%-- Movies Index Navbar --%>
<nsf:MovieIndexNavbar runat="server"
    id="MovieIndexNavBottom" 
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