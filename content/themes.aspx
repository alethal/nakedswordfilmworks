<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Themes" runat="server" />
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



        <div class="row">
    
      <div class="columns small-12 medium-6 large-6">
<h2>featured themes</h2>
</div>
</div>


<%-- Category Billboard --%>
<nsf:CategoryBillboard id="FeaturedThemes" runat="server" 
    MaxResults="6" />  

<div class="row">
    <div class="columns small-12 medium-6 large-6">
        <h2>all themes</h2>
    </div>
</div><!-- // row -->
      
<div class="row">
   
<%-- Category Index --%>
<nsf:CategoryIndex id="AllThemes" runat="server" />  

</div><!-- row -->



<%-- sex acts --%>
<div class="row">
   <div class="columns small-12">
       <hr class="SexActsHr" />
   </div>
</div><!-- // row -->

<div class="row">
    <div class="columns small-12 medium-6 large-6">
        <h2>all sex acts</h2>
    </div>
</div><!-- // row -->

<div class="row">

<%-- Sex Act Index --%>
<nsf:SexActIndex id="AllSexActs" runat="server" />  

</div><!-- // row -->

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