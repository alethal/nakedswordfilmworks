$(document).ready(function(){
	function showPopup() {
		$("#exitpopup").css({"left":($(window).width()-$("#exitpopup").outerWidth())*.5, "top":($(window).height()-$("#exitpopup").outerHeight())*.5});
		$("#exitpopup, #exitpopup_bg").fadeIn();
	}

	function hidePopup() {
		$("#exitpopup, #exitpopup_bg").fadeOut(250);
	}

	$(document).mouseleave(function() {
		showPopup();
	});

	$(".close").click(function() {
		hidePopup();
	});

	$(window).on("blur focus", function(e) {
    var prevType = $(this).data("prevType");

    if (prevType != e.type) {   //  reduce double fire issues
        switch (e.type) {
            case "blur":
				showPopup();
                break;
        }
    }

    $(this).data("prevType", e.type);
	});
});