(function ($) {
    var $body = $('body');
    $(document).foundation();
    $body.on('click.bb.panel', function (e) {
        var activePanel = $('.simple-panel.is-active');
        if (activePanel.length && !($.contains(activePanel[0], e.target) || activePanel.is(e.target)) && e.target.getAttribute('data-toggle') !== activePanel[0].id) {
            activePanel.foundation('toggle');
        }
    });
}(jQuery));