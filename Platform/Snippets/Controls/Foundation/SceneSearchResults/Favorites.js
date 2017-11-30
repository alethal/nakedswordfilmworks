function toggleFavoritesButtonClass(element)
{
    if ($(element).hasClass("[Favorites.AddToFavoritesButtonClass]")) {
        $(element).removeClass("[Favorites.AddToFavoritesButtonClass]").addClass("[Favorites.RemoveFromFavoritesButtonClass]");
    }
    else {
        $(element).removeClass("[Favorites.RemoveFromFavoritesButtonClass]").addClass("[Favorites.AddToFavoritesButtonClass]");
    }
}

function attachFavoritesEvents() {
    $('.toggleFavoritesButton').each(function () {
        $(this).on("click", function () {
            var sceneID = $(this).data("scene-id");
            var payload = '{ "SceneID" : "' + sceneID + '" }';
            $.post("[Favorites.ToggleFavoritesServiceUrl]", payload);
            toggleFavoritesButtonClass(this);
        });
    });
}

$(document).ready(function () {
    attachFavoritesEvents();
});