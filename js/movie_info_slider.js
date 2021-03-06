function setSlider() {
	var _coverRolloverHeight = $(".BoxCoverRollover").height();
	$(".MIHeroSlideWrapperDesktop").height(_coverRolloverHeight);
	$(".MIFullImgSlideBtn").css("padding-top", ($(".BoxCoverRollover").height() - $(".MIPlayBtnMainScene").height()) / 2);
	$(".MovieInfoHero").css("visibility", "visible");
}

$(window).load(function () {
    $(window).resize(function () {
		setSlider();
    });
    setSlider();
});

$(document).ready(function () {
    $("#MovieBoxCover").load(function () {
        setSlider();
    });
});