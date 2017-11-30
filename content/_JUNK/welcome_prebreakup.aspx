<%-- Guarantee NonMembers Only --%>
<ns:PageBouncer runat="server" 
    ID="TourBouncer" 
    ShowForCustomerProfile="SignedOut" 
    BounceToUrl="~/members"
    />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Welcome" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />

<style type="text/css">
.HPCategories2 .slick-slide {
	height: 36px;
	line-height: 24px;
}
.HPCategories2 .slick-slide,
.HPCategories2 .slick-slide:hover,
.HPCategories2 .slick-slide:active {
	background: none;
}
.HPCategories2 .slick-current {
	color: #FFF;
	font-size: 22px;
}
.HPCategories2 .slick-next,
.HPCategories2 .slick-prev {
	width: 20px;
	height: 23px;
}
.HPCategories2 .slick-slide,
.HPCategories2 .slick-slide:hover {
	outline: none;
}
</style>
  
<!--  
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
jQuery.noConflict();
jQuery(document).ready(function($){
  $('.ChannelJoinBtn img').each(function(){
 $(this).removeAttr('width')
 $(this).removeAttr('height');
 });
});
</script>-->

</head>
<body>
<A NAME="top"></A>
<div id="WelcomePage">


<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />     

 <div class="off-canvas-content"  data-off-canvas-content>


    <!-- ///////////////
    
    PAGE CONTENT
     -->

     <div class="row expanded collapse WelcomeSliderWrap">
  <div class="small-12 columns text-center">
     <!-- #Include virtual="/includes/welcome_sliders/top_slider_medlarge.aspx" -->
       </div></div><!-- // row / col -->









  <div class="row expanded" style="background-color:#496b98;">
  <div class="small-12 columns text-center">
  
    <!-- responsive nav control -->
  <div class="responsive HPMovieSlider HPCategories2">
    <div class="button HpThemeBtn">trending</div>
   <div class="button HpThemeBtn">just added</div>
     <div class="button HpThemeBtn">NakedSword Originals</div>
      <div class="button HpThemeBtn">stars</div>
       <div class="button HpThemeBtn">theme</div>
        <div class="button HpThemeBtn">nsfw</div>
         <div class="button HpThemeBtn">studio</div>
          <div class="button HpThemeBtn">spotlight</div>
  </div>
  <!-- // responsive nav control -->

  </div></div><!-- // row / col -->
  
   
     
    <div class="row">
  <div class="small-12 columns text-center">
  
  
 
  
    
  <div class="WelcomeMosaic HPMovieSlider">
  
    

<!-- start all slides -->

 <div>
  <!-- slide internal -->





<!--//////////// 
trending 
//////////// -->

<!--

<div class="row collapse">
  <div class="small-1 columns">
<div style="background-color:#ff6600; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ffcc00; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ff6600; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ffcc00; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ff6600; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ffcc00; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ff6600; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ffcc00; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ff6600; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ffcc00; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ff6600; width: 100%;">stuff</div>
  </div>
  <div class="small-1 columns">
<div style="background-color:#ffcc00; width: 100%;">stuff</div>
  </div>
</div>




<div class="row collapse">
  <div class="small-1 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-11 columns">
<div class="callout">stuff</div>
  </div>
</div>



<div class="row collapse">
  <div class="small-2 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-10 columns">
<div class="callout">stuff</div>
  </div>
</div>



<div class="row collapse">
  <div class="small-3 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-9 columns">
<div class="callout">stuff</div>
  </div>
</div>



<div class="row collapse">
  <div class="small-4 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-8 columns">
<div class="callout">stuff</div>
  </div>
</div>




<div class="row collapse">
  <div class="small-5 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-7 columns">
<div class="callout">stuff</div>
  </div>
</div>


<div class="row collapse">
  <div class="small-6 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-6 columns">
<div class="callout">stuff</div>
  </div>
</div>



<div class="row collapse">
  <div class="small-7 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-5 columns">
<div class="callout">stuff</div>
  </div>
</div>



<div class="row collapse">
  <div class="small-8 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-4 columns">
<div class="callout">stuff</div>
  </div>
</div>



<div class="row collapse">
  <div class="small-9 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-3 columns">
<div class="callout">stuff</div>
  </div>
</div>



<div class="row collapse">
  <div class="small-10 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-2 columns">
<div class="callout">stuff</div>
  </div>
</div>


<div class="row collapse">
  <div class="small-11 columns">
<div class="callout">stuff</div>
  </div>
  <div class="small-1 columns">
<div class="callout">stuff</div>
  </div>
</div>





-->


  
  <div data-interchange="[/content/trendingsmall.aspx, small], [/content/trendinglarge.aspx, medium], [/content/trendinglarge.aspx, large]"></div>




    <!--//////////// 
trending 
//////////// --> 

 
 </div><!-- end slide internal -->
 
 
  
<div> <!-- slide internal -->
<!-- /////
JUST ADDED
////// -->
<div class="VideoPlayerWrap">
<video class="VideoPlayer" width="100%"  id="vidjustadded" autoplay loop>
  <source src="http://nakedswordcashcontent.com/videobanners/clickable/internatinalPlayboy_story.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div class="over_video">
   <A HREF="http://join.nakedsword.com/track/MTA1NDExLjM3LjEuNDkuMjUzLjAuMC4wLjA" target="_blank"><img src="/img/channel/click_640x364.png" width="100%"></A>
</div>
</div><!-- // VideoPlayerWrap -->



<div class="row">
  <div class="small-12 columns">
 <A HREF="/join"><img data-interchange="[/img/channel/justadded/newmovie_sml.jpg, small], [/img/channel/justadded/newmovie_med.jpg, medium], [/img/channel/justadded/newmovie_lrg.jpg, large]" width="100%"></a>
  </div>
</div>


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
    PageSize="1"
     />   

<!-- /////
JUST ADDED END
////// -->

 </div><!-- // slide internal -->
      
<div> 
<!-- slide internal -->
 <!-- ////
 NakedSword Originals
 ////// -->
 <div class="VideoPlayerWrap">
<video class="VideoPlayer" width="100%"  id="vidoriginals" autoplay loop>
  <source src="http://nakedswordcashcontent.com/videobanners/clickable/internatinalPlayboy_story.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div class="over_video">
   <A HREF="http://join.nakedsword.com/track/MTA1NDExLjM3LjEuNDkuMjUzLjAuMC4wLjA" target="_blank"><img src="/img/channel/click_640x364.png" width="100%"></A>
</div>
</div><!-- // VideoPlayerWrap -->



<%-- Search Results --%> 
<nsf:SceneSearchResults runat="server"
    id="FeaturedScenes" 
    SearchType="Studio" 
    SearchTerm="22309"
    SortField="Newest"
     OptionsHeaderText="See all NakedSword Original scenes" 
    OptionsLinkUrl="~/trending"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="1"
    />  

 <!-- ////
 NakedSword Originals
 ////// -->



 </div><!-- // slide internal -->


<div>
<!-- slide internal -->
<!--//////////// 
STARS 
//////////// -->


<div class="row">

  <div class="columns small-12">

        <!-- ENTRY -->
        <a href='#'><img src="/img/channel/stars_header.png" width="100%"></a>
       
         <!-- ENTRY -->
      
        <div class="VideoPlayerWrap">
<video class="VideoPlayer" width="100%"  id="vidstars" autoplay loop>
  <source src="http://nakedswordcashcontent.com/videobanners/clickable/internatinalPlayboy_story.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div class="over_video">
   <A HREF="http://join.nakedsword.com/track/MTA1NDExLjM3LjEuNDkuMjUzLjAuMC4wLjA" target="_blank"><img src="/img/channel/click_640x364.png" width="100%"></A>
</div>
</div><!-- // VideoPlayerWrap -->


  </div></div><!-- // col/row -->

        <!-- ENTRY -->
        <div class="row">

    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   


    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   



    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   



    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   



    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   


    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   


    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   

    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   


       
</div><!-- // row -->
    

        <div class="row">
<div class='columns small-12'>
<h1>over 20,000 men. find your favorite now!</h1>
</div>
</div><!-- // row col -->
  
 


         <div class="row">

    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   


    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   



    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   



    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   



    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   


    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   


    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   

    <!-- star main set -->
<div class='columns large-3 medium-6 small-12 StarMainCol'>
<div class='StarMainImg'><a href='/stars/99943/adam-ramzi'><img src='https://assets.nakedsword.com/pictures/Stars/99943/glamour/2395.jpg' width='100%'></a></div>
<div class='StarMainName'><a href='/stars/99943/adam-ramzi'>Adam Ramzi</a></div>
</div><!-- // star main set -->   


       
</div><!-- // row --> 



 <div class="row">
<!-- col -->
<div class='columns small-12 StarMainCol'>
<A HREF="/join"><div class="button expanded ChannelJoinBtn"><div>JOIN NOW!<div class="ChannelJoinBtnArrow button"></div></div></div></A>
</div><!-- // col -->   
</div><!-- // row -->



<!--//////////// 
STARS 
//////////// -->


 </div><!-- // slide internal -->


<div> <!-- slide internal -->


<!-- //////
THEME
///// -->


<div class="row">
<div class="columns small-12">
<a href='#'><img src="/img/channel/theme/header.png" width="100%"></a>
</div></div><!-- // col/row -->




        <div class="VideoPlayerWrap">
<video class="VideoPlayer" width="100%"  id="vidthemes" autoplay loop>
  <source src="http://nakedswordcashcontent.com/videobanners/clickable/internatinalPlayboy_story.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<<div class="over_video">
   <A HREF="http://join.nakedsword.com/track/MTA1NDExLjM3LjEuNDkuMjUzLjAuMC4wLjA" target="_blank"><img src="/img/channel/click_640x364.png" width="100%"></A>
</div>
</div><!-- // VideoPlayerWrap -->




 <div class="row">
<!-- col -->
<div class='columns small-12 StarMainCol'>
<A HREF="/join"><div class="button expanded ChannelJoinBtn"><div>JOIN NOW!<div class="ChannelJoinBtnArrow button"></div></div></div></A>
</div><!-- // col -->   
</div><!-- // row -->


<div class="row">
<div class="columns small-12">
<A HREF="/join"><img data-interchange="[/img/channel/theme/theme_collage_sml.jpg, small], [/img/channel/theme/theme_collage_med.jpg, medium], [/img/channel/theme/theme_collage_lrg.jpg, large]" width="100%"></a>
</div></div><!-- // col/row -->





  <!-- //////
THEME
///// -->  

 </div><!-- // slide internal -->
 
 
<div style="background-color:#000;"> 
<!-- slide internal -->

<!--//////////// 
NSFW 
//////////// -->


<div class="row">

  <div class="columns small-12">

        <!-- ENTRY -->
        <a href='#'><img src="/img/channel/nsfw/h_nsfw.png" width="100%"></a>
       
         <!-- ENTRY -->
      


      <div class="VideoPlayerWrap">
<video class="VideoPlayer" width="100%"  id="vidnsfw" autoplay loop>
  <source src="http://nakedswordcashcontent.com/videobanners/clickable/internatinalPlayboy_story.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div class="over_video">
   <A HREF="http://join.nakedsword.com/track/MTA1NDExLjM3LjEuNDkuMjUzLjAuMC4wLjA" target="_blank"><img src="/img/channel/click_640x364.png" width="100%"></A>
</div>
</div><!-- // VideoPlayerWrap -->


       


  </div></div><!-- // col/row -->

<div class="row">
<!-- col -->
<div class='columns large-12 medium-6 small-12 StarMainCol'>
<A HREF="/join"><img data-interchange="[/img/channel/nsfw/nsfw_panel_sml.jpg, small], [/img/channel/nsfw/nsfw_panel_med.jpg, medium], [/img/channel/nsfw/nsfw_panel_lrg.jpg, large]" width="100%"></a>
</div><!-- // col -->   
</div><!-- // row -->


<div class="row">
<!-- col -->
<div class='columns large-12 medium-6 small-12 StarMainCol text-center'>
NAKEDSWORD FILM WORKS (NSFW) is the bold new independent film arm of NakedSword.com. Each month NSFW debuts an original production or a new curated work from independent filmmakers with a queer eye for the provocative, the experimental and the explicit.  
<BR><BR>
<span style="color:#ffb611; text-transform: uppercase;">NakedSword Members get FREE ACCESS to NSFW.</span><BR>
<span style="color:#ff0000; text-transform: uppercase;">StarT Watching now!</span>

</div><!-- // col -->   
</div><!-- // row -->

   <div class="row">
<!-- col -->
<div class='columns small-12 StarMainCol'>
<A HREF="/join"><div class="button expanded ChannelJoinBtn"><div>JOIN NOW!<div class="ChannelJoinBtnArrow button"></div></div></div></A>
</div><!-- // col -->   
</div><!-- // row -->
  

<!--//////////// 
NSFW 
//////////// -->



 </div><!-- // slide internal -->
  
  
  <div> 
<!-- slide internal -->
<!--//////////// 
studios 
//////////// -->



<div class="row collapse" data-equalizer="StudioJoin1">
  <div class="small-10 columns panel" data-equalizer-watch="StudioJoin1">
 <A HREF="/join"><img src='/img/channel/studio/studio_panel_1.jpg' width='100%'></a>
  </div>
  <div class="small-2 columns panel" style="background-color:#000;">
<A HREF="/join"><img src='/img/channel/studio/studio_join.png' width='100%' data-equalizer-watch="StudioJoin1"></a>
  </div>
</div>


<div class="row collapse">
  <div class="small-12 columns">
 <A HREF="/join"><img src='/img/channel/studio/studio_falcon.jpg' width='100%'></a>
  </div>
</div>




<div class="row collapse">

<div class="small-6 columns">

<div class="row collapse">
<div class="small-12 columns"><A HREF="/join"><img src='/img/channel/studio/nsoriginals.jpg' width='100%' data-equalizer-watch="StudioJoin2"></a></div>
<div class="small-12 columns"><A HREF="/join"><img src='/img/channel/studio/mid_joinnow.jpg' width='100%' data-equalizer-watch="StudioJoin2"></a></div>
</div>

</div>


<div class="small-6 columns">

<div class="row collapse">
<div class="small-12 columns"><A HREF="/join"><img src='/img/channel/studio/darkalley.jpg' width='100%'></a></div>
<div class="small-12 columns"><A HREF="/join"><img src='/img/channel/studio/cockyboys.jpg' width='100%'></a></div></div>
</div>

 
</div>


<div class="row collapse">
  <div class="small-12 columns">
 <A HREF="/join"><img src='/img/channel/studio/studio_treasure.jpg' width='100%'></a>
  </div>

</div>



<div class="row collapse">
  <div class="small-8 columns">
 <A HREF="/join"><img src='/img/channel/studio/kristen.jpg' width='100%'></a>
  </div>
      <div class="small-4 columns">
 <A HREF="/join"><img src='/img/channel/studio/studio_hothouse.jpg' width='100%'></a>
  </div>
</div>



<div class="row collapse">
  <div class="small-12 columns">
 <A HREF="/join"><img src='/img/channel/studio/belami.jpg' width='100%'></a>
  </div>

</div>


<div class="row collapse">
  <div class="small-12 columns">
 <A HREF="/join"><img src='/img/channel/studio/studio_raging.jpg' width='100%'></a>
  </div>

</div>


 <div class="row">
<!-- col -->
<div class='columns small-12 StarMainCol'>
<A HREF="/join"><div class="button expanded ChannelJoinBtn"><div>JOIN NOW!<div class="ChannelJoinBtnArrow button"></div></div></div></A>
</div><!-- // col -->   
</div><!-- // row -->






<!--//////////// 
STUDIOS 
//////////// -->

 </div><!-- // slide internal -->


 <div> <!-- slide internal -->

 

  <!-- ///////////////
 SPOTLIGHT
 //////////////// -->

<div class="row">
  <div class="small-12 columns">
 <A HREF="/join"><img src='/img/channel/spotlight/header.png' width='100%'></a>
  </div>
</div>


<div class="row">
  <div class="small-12 columns">
   <A HREF="/join"><img data-interchange="[/img/channel/spotlight/fifi_sml.jpg, small], [/img/channel/spotlight/fifi_med.jpg, medium], [/img/channel/spotlight/fifi_lrg.jpg, large]" width="100%"></a>
  </div>
</div>


<div class="VideoPlayerWrap">
<video class="VideoPlayer" width="100%"  id="vidnsfw" autoplay loop>
  <source src="http://nakedswordcashcontent.com/videobanners/clickable/internatinalPlayboy_story.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div class="over_video">
   <A HREF="http://join.nakedsword.com/track/MTA1NDExLjM3LjEuNDkuMjUzLjAuMC4wLjA" target="_blank"><img src="/img/channel/click_640x364.png" width="100%"></A>
</div>
</div><!-- // VideoPlayerWrap -->


<div class="row">
  <div class="small-12 columns">
   <A HREF="/join"><img data-interchange="[/img/channel/spotlight/newstudio_sml.jpg], small], [/img/channel/spotlight/newstudio_med.jpg, medium], [/img/channel/spotlight/newstudio_lrg.jpg, large]" width="100%"></a>
  </div>
</div>





 <div class="row">
<!-- col -->
<div class='columns small-12 StarMainCol'>
<A HREF="/join"><div class="button expanded ChannelJoinBtn"><div>WATCH this movie now!<div class="ChannelJoinBtnArrow button"></div></div></div></A>
</div><!-- // col -->   
</div><!-- // row -->



<div class="row">
  <div class="small-12 columns">
 <A HREF="/join"><img data-interchange="[/img/channel/justadded/newmovie_sml.jpg, small], [/img/channel/justadded/newmovie_med.jpg, medium], [/img/channel/justadded/newmovie_lrg.jpg, large]" width="100%"></a>
  </div>
</div>


 <!-- ///////////////
 SPOTLIGHT
 //////////////// -->


 </div><!-- // slide internal -->



<!-- // END OF SLIDES -->

  </div><!-- /// WelcomeMosaic HPMovieSlider -->
  
  </div></div><!-- // row / col -->
  
  
    <!-- /// test slider / masonry -->
   
     
   

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

<script type='text/javascript' src='/js/slick_options.js'></script>

<script src="/js/foundation/foundation.equalizer.js"></script>

  <script>
  $('#vidtrending').click(function(){
    window.location = 'http://google.com', '_blank';
});
</script>
  <script>
    document.getElementById('vidtrending').play();
</script>


  <script>
    document.getElementById('vidthemes').play();

</script>
  
  <script>
    document.getElementById('vidjustadded').play();
</script>



  <script>
    document.getElementById('vidoriginals').play();
</script>


  <script>
    document.getElementById('vidnewreleases').play();
</script>



  <script>
    document.getElementById('vidstars').play();
</script>


  <script>
    document.getElementById('vidstudio').play();
</script>

  <script>
    document.getElementById('vidnsfw').play();
</script>


<script>
var _HPCategoriesTotal;
var _HpThemeBtn = "HpThemeBtn";
$(document).ready(function () {
    $('.WelcomeMosaic').not('.slick-initialized').slick({
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
		dots: true,
		arrows: true,
		autoplay: false,
		asNavFor: '.HPCategories2',
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1 
                }
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1  
                }
            },
            {
                breakpoint: 640,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                   slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });
  $("."+_HpThemeBtn).css({opacity:0});
  $(".HPCategories2").on("init reInit afterChange", function(event, slick, currentSlide, nextSlide){
    var i = (currentSlide ? currentSlide : 0) + 1;
    _HPCategoriesTotal = slick.slideCount;
  });

  $(".HPCategories2").not('.slick-initialized').slick({
  infinite: true,
  centerMode: true,
  slidesToShow: 3,
  slidesToScroll: 1,
  arrows: true,
  focusOnSelect: true,
  asNavFor: '.WelcomeMosaic',
  prevArrow:"<img class='a-left control-c prev slick-prev' src='/img/slick_prev.png'>",
  nextArrow:"<img class='a-right control-c next slick-next' src='/img/slick_next.png'>",
  responsive: [
  {
    breakpoint: 1024,
    settings: {
    slidesToShow: 3,
    slidesToScroll: 1,
    infinite: true,
    dots: false
    }
  },
  {
    breakpoint: 600,
    settings: {
    slidesToShow: 3,
    slidesToScroll: 1,
    dots: false
    }
  },
  {
    breakpoint: 480,
    settings: {
    slidesToShow: 1,
    slidesToScroll: 1,
    dots: false
    }
  }]
});

});

$(window).load(function () {
  function arrowsPos() {
	  var curThemeW = $(".HPCategories2 .slick-current").outerWidth();
	  var sliderW = $(".HPCategories2").width();

	  $(".HPCategories2 .slick-prev").css({"left" : sliderW/2-curThemeW/2-$(".HPCategories2 .slick-prev").width()});
	  $(".HPCategories2 .slick-next").css({"left" : sliderW/2+curThemeW/2});
  }
  
  function truncateIt(_target, _c) {
    var _targetWidth = $(".HpThemeBtn").width();

    _target.each(function() {
      var $this = $(this);
      if ($this.attr("data-ori") == undefined) {
        $this.attr("data-ori", $this.html());
      }

      $this.text($this.attr("data-ori"));
      var $dataOriSpan = "<span>" + $this.attr("data-ori") + "</span>";
      $this.html($dataOriSpan);
      var $thisWidth = $this.find('span:first').width();

      if ($thisWidth > _targetWidth) {
        var _characterMax = Math.round(_targetWidth/_c);
        //var _shortened = jQuery.trim($this.attr("data-ori")).substring(0, _characterMax).split(" ").slice(0, -1).join(" ") + "..."; // must update _characterMax division from 8 to 10 for word split.
        var _shortened = jQuery.trim($this.attr("data-ori")).slice(0, _characterMax) + "...";
        $this.text(_shortened).css({opacity:1});
      } else {
        $this.text($this.attr("data-ori")).css({opacity:1});
      }
    });
    arrowsPos();
  };
  truncateIt($("."+_HpThemeBtn), 10);
  truncateIt($(".HPCategories2 .slick-current"), 20);
  
  /*$(".HPCategories2 .slick-prev, .HPCategories2 .slick-next").mousedown(function() {
	  truncateIt($("."+_HpThemeBtn), 10);
	  console.log($(".HPCategories2 .slick-current").text());
	  if ($(this).hasClass("slick-prev") == true) {
	  	truncateIt($(".HPCategories2 .slick-current").prev(), 20);
		  console.log("Prev clicked");
	  } else if ($(this).hasClass("slick-next") == true) {
		  console.log("Next clicked");
	  	truncateIt($(".HPCategories2 .slick-current").next(), 20);
	  };
  });*/

// On before slide change
$(".HPCategories2").on("afterChange", function(event, slick, currentSlide, nextSlide) {
  truncateIt($(".HPCategories2 .slick-active"), 10);
  var checkerID = $(".HPCategories2 .slick-current").attr("data-slick-index");
  var curSlide = $(".HPCategories2").find("[data-slick-index='" + checkerID + "']");
  truncateIt(curSlide, 20);
});
  
  $(window).resize(function() {
    truncateIt($("."+_HpThemeBtn), 10);
	truncateIt($(".HPCategories2 .slick-current"), 20);
  });
});
</script>



  


</body>
</html>