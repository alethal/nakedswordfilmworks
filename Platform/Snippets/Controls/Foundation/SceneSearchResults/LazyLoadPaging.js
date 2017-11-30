// TODO: Refactor to pass in variables to Load() function.

var lazyload = lazyload || {};

(function ($, lazyload) {

    "use strict";

    var page = 2,
        buttonElementID = "#[SceneSearchResults.LoadMoreButtonClass]",
        loadingElementID = "#[SceneSearchResults.LoadingClass]",
        dataContainerElementID = "#[SceneSearchResults.DataContainer]";

    lazyload.load = function () {

        var url = "[SceneSearchResults.LazyLoadServiceUrl]" + "&page=" + page;

        $(buttonElementID).hide();
        $(loadingElementID).show();

        $.ajax({
            url: url,
            success: function (response) {
                if (!response || response.trim() == "NONE") {
                    $(buttonElementID).fadeOut();
                    $(loadingElementID).text("No more entries to load!");
                    return;
                }
                appendPage(response);
            },
            error: function (response) {
                $(loadingElementID).text("Sorry, there was some error with the request. Please refresh the page.");
            }
        });
    };

    var appendPage = function (response) {
        var id = $(buttonElementID);

        $(buttonElementID).show();
        $(loadingElementID).hide();

        $(response).appendTo($(dataContainerElementID));

        page += 1;

        truncateItAll();
        setBackground($(".SRHeroStillWrap"));
        attachPlayEvents();
        attachFavoritesEvents();
    };

})(jQuery, lazyload);