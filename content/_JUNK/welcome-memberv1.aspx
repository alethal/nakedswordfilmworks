<%-- Guarantee Members Only --%>
<ns:PageBouncer runat="server" 
    ID="MembersOnlyBouncer" 
    ShowForCustomerProfile="ActiveMember" 
    BounceToUrl="~/welcome"
    />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Members" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />
</head>
<body>
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


       <div class="row expanded collapse">
  <div class="small-12 columns text-center">
    
  <div class="WelcomeMembers_Responsive">
  
   <!-- Welcome Slide -->
    <div class="WelcomeSlide"><a href='/join'><img data-interchange="[/img/5spots/oct_wk1_16/stagpervert_sml.jpg, small], [/img/5spots/oct_wk1_16/stagpervert_med.jpg, medium], [/img/5spots/oct_wk1_16/stagpervert_lrg.jpg, large]" width="100%"></a></div><!-- // WelcomeSlide -->
      
      
      <!-- Welcome Slide -->
    <div class="WelcomeSlide"><a href='/join'><img data-interchange="[/img/5spots/oct_wk1_16/belami_sml.jpg, small], [/img/5spots/oct_wk1_16/belami_med.jpg, medium], [/img/5spots/oct_wk1_16/belami_lrg.jpg, large]" width="100%"></a></div><!-- // WelcomeSlide -->
      
       <!-- Welcome Slide -->
    <div class="WelcomeSlide"><a href='/join'><img data-interchange="[/img/5spots/oct_wk1_16/cockyboys_sml.jpg, small], [/img/5spots/oct_wk1_16/cockyboys_med.jpg, medium], [/img/5spots/oct_wk1_16/cockyboys_lrg.jpg, large]" width="100%"></a></div><!-- // WelcomeSlide -->
      
      
       <!-- Welcome Slide -->
    <div class="WelcomeSlide"><a href='/join'><img data-interchange="[/img/5spots/oct_wk1_16/snl_sml.jpg, small], [/img/5spots/oct_wk1_16/snl_med.jpg, medium], [/img/5spots/oct_wk1_16/snl_lrg.jpg, large]" width="100%"></a></div><!-- // WelcomeSlide -->
      
      
      <!-- Welcome Slide -->
    <div class="WelcomeSlide"><a href='/join'><img data-interchange="[/img/5spots/oct_wk1_16/jalif_sml.jpg, small], [/img/5spots/oct_wk1_16/jalif_med.jpg, medium], [/img/5spots/oct_wk1_16/jalif_lrg.jpg, large]" width="100%"></a></div><!-- // WelcomeSlide -->

  
   
  </div><!-- // Welcome_Responsive -->
       </div></div><!-- // row / col -->





     <div class="row collapse"><!--style="z-index: -1; margin-top: -75px; position: relative; text-align: center;"-->
  <div class="small-12 columns text-center">
     
<%-- Begin SnippetRandomizer --%>
    <ns:ContentRotator runat="server"
        id="JoinBtn2"
        HideForCustomerProfile=""
        ShowContentVirtualFolder="~/content/memb_welcome_folder/"
         />
    <%-- End SnippetRandomizer --%>


<div style="z-index: 3; top: -45px; position: relative; margin-bottom:-45px;">
<div class="row collapse WelcomeLoggedInSubNav">

    
     <div class="large-3 small-3 text-center columns"><div class="button expanded WelcomeLoggedInBtn"><A HREF="#myfavorites">see my favorites</A></div></div>
     
     <div class="large-3 small-3 text-center columns"><div class="button expanded WelcomeLoggedInBtn"><A HREF="#myviewinghistory">see my viewing history</A></div></div>
     
     <div class="large-3 small-3 text-center columns"><div class="button expanded WelcomeLoggedInBtn"><A HREF="#customerservice">see what's just added</A></div></div>

     <div class="large-3 small-3 text-center columns"><div class="button expanded WelcomeLoggedInBtn"><A HREF="#customerservice">see what's trending</A></div></div>
</div>
</div>


       </div>
       </div><!-- // row / col -->






<%-- Search Results --%> 
<nsf:SceneSearchResults  runat="server"
    id="JustAddedScenes" 
     SearchType="JustAdded"
    SearchHeader="Just Added"
    SuppressIfNoResults="true"
    OptionsHeaderText="See all just added scenes" 
    OptionsLinkUrl="~/just-added"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="6"
     />   



<div class="row"><div class="small-12 text-center columns"><hr></div></div>

  
<%-- Search Results --%> 
<nsf:SceneSearchResults  runat="server"
    id="TrendingScenes" 
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

   
 


<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server"
    id="FeaturedScenes" 
    SearchType="Studio" 
    SearchTerm="22309"
    SortField="Trending"
     OptionsHeaderText="See all NakedSword Original scenes" 
    OptionsLinkUrl="~/trending"
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
    SortField="Newest"
     OptionsHeaderText="See all big dick scenes" 
    OptionsLinkUrl="~/theme/big-dick"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="4"
    />  


<div class="row"><div class="small-12 text-center columns"><hr></div></div>  



<%-- My Viewing History --%>
<nsf:SceneSearchResults runat="server"
    id="MyViewingHistory" 
    SearchType="RecentlyViewed"
    SearchHeader="My Viewing History"
    SuppressIfNoResults="true"
    OptionsHeaderText="See all my viewing history" 
    OptionsLinkUrl="~/my/history"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="6"
    />




<div class="row"><div class="small-12 text-center columns"><hr></div></div>


   
<%-- My Favorites --%>
<nsf:SceneSearchResults runat="server"
    id="MyFavorites" 
    SearchType="MemberFavorites"
    SearchHeader="My Favorites"
    SuppressIfNoResults="true"
    OptionsHeaderText="See all my favorites" 
    OptionsLinkUrl="~/my/favorites"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="6"
    />

    <div class="row"><div class="small-12 text-center columns"><hr></div></div>





<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server"
    id="FeaturedScenes2" 
    SearchType="Studio" 
    SearchTerm="19904"
    SortField="Newest"
     OptionsHeaderText="See all Falcon Studios scenes" 
    OptionsLinkUrl="~/studios/falcon-studios"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="4"
    />  


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
		arrows: false,
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