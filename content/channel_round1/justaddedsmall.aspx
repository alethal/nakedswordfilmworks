<div class="ChannelSmall">
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
    PageSize="2"
     />   
<BR>
<A HREF="/join"><img src="https://spotlight.nakedcdn.com/nakedsword/img/channel/channel_join2.jpg" width="100%"></A>


</div><!-- // ChannelSmall -->

<script type='text/javascript'>
$(document).ready(function() {
	if ($(".SRBoxWrap").length) {
		_coverHeight = $(".SRBoxWrap").height();
		setBackground($(".SRHeroStillWrap"));
	}
});
</script>