function MovieInfoHero(){$(".MovieInfoHero").slick({infinite:!0,speed:300,slidesToShow:1,slidesToScroll:1,dots:!1,arrows:!1,fade:!0,autoplay:!0,responsive:[{breakpoint:1024,settings:{slidesToShow:1,slidesToScroll:1}},{breakpoint:700,settings:{slidesToShow:1,slidesToScroll:1}},{breakpoint:500,settings:{slidesToShow:1,slidesToScroll:1}}]})}function StudioMain_Responsive(){$(".StudioMain_Responsive").slick({infinite:!0,speed:300,slidesToShow:1,slidesToScroll:1,dots:!1,arrows:!1,fade:!0,autoplay:!0,responsive:[{breakpoint:1024,settings:{slidesToShow:1,slidesToScroll:1}},{breakpoint:700,settings:{slidesToShow:1,slidesToScroll:1}},{breakpoint:500,settings:{slidesToShow:1,slidesToScroll:1}}]})}function Welcome_Responsive_Init(){$(".Welcome_Responsive").slick({infinite:!0,speed:300,slidesToShow:1,slidesToScroll:1,dots:!0,arrows:!0,autoplay:!0,fade:!0,responsive:[{breakpoint:1024,settings:{slidesToShow:1,slidesToScroll:1}},{breakpoint:700,settings:{slidesToShow:1,slidesToScroll:1}},{breakpoint:500,settings:{slidesToShow:1,slidesToScroll:1}}]})}function WelcomeMembers_Responsive_Init(){$(".WelcomeMembers_Responsive").slick({infinite:!0,speed:300,slidesToShow:1,slidesToScroll:1,dots:!0,arrows:!0,autoplay:!0,fade:!0,responsive:[{breakpoint:1024,settings:{slidesToShow:1,slidesToScroll:1}},{breakpoint:700,settings:{slidesToShow:1,slidesToScroll:1}},{breakpoint:500,settings:{slidesToShow:1,slidesToScroll:1}}]})}var _HpThemeBtn="HpThemeBtn";MovieInfoHero(),StudioMain_Responsive(),$(document).ready(function(){$(".MIScStills_Responsive").slick({infinite:!0,speed:300,slidesToShow:4,slidesToScroll:1,dots:!1,arrows:!0,autoplay:!1,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:1}},{breakpoint:800,settings:{slidesToShow:3,slidesToScroll:2}},{breakpoint:640,settings:{slidesToShow:2,slidesToScroll:2}},{breakpoint:480,settings:{slidesToShow:2,slidesToScroll:2}}]}),$(".StarGallery_Responsive").slick({infinite:!0,speed:300,slidesToShow:4,slidesToScroll:1,dots:!1,arrows:!0,autoplay:!1,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:1}},{breakpoint:800,settings:{slidesToShow:3,slidesToScroll:2}},{breakpoint:640,settings:{slidesToShow:2,slidesToScroll:2}},{breakpoint:480,settings:{slidesToShow:2,slidesToScroll:2}}]}),$(".StarGlamour_Responsive").slick({infinite:!0,speed:300,slidesToShow:4,slidesToScroll:1,dots:!1,arrows:!0,autoplay:!1,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:1}},{breakpoint:800,settings:{slidesToShow:3,slidesToScroll:2}},{breakpoint:640,settings:{slidesToShow:2,slidesToScroll:2}},{breakpoint:480,settings:{slidesToShow:2,slidesToScroll:2}}]}),$(".StarAction_Responsive").slick({infinite:!0,speed:300,slidesToShow:4,slidesToScroll:1,dots:!1,arrows:!0,autoplay:!1,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:1}},{breakpoint:800,settings:{slidesToShow:3,slidesToScroll:2}},{breakpoint:640,settings:{slidesToShow:2,slidesToScroll:2}},{breakpoint:480,settings:{slidesToShow:2,slidesToScroll:2}}]}),$(".MISceneHeader").on("click",function(){truncateIt($("."+_SRStarWrap)),truncateIt($("."+_SRThemeWrap)),$(this).parent().find(".MIScStills_Responsive").slick("setPosition")})}),$(window).load(function(){function s(s){var o=$(".HpThemeBtn").width();s.each(function(){var s=$(this);void 0===s.attr("data-ori")&&s.attr("data-ori",s.html()),s.text(s.attr("data-ori"));var e="<span>"+s.attr("data-ori")+"</span>";s.html(e);var i=s.find("span:first").width();if(i>o){var t=Math.round(o/8-5),l=jQuery.trim(s.attr("data-ori")).slice(0,t)+"...";s.text(l).css({opacity:1})}else s.text(s.attr("data-ori")).css({opacity:1})})}s($("."+_HpThemeBtn)),$(window).resize(function(){s($("."+_HpThemeBtn))})});