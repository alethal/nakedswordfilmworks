var _HPCategoriesTotal;
var _HpThemeBtn = "HpThemeBtn";
$(document).ready(function() {
	
	
	/*$('.Welcome_Responsive').slick({
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
		dots: true,
					arrows: false,
                    infinite: true,
                    autoplay: true,
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
    });*/



    $('.single-item').slick({
        dots: true,
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1
    });
    $('.multiple-items').slick({
        dots: true,
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1
    });
    $('.one-time').slick({
        dots: true,
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        adaptiveHeight: true
    });
    $('.uneven').slick({
        dots: true,
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        slidesToScroll: 4
    });
    

    $('.center').slick({
        centerMode: true,
        infinite: true,
		 autoplay: true,
		 fade: true,
		 speed: 500,
        centerPadding: '60px',
        slidesToShow: 3,
        responsive: [{
            breakpoint: 768,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 3
            }
        }, {
            breakpoint: 480,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 1
            }
        }]
    });
    $('.lazy').slick({
        lazyLoad: 'ondemand',
        slidesToShow: 3,
        slidesToScroll: 1
    });
    $('.autoplay').slick({
        dots: true,
        infinite: true,
        speed: 300,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000
    });

    $('.fade').slick({
		 autoplay: true,
  autoplaySpeed:3000,
        dots: true,
        infinite: true,
        speed: 5000,
        fade: true,
        slide: 'div',
        cssEase: 'linear'
    });

    $('.add-remove').slick({
        dots: true,
        slidesToShow: 3,
        slidesToScroll: 3
    });
    var slideIndex = 1;
    $('.js-add-slide').on('click', function() {
        slideIndex++;
        $('.add-remove').slickAdd('<div><h3>' + slideIndex + '</h3></div>');
    });

    $('.js-remove-slide').on('click', function() {
        $('.add-remove').slickRemove(slideIndex - 1);
        if (slideIndex !== 0){
            slideIndex--;
        }
    });

    $('.filtering').slick({
        dots: true,
        slidesToShow: 4,
        slidesToScroll: 4
    });
    var filtered = false;
    $('.js-filter').on('click', function() {
        if (filtered === false) {
            $('.filtering').slickFilter(':even');
            $(this).text('Unfilter Slides');
            filtered = true;
        } else {
            $('.filtering').slickUnfilter();
            $(this).text('Filter Slides');
            filtered = false;
        }
    });

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: true,
        centerMode: true,
        focusOnSelect: true
    });

    $(window).on('scroll', function() {
        if ($(window).scrollTop() > 166) {
            $('.fixed-header').show();
        } else {
            $('.fixed-header').hide();
        }
    });

    $('ul.nav a').on('click', function(event) {
        event.preventDefault();
        var targetID = $(this).attr('href');
        var targetST = $(targetID).offset().top - 48;
        $('body, html').animate({
            scrollTop: targetST + 'px'
        }, 300);
    });

    $('.single-item-rtl').slick({
        dots: true,
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
        rtl: true
    });
    $('.multiple-items-rtl').slick({
        dots: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        rtl: true
    });
	
	
	
	
/* studio */

    $('.StudioMain_Responsive').slick({
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        slidesToScroll: 1,
		dots: false,
					arrows: false,
                    autoplay: true,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1	
                }
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 2  
                }
            },
            {
                breakpoint: 640,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
					fade: true,
                    autoplaySpeed: 2000	
                }
            }
        ]
    });


/* movie info scene */


    $('.MIScStills_Responsive').slick({
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        slidesToScroll: 1,
		dots: false,
					arrows: true,
                    autoplay: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1	
                }
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 2  
                }
            },
            {
                breakpoint: 640,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                   slidesToShow: 2,
                    slidesToScroll: 2
                }
            }
        ]
    });
	
	
	/* changes to the slider nav */
	
	
    $('.MIScStillsHoriz_Responsive').slick({
        infinite: true,
        speed: 300,
        slidesToShow: 4,
        slidesToScroll: 1,
		dots: false,
					arrows: true,
                    autoplay: false,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1	
                }
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 2  
                }
            },
            {
                breakpoint: 640,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                   slidesToShow: 2,
                    slidesToScroll: 2
                }
            }
        ]
    });
	
	
	
	
	

$(".slider").slick({

    autoplay: true,
    dots: true,
    customPaging : function(slider, i) {
        var thumb = $(slider.$slides[i]).data('thumb');
        return '<a><img src="'+thumb+'"></a>';
    },

    responsive: [{ 
        breakpoint: 500,
        settings: {
            dots: false,
            arrows: false,
            infinite: false,
            slidesToShow: 2,
            slidesToScroll: 2
        } 
    }]
});



	
/*
$(".WelcomeMosaic").slick({

    autoplay: true,
    dots: true,
    customPaging : function(slider, i) {
        var thumb = $(slider.$slides[i]).data('thumb');
        return '<a><img src="'+thumb+'"></a>';
    },

    responsive: [{ 
        breakpoint: 500,
        settings: {
            dots: false,
            arrows: false,
            infinite: false,
            slidesToShow: 2,
            slidesToScroll: 2
        } 
    }]
});*/


 /*$('.WelcomeMosaic').slick({
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
		dots: true,
					arrows: false,
                    autoplay: false,
					asNavFor: '.HPCategories',
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
	$(".HPCategories").on("init reInit afterChange", function(event, slick, currentSlide, nextSlide){
		var i = (currentSlide ? currentSlide : 0) + 1;
		_HPCategoriesTotal = slick.slideCount;
	});
	$(".HPCategories").slick({
	infinite: true,
	centerMode: true,
	slidesToShow: 3,
	slidesToScroll: 1,
	arrows: false,
	focusOnSelect: true,
	asNavFor: '.WelcomeMosaic',
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
		slidesToShow: 3,
		slidesToScroll: 1,
		dots: false
	  }
	}]
});*/
});

$(window).load(function () {
	function truncateIt(_target) {
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
				var _characterMax = Math.round(_targetWidth/16);
				//var _shortened = jQuery.trim($this.attr("data-ori")).substring(0, _characterMax).split(" ").slice(0, -1).join(" ") + "..."; // must update _characterMax division from 8 to 10 for word split.
				var _shortened = jQuery.trim($this.attr("data-ori")).slice(0, _characterMax) + "...";
				$this.text(_shortened).css({opacity:1});
			} else {
				$this.text($this.attr("data-ori")).css({opacity:1});
			}
		});
	};
	truncateIt($("."+_HpThemeBtn));
	
	$(window).resize(function() {
		truncateIt($("."+_HpThemeBtn));
	});
});
	

/* end */
});