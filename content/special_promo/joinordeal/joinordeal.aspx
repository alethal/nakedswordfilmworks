<%-- generic banner always (fallback content) except for the timing when the sale banner is turned on 6pm - 1800 military to 1am utc - noon is 19 - times after 5pm become next day
       ShowForAffiliateStatus="TypeIn"
       1pm to 130pm
       ScheduleStart="2017-05-24T20:01:00"
        ScheduleEnd="2017-05-24T20:30:00" 
        
       ScheduleStart="2017-05-29T08:01:00"
        ScheduleEnd="2017-05-30T08:01:00"--%>
        
        
    <%-- this is the old control not connected to the database 
        ns:ContentInclude runat="server"
        id="generaljoinbannerpresale"
        FallbackContentUrl="~/content/special_promo/genericjoin/show/show.html"
        ShowForAffiliateStatus="TypeIn"
        ShowContentUrl="~/content/special_promo/resist_july31_2017/resist_july31_2017.html"
        ScheduleStart="2017-07-31T08:01:00"
        ScheduleEnd="2017-08-01T08:01:00"
         /--%>
         
         
         
  <div class="row">
  <div class="columns small-12">

         
<%-- Join or Deal Banners Type In - Begin SnippetRandomizer --%>
   <nsf:ContentRotator runat="server"
    id="JoinDefaultTypeIn"
    ShowForAffiliateStatus="TypeIn"
    ShowContentVirtualFolder="Promo Non-Member Type-in"
         />
      <%-- End SnippetRandomizer --%>
          
          
        
   <%-- Join or Deal Banners Affiliate Banners - Begin SnippetRandomizer --%>
   <nsf:ContentRotator runat="server"
    id="JoinDefaultAffiliate"
    HideForAffiliateStatus="TypeIn"
    ShowContentVirtualFolder="Promo Non-Member Affiliate"
         />
     <%-- End SnippetRandomizer --%>  
          
      <BR>
          
     </div>
      </div> 
       