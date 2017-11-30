<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="Movie" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />

     <style type="text/css">


</style>
  
  


</head>
<body>
<A NAME="top"></A>
<div id="NewsletterPage">


<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />    

      

 <div class="off-canvas-content"  data-off-canvas-content>


    <!-- ///////////////
    
    PAGE CONTENT
     -->
<div class="PageContentWrap">

    <div class="row">
  <div class="small-12 columns">
     <h1>Fame Game Contest</h1>
     
 Do you have what it takes to play the #FameGame? Tweet us @Naked_Sword with your best #FameGame
headshot or pet pic and we'll make you your own personalized #FameGame poster! At the end of the month
we will chose our favorites for a chance to win amazing prizes from NakedSword, FleshJack, 
Swiss Navy Lube and more! (Note that if you tweet us your pic we will use it online to promote this contest,
the movie and more. How else do you expect to get famous?)<br><br>
</div></div><!-- // row / col -->

     
      <div class="row">
      <div class="columns small-12 medium-12 large-12">

	 <!-- lyris sign up form -->

  <div style="width: 300px; background-color:transparent; margin-left: auto; margin-right: auto;">
<form action="http://www.up0.net/functions/mailing_list.html" method="post" name="UPTml226734" onSubmit="return (!(UPTvalidateform(document.UPTml226734)));">
<input type="hidden" name="submitaction" value="3">
<input type="hidden" name="mlid" value="226734">
<input type="hidden" name="siteid" value="666711">
<input type="hidden" name="tagtype" value="q2">
<input type="hidden" name="demographics" value="-1">
<input type="hidden" name="redirection" value="http://nakedsword.com/newslettersubscribed">
<input type="hidden" name="uredirection" value="">
<input type="hidden" name="welcome" value="">
<input type="hidden" name="double_optin" value="on">
<input type="hidden" name="append" value="">
<input type="hidden" name="update" value="on">
<input type="hidden" name="activity" value="submit">
  
  <div style="width: 270px; background-color:transparent; float: left;"><input type='text' name='email' value=''  style="width:270px; padding: 10px; font-size: .75em; height: 1.5em;" placeholder="Sign up for deals + events">
	  </div>
	  
	 <div style="width: 25px; background-color:transparent; float: left;">
       <input type="image" name="submit" src="https://spotlight.nakedcdn.com/nakedsword/img/submit_arrow.png" border="0" alt="Submit" />
		  </div>
	  </div>
  
  <script language="Javascript">function emailCheck (emailStr) {
var emailPat=/^(.+)@(.+)$/;
var specialChars="\\(\\)<>@,;:\\\\\\\"\\.\\[\\]";
var validChars="\[^\\s" + specialChars + "\]";
var quotedUser="(\"[^\"]*\")";
var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;
var atom=validChars + '+';
var word="(" + atom + "|" + quotedUser + ")";
var userPat=new RegExp("^" + word + "(\\." + word + ")*$");
var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$");
var matchArray=emailStr.match(emailPat);
if (matchArray==null) {
    alert("Email address seems incorrect (check @ and .'s)");
    return false;
}
var user=matchArray[1];
var domain=matchArray[2];
if (user.match(userPat)==null) {
    alert("The username doesn't seem to be valid.");
    return false;
}
var IPArray=domain.match(ipDomainPat);
if (IPArray!=null) {
      for (var i=1;i<=4;i++) {
        if (IPArray[i]>255) {
            alert("Destination IP address is invalid!");
        return false;
        }
    }
    return true;
}
var domainArray=domain.match(domainPat);
if (domainArray==null) {
    alert("The domain name doesn't seem to be valid.");
    return false;
}
var atomPat=new RegExp(atom,"g");
var domArr=domain.match(atomPat);
var len=domArr.length;
if ((domArr[domArr.length-1] != "info") &&
    (domArr[domArr.length-1] != "name") &&
    (domArr[domArr.length-1] != "arpa") &&
    (domArr[domArr.length-1] != "coop") &&
    (domArr[domArr.length-1] != "aero")) {
        if (domArr[domArr.length-1].length<2 ||
            domArr[domArr.length-1].length>3) {
                alert("The address must end in a three-letter domain, or two letter country.");
                return false;
        }
}
if (len<2) {
   var errStr="This address is missing a hostname!";
   alert(errStr);
   return false;
}
return true;
}
function UPTvalidateform(thisform)
{
	
	if (emailCheck(thisform.email.value)) 
	{	

        if ((document.getElementById('unsubscribe') 
            && document.getElementById('unsubscribe').checked) && (document.getElementById('showpopup') && document.getElementById('showpopup').value == "on")) {
	   	alert('Thank you, now you are unsubscribed!'); 
	}
	else if(( (document.getElementById('unsubscribe')
            && !document.getElementById('unsubscribe').checked) || (!document.getElementById('unsubscribe')) ) && (document.getElementById('showpopup') && document.getElementById('showpopup').value == "on")){
        	alert('Thank you for signing up!');
        }
		return false;
	}
	else
	{
		return true;
	}
}
</script></form>

		
	  
 
 <!-- // lyris sign up form -->
 
 
</div>
</div>



   
 


<div class="row"><div class="small-12 text-center columns"><hr></div></div>

  
<%-- Search Results --%> 
<nsf:SceneSearchResults  runat="server"
    id="TrendingScenes404" 
    SearchType="Trending"
    SearchHeader="Trending"
    SuppressIfNoResults="true"
    OptionsHeaderText="See all trending scenes" 
    OptionsLinkUrl="~/trending"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="6"
     />   
     
     


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