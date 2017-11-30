$(document).ready(function () {
    $("#[KeywordSearchForm.FieldName]").autocomplete({
        source: function (request, response) {
            $.getJSON("[KeywordSearchForm.AutoSuggestServiceUrl]", {
                term: extractLast(request.term)
            }, response);
        },
        search: function () {
            var term = extractLast(this.value);
            if (term.length < 1) {
                return false;
            }
        },
        minLength: [KeywordSearchForm.AutoSuggestMinimumLength],
        delay: [KeywordSearchForm.AutoSuggestDelay],
        focus: function () {
            return false;
        },
    });
    function split(val) {
        return val.split(/,\s*/);
    }
    function extractLast(term) {
        return split(term).pop();
    }
});
