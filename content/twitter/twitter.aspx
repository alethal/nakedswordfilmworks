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

::-webkit-input-placeholder {
	color: #ffffff !important;
	font-size: 1em;
	text-align: center;
}

:-moz-placeholder {
	color: #ffffff !important;
	font-size: 1em;
	text-align: center;
}

::-moz-placeholder {
	color: #ffffff !important;
	font-size: 1em;
	text-align: center;
}

:-ms-input-placeholder {
	color: #ffffff !important;
	font-size: 1em;
	text-align: center;
}
		 
input{
   text-align:center;
}

		 .ContestInputWrap {width: 100%; background-color:transparent; float: left; }
		 .ContestInput {width:100%; background-color:#3f86de;  padding: 10px; font-size: 2em; height:3em; border-radius: 5px;}
		 .SubmitWrap {margin-left: auto; margin-right: auto; text-align: center;}
		 .SubmitBtn {background-color:#fc0; color:#fff !important; border:0px; width: 100%; padding: 10px; font-size: 2em; height:3em; border-radius: 5px;}
		 .ContestText { text-align: center; font-size: 1.25rem; padding: 10px 0; }
		 
@media (max-width: 720px) {
   .ContestInput { font-size: 1em; height:2em; }
	.SubmitBtn { font-size: 1em; height:2em; }
	.ContestText { font-size: .75rem;  }
 
}
		 
		 
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
     <h1>Twitter</h1><div class="ContestText">
	  </div>
	  
</div></div><!-- // row / col -->

    
    <div class="row">
      <div class="columns small-12 medium-12 large-12">
      
	<!-- twitter feed -->
		
	<a class="twitter-timeline" href="https://twitter.com/Naked_Sword">Tweets by Naked_Sword</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>	
		
		<!-- // twitter feed  -->

		</div>
		</div>
    

     
      <div class="row">
      <div class="columns small-12 medium-12 large-12">
      
      
      
	 
 
     
     
      
      
      
       
       <!---NO OPT IN - <BR>

<div style="width: 200px; background-color:transparent; margin-left: auto; margin-right: auto;">



<form action="http://www.up0.net/functions/mailing_list.html" method="post" name="UPTml226747" onSubmit="return (!(UPTvalidateform(document.UPTml226747)));" style="margin: 0px; padding: 0px; text-align:left;">
<input type="hidden" name="submitaction" value="3">
<input type="hidden" name="mlid" value="226747">
<input type="hidden" name="siteid" value="666711">
<input type="hidden" name="tagtype" value="q2">
<input type="hidden" name="demographics" value="-1">
<input type="hidden" name="redirection" value="http://www.nakedsword.com/thelayovercontestconfirmation">
<input type="hidden" name="uredirection" value="">
<input type="hidden" name="welcome" value="">
<input type="hidden" name="double_optin" value="off">
<input type="hidden" name="append" value="">
<input type="hidden" name="update" value="">
<input type="hidden" name="activity" value="submit">

<div style="width: 270px; background-color:transparent; float: left;"><input type='text' name='email' value=''  style="width:180px; padding: 10px; font-size: .75em; height: 2em; border-radius: 5px;" placeholder="GET THE NEWSLETTER"></div>




<BR><div style="margin-left: auto; margin-right: auto; text-align: center;">
<input type="submit" name="SubmitButton" value="SUBSCRIBE" id="SubmitButton" style="background-color:#fc0; color:#fff !important; border:0px; border-radius: 10px;"></div>
</div></div>
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
</script></form>-->
		 

		
	  
 
 <!-- // lyris sign up form -->
 

 

 
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