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


</head>
<body>
<!-- begin google tag manager -->
<!-- #Include virtual="/includes/googletagmanager.aspx" -->
<!-- end google tagmanager -->
<A NAME="top"></A>
<div id="SpecialPromoPage">


<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />    

      

 <div class="off-canvas-content"  data-off-canvas-content>


    <!-- ///////////////
    
    PAGE CONTENT
     -->

<div class="PageContentWrap">


    
<div class="row">
<div class="columns small-12 medium-12 large-12">
<h2>Welcome new member! Get Your Free Fifi!</h2>
</div>
</div>





<%-- Begin SnippetContentSwap --%>
    <nsf:ContentInclude runat="server"
        id="FifiFormControl"
        ShowForCountryCode=""
        ShowForAffiliateStatus=""
        FallbackContentUrl="~/content/special_promo/fifi_notmemberneedtologin.html"
        HideForCustomerProfile=""
        ShowForCustomerProfile="ActiveMember"
        ShowContentUrl="~/content/special_promo/fifi_memberwithform.html"
         />
    <%-- End SnippetContentSwap --%>



 


<%-- Contact Us Content --%>
<ns:ContentInclude runat="server"
    id="ContactUs"
    ShowContentUrl="~/includes/page_content/contactus_page_content.html"
    />
<%-- // Contact Us Content --%>



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