function attachFavoritesEvents() {
    $('.toggleFavoritesButton').each(function () {
        $(this).on("click", function () {
            window.location.href = "[Favorites.NonMemberRedirectUrl]";
        });
    });
}

$(document).ready(function () {
    attachFavoritesEvents();
});