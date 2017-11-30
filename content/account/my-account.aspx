<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="My Account" runat="server" />
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

   <div class="row medium-uncollapse large-uncollapse small-uncollapse">
   
   <div class="medium-12 small-12 columns show-for-small hide-for-large"><h3>my account</h3></div>
   
   <!--
   <div data-interchange="[assets/partials/interchange-default.html, small], [assets/partials/interchange-medium.html, medium], [assets/partials/interchange-large.html, large]"></div>
   -->
   
   
   
      <div class="medium-12 small-12 columns show-for-small hide-for-large"><img src="https://spotlight.nakedcdn.com/nakedsword/img/signin/mobile_signin.jpg" border="0" width="100%"></div>
     
     
  <div class="medium-12 small-12 large-6 columns">
   
  
  <!-- signin form -->
  <div class="row">
  <div class="small-12 columns">

 
 
 

   
<%-- Account Detail --%>
<nsfAccount:AccountDetail runat="server" 
    id="MyAccount" />    
    
    
     <div class="row"><div class="small-12 text-center columns"><hr></div></div>
     
 <!-- forgot password -->
 <div class="row">
    <div class="small-12 columns">
    
    <ul class="vertical menu ResetPasswordForm" data-accordion-menu>
  <li>
    <a href="#" class="ResetPasswordFormLink">reset password? <span class="ResetPasswordFormLinkClick">click here</span></a>
    <ul class="menu vertical nested">
      <li><%-- Reset Password iFrame --%>
      <nats:ResetPasswordFrame runat="server"
        id="ResetPassword" />
</li>
    </ul>
  </li>
</ul>
    </div>
    <!-- // forgot password -->
    
       <div class="small-12 text-center columns"><hr></div>
    
     <!--<div class="small-12 text-center columns"><div class="button expanded AccountNavBtn"><A HREF="/my/favorites">see my favorites</A></div></div>-->
     
     <div class="small-12 text-center columns"><div class="button expanded AccountNavBtn"><A HREF="/my/history">see my viewing history</A></div></div>
     
     <div class="small-12 text-center columns"><div class="button expanded AccountNavBtn"><A HREF="#customerservice">customer service</A></div></div>
   
    
    
  </div><!-- // row SignInForm -->
</form>


 
 </div><!-- // columns -->
 </div><!-- // row -->
 
 <!-- // signin form -->
 

  </div><!--// col -->
  
   <div class="medium-6 small-12 columns hide-for-small show-for-large"><img src="https://spotlight.nakedcdn.com/nakedsword/img/signin/desktop_signin.png" border="0" width="100%"></div>
   
  </div><!--// row -->
     
     
 
   


 <div class="row">
      <A NAME="myfavorites"><div class="columns small-12"></A>
<hr>
</div></div>


<%-- My Favorites --%>
<nsf:SceneSearchResults runat="server"
    id="MyFavorites" 
    SearchType="MemberFavorites"
    SearchHeader="My Favorites"
    SuppressIfNoResults="false"
    NoResultsMessageText="You don't have any favorites. start your collection now!"
    OptionsHeaderText="See all my favorites" 
    OptionsLinkUrl="~/my/favorites"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="6"
    />


     <div class="row">
     <A NAME="myviewinghistory"><div class="columns small-12"> </A>
<hr>
</div></div>



<%-- My Viewing History --%>
<nsf:SceneSearchResults runat="server"
    id="MyViewingHistory" 
    SearchType="RecentlyViewed"
    SuppressIfNoResults="false"
    OptionsHeaderText="See all my viewing history" 
    OptionsLinkUrl="~/my/history"
    NoResultsMessageText="you don't have a viewing history. start watching now!"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="6"
    />



 <div class="row">
      <A NAME="customerservice"><div class="columns small-12"></A>
<hr>
</div></div>




 


<%-- Contact Us Content --%>
<ns:ContentInclude runat="server"
    id="ContactUs"
    ShowContentUrl="~/includes/page_content/contactus_page_content.html"
    />
<%-- // Contact Us Content --%>


<div class="row">
<div class="columns small-12">
<img src="/img/my-account.jpg">

		</div><!-- // columns -->
	</div><!-- // row -->




</div><!-- // PageContentWrap -->

<BR>



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