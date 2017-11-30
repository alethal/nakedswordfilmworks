

<!--<div class="callout" style="color:#000;">studios large test</div>-->



<%-- Begin SnippetRandomizer --%>
    <ns:ContentRotator runat="server"
        id="StudioVideoSwap"
        HideForCustomerProfile=""
        ShowContentVirtualFolder="~/content/channel/studiovideo/"
         />
    <%-- End SnippetRandomizer --%>


 <div class="row">
<!-- col -->
<div class='columns small-12'>
<A HREF="/join"><img src="https://spotlight.nakedcdn.com/nakedsword/img/channel/studio/studio_header.png" width="100%"></A>
</div><!-- // col -->   
</div><!-- // row -->

<!--<div class="StudioChannel">-->
   <%-- Studio Billboard --%>
<nsf:StudioBillboard id="FeaturedStudios" runat="server" MaxResults="18"  InterchangeMinimumWidth="640" InterchangeMaximumWidth="640"/>  
<!--</div>-->



<div class="row">
<div class='columns small-12 StarMainCol'><BR>
<A HREF="/join"><img src="https://spotlight.nakedcdn.com/nakedsword/img/channel/channel_join2.jpg" width="100%"></A>
</div> 
</div>

<!--<script type='text/javascript'>
    $(document).ready(function () {
        $('#vidstudio').get(0).play();
    });
</script>-->


