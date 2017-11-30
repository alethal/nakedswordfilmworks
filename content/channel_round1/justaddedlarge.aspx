

<!--<div class="callout" style="color:#000;">just added large test</div>-->

<%-- Begin SnippetRandomizer --%>
    <ns:ContentRotator runat="server"
        id="JustAddedVideoSwap"
        ShowContentVirtualFolder="~/content/channel/justaddedvideo/"
         />
    <%-- End SnippetRandomizer --%>


<%-- Search Results --%> 
<nsf:SceneSearchResults  runat="server"
    id="JustAddedScenes" 
     SearchType="JustAdded"
    SearchHeader="Just Added"
    SuppressIfNoResults="true"
    OptionsHeaderText="See all just added scenes" 
    OptionsLinkUrl="~/just-added"
    ShowSearchHeader="true"
    ShowSortOptions="false"
    ShowPaging="false"
    PageSize="12"
     />   



<div class="row">
<div class='columns small-12 StarMainCol'><BR>
<A HREF="/join"><img src="https://spotlight.nakedcdn.com/nakedsword/img/channel/channel_join2.jpg" width="100%"></A>
</div> 
</div>



<script type='text/javascript'>
$(document).ready(function() {
	if ($(".SRBoxWrap").length) {
		_coverHeight = $(".SRBoxWrap").height();
		setBackground($(".SRHeroStillWrap"));
	}
});
</script>