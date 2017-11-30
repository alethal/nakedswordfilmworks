

<!--<div class="callout" style="color:#000;">trending large test</div>-->



<%-- Begin SnippetRandomizer --%>
    <ns:ContentRotator runat="server"
        id="TrendingVideoSwap"
        HideForCustomerProfile=""
        ShowContentVirtualFolder="~/content/channel/trendingvideo/"
         />
    <%-- End SnippetRandomizer --%>



<%-- Search Results --%> 
<nsf:SceneSearchResults  runat="server"
    id="TrendingScenes" 
     SearchType="Trending"
    SearchHeader="Trending"
    SuppressIfNoResults="true"
    OptionsHeaderText="See all trending scenes" 
    OptionsLinkUrl="~/trending"
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

<!--
 <div class="row">
<div class='columns small-12 StarMainCol'><BR>
<A HREF="/join"><div class="button expanded ChannelJoinBtn"><div>JOIN NOW!<div class="ChannelJoinBtnArrow button"></div></div></div></A>
</div>
</div>-->



<script type='text/javascript'>
$(document).ready(function() {
	if ($(".SRBoxWrap").length) {
		_coverHeight = $(".SRBoxWrap").height();
		setBackground($(".SRHeroStillWrap"));
	}
});
</script>