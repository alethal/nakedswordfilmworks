$(window).load(function () {
    $(".ui-autocomplete").bind("DOMSubtreeModified", function () {
        $(this).on("click", function (e) {
            if (e.handled !== true) {
                $("form#[KeywordSearchForm.FormName]").submit();
                e.handled = true;
            }
        });
    });
});
