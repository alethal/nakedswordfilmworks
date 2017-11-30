/**
 * @author Shaumik Daityari
 * @copyright Copyright © 2013 All rights reserved.
 */

var lazyload = lazyload || {};

(function($, lazyload) {

    "use strict";

    var page = 2,
        buttonClass = ".button-more",
        loadingClass = ".loading-div",
        container = "#data-container";
		
		//console.log($(this).data('data-xxx'));

    lazyload.load = function() {

        var url = "/_html/pages/" + page + ".aspx";

        $(buttonClass).hide();
        $(loadingClass).show();

        $.ajax({
            url: url,
            success: function(response) {
                if (!response || response.trim() == "NONE") {
                    $(buttonClass).fadeOut();
                    $(loadingClass).text("No more entries to load!");
                    return;
                }
                appendContests(response);
            },
            error: function(response) {
                $(loadingClass).text("Sorry, there was some error with the request. Please refresh the page.");
            }
        });
    };

    var appendContests = function(response) {
        var id = $(buttonClass);

        $(buttonClass).show();
        $(loadingClass).hide();

        $(response).appendTo($(container));
		truncateIt($("."+_SRStarWrap));
		truncateIt($("."+_SRThemeWrap));
		setBackground($(".SRHeroStillWrap"));
		
		page += 1;
		
    };

})(jQuery, lazyload);