<ns:Redirector runat="server"
    id="Redirect" 
    RedirectUrl="https://join.nakedsword.com/track/MTAwMjYxLjE4LjEuMTEuMC4wLjAuMC4w/join"
    />

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="Star" runat="server" />
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
<div id="StarsPage">





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
<div class="small-12">
<A HREF="/join"><img src="https://spotlight.nakedcdn.com/nakedsword/img/affiliateimages/fleshjack/fleshjack_nakedsword.jpg" width="100%"></A>
</div>
</div>

 

<p />

<div class="row">

 <div class="columns small-12 medium-6 large-6">
<h2>featured themes</h2>
</div>
</div>


<%-- Category Billboard --%>
<nsf:CategoryBillboard id="FeaturedThemes" runat="server" 
    MaxResults="6" />  
	</div>
	
	
 <div class="row"> 
  <div class="columns small-12 medium-6 large-6">
<h2>featured studios</h2>
</div>
</div>

   <%-- Studio Billboard --%>
<nsf:StudioBillboard id="FeaturedStudios" runat="server" 
    MaxResults="6" />   
     
	   
   
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