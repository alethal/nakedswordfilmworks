var lazyload=lazyload||{};!function($,e){"use strict";var r=2,t=".button-more",a=".loading-div",o="#data-container";e.load=function(){var e="/_html/pages/"+r+".aspx";$(t).hide(),$(a).show(),$.ajax({url:e,success:function(e){return e&&"NONE"!=e.trim()?void n(e):($(t).fadeOut(),void $(a).text("No more entries to load!"))},error:function(e){$(a).text("Sorry, there was some error with the request. Please refresh the page.")}})};var n=function(e){var n=$(t);$(t).show(),$(a).hide(),$(e).appendTo($(o)),truncateIt($("."+_SRStarWrap)),truncateIt($("."+_SRThemeWrap)),setBackground($(".SRHeroStillWrap")),r+=1}}(jQuery,lazyload);