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
<h2>Top 10 NakedSword Originals Scenes of 2016</h2>
</div>
</div>




 
<div class="row">
<div class="columns small-12">
<img src="https://spotlight.nakedcdn.com/nakedsword/img/special_promo/nye_iframe1015x150_2016.jpg" width="100%">
<BR><BR>
</div>
</div>  


  
<div class="row">
 <div class="medium-12 small-12 columns">
 
 
 <video  width="100%"  id="trailer" preload="none" loop controls  poster="https://promovideos.nakedsword.com/content/promos/top10nsoriginalscenes2016/top10nsoriginalscenes2016.jpg">
<source src="https://promovideos.nakedsword.com/content/promos/top10nsoriginalscenes2016/top10nsoriginalscenes2016.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>




<BR><BR>

</div><!-- // col  --> 



</div>




   

  
   <div class="row">
 <div class="small-12 columns">


<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server" 
    id="top10" 
    SearchType="playlist"
    SearchHeader=""
    ShowSearchHeader="false"
    ShowSortOptions="false"
    ShowPaging="false"
    SearchTerm="4DC21DF2-ADEF-4DF7-BFB7-4CDE0820B7C8"
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