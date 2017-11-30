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
  
  
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
jQuery.noConflict();
jQuery(document).ready(function($){
  $('.ChannelJoinBtn img').each(function(){
 $(this).removeAttr('width')
 $(this).removeAttr('height');
 });
});
</script>

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
     <!-- #Include virtual="/includes/welcome_sliders/top_slider_medlarge.aspx" -->

       <!--div  data-interchange="[/includes/welcome_sliders/top_slider_small.aspx, small], [/includes/welcome_sliders/top_slider_medlarge.aspx, medium], [/includes/welcome_sliders/top_slider_medlarge.aspx, large]"></div-->

  <div class="row expanded" style="background-color:#496b98;">
  <div class="small-12 columns text-center">
  
    
  <div class="responsive HPMovieSlider HPCategories2">

    <div class="button HpThemeBtn">trending</div>
   <div class="button HpThemeBtn">new releases</div>
     <div class="button HpThemeBtn">NakedSword Originals</div>
      <div class="button HpThemeBtn">stars</div>
       <div class="button HpThemeBtn">theme</div>
        <div class="button HpThemeBtn">nsfw</div>
        <div class="button HpThemeBtn">studios</div>

  </div>

  </div></div><!-- // row / col -->
  
  
<!--/////
SLIDES START 
////// -->
  

  
 <div> 

 <!-- slide internal start-->
 trending
 
 <!--<div data-interchange="[/includes/welcome_sliders/justified_hp_trending_small.aspx, small], [/includes/welcome_sliders/justified_hp_trending.aspx, medium], [/includes/welcome_sliders/justified_hp_trending.aspx, large]"></div>-->
 
 </div><!-- // slide internal end -->
 
 
  
<div> 
<!-- slide internal start -->
new releases<BR>
<video class="VideoPlayer" id="vidnewreleases" width="100%"  autoplay loop>
  <source src="http://nakedswordcashcontent.com/videobanners/clickable/internatinalPlayboy_story.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>


<div id="over_video">
   <A HREF="http://join.nakedsword.com/track/MTA1NDExLjM3LjEuNDkuMjUzLjAuMC4wLjA" target="_blank"><img src="http://nakedswordcashcontent.com/videobanners/clickable/click_640x364.png"></A>
</div>

<A HREF="http://stackoverflow.com/questions/29901228/add-autoplay-for-video-in-slick-carousel" target="_blank">http://stackoverflow.com/questions/29901228/add-autoplay-for-video-in-slick-carousel</A>

<A HREF="http://stackoverflow.com/questions/31521763/slick-js-and-html5-video-autoplay-and-pause-on-video" target="_blank">http://stackoverflow.com/questions/31521763/slick-js-and-html5-video-autoplay-and-pause-on-video</A>

 </div><!-- // slide internal end -->

      
<div> 
<!-- slide internal start -->

 nakedsword originals<BR>

 </div><!-- // slide internal end -->


<div>
<!-- slide internal start -->
 <!--//////////// 
STARS 
//////////// -->


<div class="row">

  <div class="columns small-12">

        <!-- ENTRY -->
        <a href='#'><img src="/img/channel/stars_header.png" width="100%"></a>
       
         <!-- ENTRY -->
      
        <video class="VideoPlayer" width="100%"  id="vidstars" autoplay loop>
  <source src="http://nakedswordcashcontent.com/videobanners/clickable/internatinalPlayboy_story.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div id="over_video">
   <A HREF="http://join.nakedsword.com/track/MTA1NDExLjM3LjEuNDkuMjUzLjAuMC4wLjA" target="_blank"><img src="/img/channel/click_640x364.png"></A>
</div>


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

<!--//////////// 
STARS 
//////////// -->



 </div><!-- // slide internal end -->


<div> <!-- slide internal start -->
theme<BR>
 </div><!-- // slide internal end -->
 
 
<div> <!-- slide internal start -->
nsfw<BR>
 </div><!-- // slide internal end -->
  

<div> <!-- slide internal start -->
<!--//////////// 
studios 
//////////// -->


<div class="row">

  <div class="columns small-12">

        <!-- ENTRY -->
        <a href='#'><img src="/img/channel/studio/h_studio.png" width="100%"></a>
       
         <!-- ENTRY -->
      
        <video class="VideoPlayer" width="100%"  id="vidstudio" autoplay loop>
  <source src="http://nakedswordcashcontent.com/videobanners/clickable/internatinalPlayboy_story.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div id="over_video">
   <A HREF="http://join.nakedsword.com/track/MTA1NDExLjM3LjEuNDkuMjUzLjAuMC4wLjA" target="_blank"><img src="/img/channel/click_640x364.png"></A>
</div>


  </div></div><!-- // col/row -->

        <!-- ENTRY -->
        <div class="row">


    <!-- col -->
<div class='columns large-10 medium-6 small-12 StarMainCol'>
<A HREF="/becomeamember"><img src='/img/channel/studio/studio_panel_1.png' width='100%'></a>
</div><!-- // col -->   



    <!-- col -->
<div class='columns large-2 medium-6 small-12 StarMainCol'>
<A HREF="/becomeamember"><img src='/img/channel/studio/studio_join.png' width='100%'></a>
</div><!-- // col -->   





       
</div><!-- // row -->
    

        <div class="row">
<div class='columns small-12'>
<h1>over 20,000 men. find your favorite now!</h1>
</div>
</div><!-- // row col -->
  
 


         <div class="row">

     <!-- col -->
<div class='columns large-12 medium-6 small-12 StarMainCol'>
<A HREF="/becomeamember"><img src='/img/channel/studio/studio_panel_2.png' width='100%'></a>
</div><!-- // col -->   





       
</div><!-- // row --> 

<!--//////////// 
STUDIOS 
//////////// -->

 </div><!-- // slide internal end -->



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