<%-- Guarantee Members Only --%>
<%--<ns:PageBouncer runat="server" 
    ID="MembersOnlyBouncer" 
    ShowForCustomerProfile="ActiveMember" 
    BounceToUrl="~/welcome"
    />--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Members" runat="server" />
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
<div id="WelcomePage">

<%-- MainNav --%>
<nsf:MainNav runat="server" 
    id="Navigation" 
    />   


 <div class="off-canvas-content"  data-off-canvas-content>


    <!-- ///////////////
    
    PAGE CONTENT
     -->


  
  
  

   
  

 <div class="row expanded collapse"><!-- WelcomeSliderWrap-->
  <div class="small-12 columns text-center">
  logged in<BR>
        <%-- Banner Spotlight Slider Member --%>
<nsf:BannerSpotlightSlider id="LoggedInSlider" runat="server"
    BannerSetID="Member Home" 
              InterchangeMaximumWidth="2001" 
    MaxResults="5"
    Shuffle="true"
    ShuffleExceptPositionsUpTo="1" />  
    
       </div></div><!-- // row / col -->
     



 
     



  <div class="row expanded" style="background-color:#d10000;">
  <div class="small-12 columns text-center">
  <div class="WelcomeMembSubNav"><h3><A HREF="/my/history" class="">my viewing history</A>&nbsp;&nbsp;|&nbsp;&nbsp;<A HREF="/my/favorites" class="">my favorites</A>&nbsp;&nbsp;|&nbsp;&nbsp;<A HREF="mailto:feedback@nakedsword.com?subject=NakedSword Feedback" class="">feedback</A></h3></div>
  </div>
  </div>
  
  
    <!--//////////// Special Promo -->
<!-- #Include virtual="/includes/special_promo.aspx" -->
<!-- /////////// Special Promo -->



<%-- Just Added Movies --%> 
<nsf:MovieSearchResults runat="server"
    id="JustAddedMovies" 
    SearchType="JustAdded"
    SearchTerm="12"
    SearchHeader="Just Added Movies"
    OptionsHeaderText="See all Just Added Movies" 
    OptionsLinkUrl="~/just-added-movies"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="8"
    /> 

<div class="row"><div class="small-12 text-center columns"><hr></div></div>

  
<%-- Search Results --%> 
<nsf:SceneSearchResults  runat="server"
    id="TrendingScenes" 
    SearchType="Trending"
    SearchHeader="Most Watched"
    SuppressIfNoResults="true"
    OptionsHeaderText="See all most watched scenes" 
    OptionsLinkUrl="~/mostwatched"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="4"
     />   

   
 <div class="row"><div class="small-12 text-center columns"><hr></div></div>


<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server"
    id="FeaturedScenes" 
    SearchType="Studio" 
    SearchTerm="22309"
    SearchHeader="NakedSword Originals"
    SortField="Newest"
    OptionsHeaderText="See all NakedSword Original scenes" 
    OptionsLinkUrl="~/nsoriginals"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="4"
    />  


<div class="row"><div class="small-12 text-center columns"><hr></div></div>  

 


<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server"
    id="FeaturedCategory" 
    SearchType="Category" 
    SearchTerm="515"
    SortField="Trending"
     OptionsHeaderText="See all big dick scenes" 
    OptionsLinkUrl="~/theme/big-dick"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="4"
    />  


<div class="row"><div class="small-12 text-center columns"><hr></div></div>  


<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server"
    id="FeaturedScenesFalcon" 
    SearchType="Studio" 
    SearchTerm="19904"
    SortField="Trending"
     OptionsHeaderText="See all falcon scenes" 
    OptionsLinkUrl="~/studios/19904/falcon-studios"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="4"
    />  



<div class="row"><div class="small-12 text-center columns"><hr></div></div>  

<a id='myhistory' name='myhistory'></a>
<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server"
    id="FeaturedScenesNsfw" 
    SearchType="Studio" 
    SearchTerm="22867"
    SortField="Trending"
     OptionsHeaderText="See all nsfw scenes" 
    OptionsLinkUrl="~/studios/22867/nakedsword-film-works"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="4"
    />  




  <div class="row expanded" style="background-color:#d10000;">
  <div class="small-12 columns text-center">
  <div class="WelcomeMembSubNav"><A HREF="/my/history" class="">my viewing history</A>&nbsp;&nbsp;|&nbsp;&nbsp;<A HREF="/my/favorites" class="">my favorites</A></div>
  </div>
  </div>







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
<script type='text/javascript' src='/js/slick.js'></script>
<script type="text/javascript">
    $(document).ready(function(){
      $('.WelcomeMembers_Responsive').slick({
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
		dots: true,
		arrows: true,
		autoplay: true,
         fade: true,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1	
                }
            },
            {
                breakpoint: 700,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1  
                }
            },
            {
                breakpoint: 500,
                settings: {
                   slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
      });
    });
  </script>




</body>
</html>