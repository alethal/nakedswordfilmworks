/*var _HPCategoriesTotal;*/
var _HpThemeBtn = "HpThemeBtn";

function MovieInfoHero() {
	$(".MovieInfoHero").slick({
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
		dots: false,
		arrows: false,
		fade: true,
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
}
MovieInfoHero();

function StudioMain_Responsive() {
	$(".StudioMain_Responsive").slick({
        infinite: true,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
		dots: false,
		arrows: false,
		fade: true,
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
}
StudioMain_Responsive();

function Welcome_Responsive_Init() {
	$(".Welcome_Responsive").slick({
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
}


  
function WelcomeMembers_Responsive_Init() {
	$(".WelcomeMembers_Responsive").slick({
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
}


//Welcome_Responsive_Init();

/*function WelcomeMosaic_Init() {
	$('.WelcomeMosaic').slick({
		infinite: true,
		speed: 300,
		slidesToShow: 1,
		slidesToScroll: 1,
		dots: false,
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
}
WelcomeMosaic_Init();*/

$(document).ready(function() {
	/*$("."+_HpThemeBtn).css({opacity:0});
	$(".HPCategories").on("init reInit afterChange", function(event, slick){//, currentSlide, nextSlide){
		//var i = (currentSlide ? currentSlide : 0) + 1;
		_HPCategoriesTotal = slick.slideCount;
	});
	$(".HPCategories").slick({
		infinite: true,
		centerMode: true,
		slidesToShow: 3,
		slidesToScroll: 1,
		arrows: false,
		dots: false,
		focusOnSelect: true,
		asNavFor: '.WelcomeMosaic',
		responsive: [
		{
		  breakpoint: 1024,
		  settings: {
			slidesToShow: 3,
			slidesToScroll: 1,
			variableWidth: false
		  }
		},
		{
		  breakpoint: 700,
		  settings: {
			slidesToShow: 3,
			slidesToScroll: 1,
			variableWidth: true
		  }
		},
		{
		  breakpoint: 500,
		  settings: {
			slidesToShow: 1,
			slidesToScroll: 1,
			variableWidth: true
		  }
		}]
	});*/

	$(".MIScStills_Responsive").slick({
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


$(".StarGallery_Responsive").slick({
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


    $(".StarGlamour_Responsive").slick({
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

    $(".StarAction_Responsive").slick({
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


$(".UltraFanPoster_Responsive").slick({
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

	
	$('.MISceneHeader').on('click', function() {
		truncateIt($("."+_SRStarWrap));
		truncateIt($("."+_SRThemeWrap));
		$(this).parent().find('.MIScStills_Responsive').slick('setPosition');
	});
});

$(window).load(function () {
	function truncateItNav(_target) {
		var _targetWidth = $(".HpThemeBtn").width();

		_target.each(function() {
			var $this = $(this);
			if ($this.attr("data-ori") === undefined) {
				$this.attr("data-ori", $this.html());
			}

			$this.text($this.attr("data-ori"));
			var $dataOriSpan = "<span>" + $this.attr("data-ori") + "</span>";
			$this.html($dataOriSpan);
			var $thisWidth = $this.find('span:first').width();

			if ($thisWidth > _targetWidth) {
				var _characterMax = Math.round(_targetWidth/8-5);
				//var _shortened = jQuery.trim($this.attr("data-ori")).substring(0, _characterMax).split(" ").slice(0, -1).join(" ") + "..."; // must update _characterMax division from 8 to 10 for word split.
				var _shortened = jQuery.trim($this.attr("data-ori")).slice(0, _characterMax) + "...";
				$this.text(_shortened).css({opacity:1});
			} else {
				$this.text($this.attr("data-ori")).css({opacity:1});
			}
		});
	}
	truncateItNav($("."+_HpThemeBtn));
	
	$(window).resize(function() {
		truncateItNav($("."+_HpThemeBtn));
	});
});