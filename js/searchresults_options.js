//document.writeln("<script type='text/javascript' src='/js/movie_info_slider.js'></script>");

var _coverHeight;
$(".SRHeroStillWrap").height(_coverHeight);

function setBackground(_target) {
    if (_target.length) {
        _target.each(function () {
            var _bgImg = $(this).data("bg");
            $(this).height(_coverHeight).css({ "background": "url('" + _bgImg + "') center center no-repeat", "background-size": "100%" });
        });
    }
}

var _SRMainTitle = "SRMainTitle";
var _SRStarWrap = "SRStarWrap";
var _SRSexActWrap = "SRSexActWrap";
var _moreText = "<li class='showMore'><a> ...</a></li>";
var _lessText = "<li class='showLess'><a> &#10005;</a></li>";
var _targetPadding = parseInt($(".SRMainTitleLink").css("margin-top")) * 2;

// Alltitles
if ($(".BoxResultsMainTitle").length) {
	var _BoxResultsMainTitle = "BoxResultsMainTitle";
	var _targetPadding2 = parseInt($(".BoxResultsMainTitle").css("margin-top")) * 2;
}

$(".showMore").remove();
$(".showLess").remove();

function truncateIt(_target) {
    var _target = _target;
    var _targetTotal;
    var _targetClass;

    if (_target.hasClass(_SRStarWrap)) {
        _targetClass = _SRStarWrap;
    } else if (_target.hasClass(_SRSexActWrap)) {
        _targetClass = _SRSexActWrap;
    }

    // Truncate titles //
    if (_target.hasClass(_SRMainTitle) || _target.hasClass(_BoxResultsMainTitle)) {
		if ($(".BoxResultsMainTitle").length) {
        	var _targetWidth = $(".BoxResultsLink").innerWidth() - _targetPadding2 * 2;
		} else {
			var _targetWidth = $(".SRMainTitleLink").innerWidth() - _targetPadding * 2;
		}

        _target.each(function () {
            var $this = $(this).find("a:eq(0)");
            $this.css({ opacity: 0 });
            if ($this.attr("data-ori") === undefined) {
                $this.attr("data-ori", $this.html());
            }

            var $dataOriSpan = "<span>" + $this.attr("data-ori") + "</span>";
            $this.html($dataOriSpan);
            var $thisWidth = $this.find('span:first').width();

            var _characterMax = Math.round(_targetWidth / 11);
            if ($this.attr("data-ori").length > _characterMax) {
                var _shortened = jQuery.trim($this.attr("data-ori")).substring(0, _characterMax).split(" ").slice(0, -1).join(" ");
                $this.html(_shortened);
                if ($this.parent().find("a").length == 1) {
                    $this.parent().append("<a class='showFullTitle'>...</a>");
					bindShowMore();
					//$this.parent().find(".showFullTitle").remove();
                }
            } else {
				$this.parent().find(".showFullTitle").remove();
			}
            $this.css({ opacity: 1 });
            $(".SRTitleDurationRow > div").css({ "height": $this.outerHeight() + _targetPadding });
        });
    }

    // Truncate models and themes //
    if (_target.length) {
        _targetTotal = _target.length;

        _target.find('li').show();

        _target.each(function () {
            var _targetIndex = _target.index($(this).closest("." + _targetClass));
            var _listTotalWidth = 0;
            var _listContainerWidth = $(this).width() - parseInt($(this).css("padding-left")) * 2;

            _listItems = $(this).find('li');
            _listItems.each(function (idx, li) {
                var _item = $(li);
                var _itemWidth = $(li).width();

                _listTotalWidth = _listTotalWidth + _itemWidth;
            }).promise().done(function () {
                if (_listTotalWidth > _listContainerWidth) {
                    _listTotalWidth = 0;
                    _listItems.each(function (idx, li) {
                        var _item = $(li);
                        var _itemWidth = $(li).width();
                        var _currentList = $("." + _targetClass + ":eq(" + _targetIndex + ")");

                        if (_listTotalWidth + _itemWidth > _listContainerWidth) {
                            _currentList.find("li:eq(" + (idx - 1) + ")").nextAll().hide();

                            if (!_currentList.find("ul").find(".showMore").length) {
                                _currentList.find("ul").append(_moreText);
                                bindShowMore();
                            }
                            return false;
                        } else {
                            _currentList.find("ul").find(".showMore").remove();
                            _currentList.find("ul").find(".showLess").remove();
                            _listTotalWidth = _listTotalWidth + _itemWidth;
                        }
                    });
                }
            });
        });
    }
}

function truncateItAll() {
    truncateIt($("." + _SRMainTitle));
    truncateIt($("." + _SRStarWrap));
    truncateIt($("." + _SRSexActWrap));
	if ($(".BoxResultsMainTitle").length) {
		truncateIt($("." + _BoxResultsMainTitle));
	}
}

function bindShowMore() {
    $(".showFullTitle").unbind().on("click", function () {
        if ($(this).html() == "✕") {
            truncateIt($(this).parent().parent());
            $(this).html("...");
        } else {
            $(this).prev("a").html($(this).prev("a").attr("data-ori"));
            $(this).parent().parent().parent().find(".columns").css({ "height": $(this).prev("a").outerHeight() + _targetPadding });
            //$(this).remove();
            $(this).html("&#10005;");
            //return false;
        }
    });
    $("li.showMore").unbind().on("click", function () {
        var _logIndex = $(this).parent().find("li:hidden:first").index()
        $(this).parent().css({ "white-space": "normal" });
        $(this).parent().parent().parent().parent().css({ "height": "auto" });
        $(this).parent().find("li").show();
        if (!$(this).parent().find(".showLess").length) {
            $(this).parent().append(_lessText);
        }
        bindShowLess(_logIndex);
        $(this).remove();
    });
}

function bindShowLess(_logIndex) {
    $("li.showLess").unbind().on("click", function () {
        $(this).parent().css({ "white-space": "nowrap" });
        $(this).parent().find("li:eq(" + (_logIndex - 1) + ")").nextAll().hide();
        $(this).parent().append(_moreText);
        bindShowMore();
        $(this).remove();
    });
}

$(window).load(function () {
    if ($(".SRBoxWrap").length) {
        _coverHeight = $(".SRBoxWrap").height();
        setBackground($(".SRHeroStillWrap"));
    }

    truncateItAll();

    $(window).resize(function () {
		_coverHeight = $(".SRBoxWrap").height();
		$(".SRHeroStillWrap").height(_coverHeight);
        truncateItAll();
		bindShowMore();
    });
});