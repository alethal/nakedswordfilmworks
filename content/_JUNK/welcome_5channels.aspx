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
    <!-- begin google analytics code -->
<!-- #Include virtual="/includes/googleanalytics.aspx" -->
<!-- end google analytics code -->


<style type="text/css">

</style>

</head>
<body>

<!-- begin google tag manager -->
<!-- #Include virtual="/includes/googletagmanager.aspx" -->
<!-- end google tagmanager -->
<A NAME="top"></A>
<div id="WelcomePage">


<%-- MainNav --%>
<nsf:MainNav id="Navigation" runat="server" 
    />     

 <div class="off-canvas-content"  data-off-canvas-content>


    <!-- ///////////////
    
    PAGE CONTENT
     -->

     <div class="row expanded collapse"><!-- WelcomeSliderWrap-->
  <div class="small-12 columns text-center">
     <!-- #Include virtual="/includes/welcome_sliders/welcome_slider.html" -->






       </div></div><!-- // row / col -->








  <div class="row expanded" style="background-color:#003478;">
  <div class="small-12 columns text-center">
  
    <!-- responsive nav control -->
  <div class="responsive HPMovieSlider HPCategories2">
  <div class="button HpThemeBtn" data-sect="vidwelcome">welcome</div>
   <div class="button HpThemeBtn" data-sect="vidoriginals">originals</div>
      <div class="button HpThemeBtn" data-sect="vidnsfw">nsfw</div>
   
      <div class="button HpThemeBtn" data-sect="vidstudio">studios</div>
      
       <div class="button HpThemeBtn" data-sect="vidspotlight">spotlight</div>
  </div>
  <!-- // responsive nav control -->

  </div></div><!-- // row / col -->
  
   
     
    <div class="row">
  <div class="small-12 columns text-center">
  
  
 
  
    
  <div class="WelcomeMosaic HPMovieSlider">


<!-- start all slides -->
  
<div> <!-- slide internal -->
<!-- /////
Welcome
////// -->
  <div data-interchange="[/content/channel/welcomesmall.aspx, small], [/content/channel/welcomelarge.aspx, medium], [/content/channel/welcomelarge.aspx, large]"></div>
<!-- /////
Welcome END
////// -->
 </div><!-- // slide internal -->
  
 



 
  

      
<div> 
<!-- slide internal -->
 <!-- ////
 NakedSword Originals
 ////// -->
 
  <div data-interchange="[/content/channel/nsoriginalssmall.aspx, small], [/content/channel/nsoriginalslarge.aspx, medium], [/content/channel/nsoriginalslarge.aspx, large]"></div>
 <!-- ////
 NakedSword Originals
 ////// -->

 </div><!-- // slide internal -->


<div> 
<!-- slide internal -->

<!--//////////// 
NSFW 
//////////// -->

  <div data-interchange="[/content/channel/nsfwsmall.aspx, small], [/content/channel/nsfwlarge.aspx, medium], [/content/channel/nsfwlarge.aspx, large]"></div>
<!--//////////// 
NSFW 
//////////// -->
 </div><!-- // slide internal -->




  
  <div> 
<!-- slide internal -->
<!--//////////// 
studios 
//////////// -->
  <div data-interchange="[/content/channel/studiossmall.aspx, small], [/content/channel/studioslarge.aspx, medium], [/content/channel/studioslarge.aspx, large]"></div>
<!--//////////// 
STUDIOS 
//////////// -->

 </div><!-- // slide internal -->



 
 


 <div> <!-- slide internal -->
  <!-- ///////////////
 SPOTLIGHT
 //////////////// -->
  <div data-interchange="[/content/channel/spotlightsmall.aspx, small], [/content/channel/spotlightlarge.aspx, medium], [/content/channel/spotlightlarge.aspx, large]"></div>

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

 
 <!-- Script Include used by: (TrendingScenes)  -->
<script type='text/javascript' src='/Platform/Bundles/UnifiedPlayer/player/flash/swfobject.js'></script>
<!-- Script Include used by: (TrendingScenes)  -->
<script type='text/javascript' src='/Platform/Bundles/UnifiedPlayer/player/UnifiedPlayer.js'></script>


 <script src="/js/searchresults_options.js"></script>




  <!-- Script Block used by: (TrendingScenes)  -->
<script type='text/javascript'>
function attachPlayEvents() {
    $('.playStreamButton').each(function () {
        $(this).on("click", function () {
            var mediaType = $(this).data("media-type");
            var mediaID = $(this).data("media-id");
            playStream(mediaType, mediaID);
        });
    });
}

function playStream(mediaType, mediaID) {

    var unifiedPlayer = new UnifiedPlayer();
    unifiedPlayer.unifiedPlayerHome = "http://spectre.nakedsword.com/Platform/Bundles/UnifiedPlayer/player/";
    unifiedPlayer.fullFrameUrl = "http://spectre.nakedsword.com/Platform/Bundles/UnifiedPlayer/fullframe.html";
  
    var parameters = {
        allowedFormats: ['HLS', 'DASH', 'FlashDynamic']
    };

    unifiedPlayer.play(function (parameters) {

        var playFailure = false;

        $.ajax({
            async: false,
            type: "GET",
            url: "/scriptservices/getstream/" + mediaType + "/" + mediaID + "/" + parameters.format,
            contentType: "application/json;",
            dataType: "json",
            success: function (data) {
                if (data.StreamUrl != undefined) {
                    console.log('Success: ', data);
                    parameters.url = data['StreamUrl'];
                    parameters.movieId = data['PlaybackMovieID'];
                    if (data['ClipDurationSeconds'] !== undefined) {
                        if (parameters['ClipStartSeconds'] === undefined) {
                            parameters['ClipStartSeconds'] = 0;
                        }
                        parameters.endSeconds = parameters.startSeconds + data['ClipDurationSeconds'];
                    }
                    console.log('player parameters: ', parameters);
                } else {
                    playFailure = true;
                    console.error('No mediaUrl returned: ', data);
                }
            },
            error: function (data) {
                playFailure = true;
                console.error('Received an error from the Controller: ', data);
            }
        });
        if (playFailure) {

            // Throwing an error here will be caught by unified player - and it will not display the player window.
            throw ("error");
        }
    }, parameters);
}

$(document).ready(function () {
    attachPlayEvents();
});
</script>

<!-- Script Block used by: (Scenes)  -->
<script type='text/javascript'>
function attachFavoritesEvents() {
    $('.toggleFavoritesButton').each(function () {
        $(this).on("click", function () {
            window.location.href = "/join";
        });
    });
}

$(document).ready(function () {
    attachFavoritesEvents();
});
</script>

<script type='text/javascript' src='/js/slick.js'></script>

<script type='text/javascript' src='/js/slick_options.js'></script>

<script>
var _HPCategoriesTotal;
var _HpThemeBtn = "HpThemeBtn";
var _initialLoad = true;
var _curVid;

function playVid() {
	if ($(document).width() > 640 && $(".VideoPlayerWrap").length) {
		if (_initialLoad) {
			_curVid = $(".slick-center").attr("data-sect");
			_initialLoad = false;
			$("#"+_curVid).get(0).play();
		}
		if ($("#"+_curVid).get(0).paused) {
			$("#"+_curVid).get(0).pause();
		}
		_curVid = $(".slick-center").attr("data-sect");
		$("#"+_curVid).get(0).play();
	}
}

$(document).ready(function () {
	if ($(".Welcome_Responsive").length) {
		$(".Welcome_Responsive").hide();
	}
    $('.WelcomeMosaic').not('.slick-initialized').slick({
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
		dots: false,
		arrows: false,
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
	if (!_initialLoad) {
		playVid();
	}
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
  if ($(".Welcome_Responsive").length && _initialLoad) {
    $(".Welcome_Responsive").show();
    Welcome_Responsive_Init();
  }
  playVid();
  
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
	playVid();
  });
});
</script>



</body>
</html>