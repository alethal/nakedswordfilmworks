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
        speed: 1000,
        slidesToShow: 1,
        slidesToScroll: 1,
		dots: false,
		arrows: false,
		autoplay: false,
		asNavFor: '.HPCategories2',
        responsive: [
            {
                breakpoint: 1050,
                settings: {
                    slidesToShow: 1,
				   autoplay: false,
				   autoplaySpeed: 5000,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 1,
				   autoplay: false,
				   autoplaySpeed: 5000,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 640,
                settings: {
                    slidesToShow: 1,
				   autoplay: false,
				   autoplaySpeed: 5000,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                   slidesToShow: 1,
				   autoplay: false,
				   autoplaySpeed: 5000,
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
    dots: false,
	autoplay: false
    }
  }]
});

});

$(window).load(function () {
  if ($(".Welcome_Responsive").length && _initialLoad) {
    $(".Welcome_Responsive").show();
	$(".HPSliderPlayBtn").css("visibility","visible");
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