<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Sign In" runat="server" />
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
<div id="SigninPage">


<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />    

      
<div class="off-canvas-content"  data-off-canvas-content>


    <!-- ///////////////
    
    PAGE CONTENT
     -->

  <div class="PageContentWrap">
  

   <div class="row medium-uncollapse large-uncollapse small-uncollapse SignInRowOverall">
   
   <div class="medium-12 small-12 columns show-for-small hide-for-large"><h3>sign in</h3></div>
   
   
     <div class="medium-12 small-12 columns show-for-small hide-for-large"><img src="https://spotlight.nakedcdn.com/nakedsword/img/signin/mobile_signin.jpg" border="0" width="100%"></div>
     
     
  <div class="medium-12 small-12 large-6 columns">
   
  
  <!-- signin form -->
  <div class="row">
  <div class="small-12 columns">

 
 
 

 <!-- Sign In Sub Form-->
 
     <%-- SignInForm --%> 
<nsf:SignInForm id="SignIn" runat="server" /> 
      <!-- //Sign In Sub Form-->
    
   <div class="row"><div class="small-12 text-center columns"><hr></div></div>
     
 <!-- forgot password -->
 <div class="row">
    <div class="small-12 columns">


    
    <ul class="vertical menu ResetPasswordForm" data-accordion-menu>
  <li>
    <a href="#" class="ResetPasswordFormLink">reset password? <span class="ResetPasswordFormLinkClick">click here</span></a>
    <ul class="menu vertical nested">
      <li>

      <%-- Reset Password iFrame --%>
      <nats:ResetPasswordFrame runat="server" id="ResetPassword" />

      </li>
    </ul>
  </li>
</ul>



    </div>
    <!-- // forgot password -->
    
       <div class="small-12 text-center columns"><hr></div>
    
    
     
     <div class="small-12 text-center columns"><div class="button expanded SignInJoinBtn"><A HREF="/join">not a member? join now</A></div></div>
   
    
    
  </div><!-- // row SignInForm -->
</form>


 
 </div><!-- // columns -->
 </div><!-- // row -->
 
 <!-- // signin form -->
 

  </div><!--// col -->
  
   <div class="large-6 medium-6 small-12 columns hide-for-small show-for-large"><img src="https://spotlight.nakedcdn.com/trentonducati/img/signin/desktop_signin.png" border="0" width="100%"></div>
   
  </div><!--// row -->
  
       
       
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
<!-- Include virtual="/includes/spectre-footer.aspx" -->
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