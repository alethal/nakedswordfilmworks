function setBackground(t){t.length&&t.each(function(){var t=$(this).data("bg");$(this).height(_coverHeight).css({background:"url('"+t+"') center center no-repeat","background-size":"100%"})})}function truncateIt(t){var t=t,e,i;if(t.hasClass(_SRStarWrap)?i=_SRStarWrap:t.hasClass(_SRSexActWrap)&&(i=_SRSexActWrap),t.hasClass(_SRMainTitle)||t.hasClass(_BoxResultsMainTitle)){if($(".BoxResultsMainTitle").length)var n=$(".BoxResultsLink").innerWidth()-2*_targetPadding2;else var n=$(".SRMainTitleLink").innerWidth()-2*_targetPadding;t.each(function(){var t=$(this).find("a:eq(0)");t.css({opacity:0}),void 0===t.attr("data-ori")&&t.attr("data-ori",t.html());var e="<span>"+t.attr("data-ori")+"</span>";t.html(e);var i=t.find("span:first").width(),a=Math.round(n/11);if(t.attr("data-ori").length>a){var s=jQuery.trim(t.attr("data-ori")).substring(0,a).split(" ").slice(0,-1).join(" ");t.html(s),1==t.parent().find("a").length&&(t.parent().append("<a class='showFullTitle'>...</a>"),bindShowMore())}else t.parent().find(".showFullTitle").remove();t.css({opacity:1}),$(".SRTitleDurationRow > div").css({height:t.outerHeight()+_targetPadding})})}t.length&&(e=t.length,t.find("li").show(),t.each(function(){var e=t.index($(this).closest("."+i)),n=0,a=$(this).width()-2*parseInt($(this).css("padding-left"));_listItems=$(this).find("li"),_listItems.each(function(t,e){var i=$(e),a=$(e).width();n+=a}).promise().done(function(){n>a&&(n=0,_listItems.each(function(t,s){var r=$(s),o=$(s).width(),h=$("."+i+":eq("+e+")");return n+o>a?(h.find("li:eq("+(t-1)+")").nextAll().hide(),h.find("ul").find(".showMore").length||(h.find("ul").append(_moreText),bindShowMore()),!1):(h.find("ul").find(".showMore").remove(),h.find("ul").find(".showLess").remove(),n+=o,void 0)}))})}))}function truncateItAll(){truncateIt($("."+_SRMainTitle)),truncateIt($("."+_SRStarWrap)),truncateIt($("."+_SRSexActWrap)),$(".BoxResultsMainTitle").length&&truncateIt($("."+_BoxResultsMainTitle))}function bindShowMore(){$(".showFullTitle").unbind().on("click",function(){"✕"==$(this).html()?(truncateIt($(this).parent().parent()),$(this).html("...")):($(this).prev("a").html($(this).prev("a").attr("data-ori")),$(this).parent().parent().parent().find(".columns").css({height:$(this).prev("a").outerHeight()+_targetPadding}),$(this).html("&#10005;"))}),$("li.showMore").unbind().on("click",function(){var t=$(this).parent().find("li:hidden:first").index();$(this).parent().css({"white-space":"normal"}),$(this).parent().parent().parent().parent().css({height:"auto"}),$(this).parent().find("li").show(),$(this).parent().find(".showLess").length||$(this).parent().append(_lessText),bindShowLess(t),$(this).remove()})}function bindShowLess(t){$("li.showLess").unbind().on("click",function(){$(this).parent().css({"white-space":"nowrap"}),$(this).parent().find("li:eq("+(t-1)+")").nextAll().hide(),$(this).parent().append(_moreText),bindShowMore(),$(this).remove()})}var _coverHeight;$(".SRHeroStillWrap").height(_coverHeight);var _SRMainTitle="SRMainTitle",_SRStarWrap="SRStarWrap",_SRSexActWrap="SRSexActWrap",_moreText="<li class='showMore'><a> ...</a></li>",_lessText="<li class='showLess'><a> &#10005;</a></li>",_targetPadding=2*parseInt($(".SRMainTitleLink").css("margin-top"));if($(".BoxResultsMainTitle").length)var _BoxResultsMainTitle="BoxResultsMainTitle",_targetPadding2=2*parseInt($(".BoxResultsMainTitle").css("margin-top"));$(".showMore").remove(),$(".showLess").remove(),$(window).load(function(){$(".SRBoxWrap").length&&(_coverHeight=$(".SRBoxWrap").height(),setBackground($(".SRHeroStillWrap"))),truncateItAll(),$(window).resize(function(){_coverHeight=$(".SRBoxWrap").height(),$(".SRHeroStillWrap").height(_coverHeight),truncateItAll(),bindShowMore()})});