function attachPlayEvents() {
    $('.playStreamButton').each(function () {
        $(this).on("click", function () {
            var mediaType = $(this).data("media-type");
            var mediaID = $(this).data("media-id");
            playStream(mediaType, mediaID);
        });
    });
}

function playStream(mediaType, mediaID) {

    var unifiedPlayer = new UnifiedPlayer();
    unifiedPlayer.unifiedPlayerHome = "[UnifiedPlayer.PlayerHomeUrl]";
    unifiedPlayer.fullFrameUrl = "[UnifiedPlayer.FullFrameUrl]";

    var parameters = {
        allowedFormats: ['HLS', 'DASH', 'FlashDynamic']
    };

    unifiedPlayer.play(function (parameters) {

        var playFailure = false;

        $.ajax({
            async: false,
            type: "GET",
            url: "/scriptservices/getstream/" + mediaType + "/" + mediaID + "/" + parameters.format,
            contentType: "application/json;",
            dataType: "json",
            success: function (data) {
                if (data.StreamUrl != undefined) {
                    console.log('Success: ', data);
                    parameters.url = data['StreamUrl'];
                    parameters.movieId = data['PlaybackMovieID'];
                    if (data['ClipDurationSeconds'] !== undefined) {
                        if (parameters['ClipStartSeconds'] === undefined) {
                            parameters['ClipStartSeconds'] = 0;
                        }
                        parameters.endSeconds = parameters.startSeconds + data['ClipDurationSeconds'];
                    }
                    console.log('player parameters: ', parameters);
                } else {
                    if (data.Redirect != undefined) {
                        playFailure = true;
                        window.location = data.Redirect;
                    }
                    else {
                        playFailure = true;
                        console.error('No mediaUrl returned: ', data);
                    }
                }
            },
            error: function (data) {
                playFailure = true;
                console.error('Received an error from the Controller: ', data);
            }
        });
        if (playFailure) {

            // Throwing an error here will be caught by unified player - and it will not display the player window.
            throw ("error");
        }
    }, parameters);
}

$(document).ready(function () {
    attachPlayEvents();
});