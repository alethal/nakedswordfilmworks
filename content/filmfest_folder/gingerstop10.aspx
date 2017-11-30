<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Top 10 Scenes" runat="server" />
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
<div id="PromoPage">


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
<h2>Top 10 Gingers</h2>
</div>
</div>




<!-- 
<div class="row">
<div class="columns small-12">
THIS WILL BE THE BRETT CORRIGAN BANNER<br>
<img src="https://spotlight.nakedcdn.com/nakedsword/img/special_promo/nye_iframe1015x150_2016.jpg" width="100%">
<BR><BR>
</div>
</div>  -->


 

   

  
   <div class="row">
 <div class="small-12 columns">


<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server" 
    id="top10gingers" 
    SearchType="playlist"
    SearchHeader=""
    ShowSearchHeader="false"
    ShowSortOptions="false"
    ShowPaging="false"
    SearchTerm="B213390B-C5E8-4561-988A-43673D80A900"
     />   





</div><!-- // col  --> </div><!-- // row -->






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