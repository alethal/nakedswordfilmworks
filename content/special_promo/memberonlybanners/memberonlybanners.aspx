
<%-- live show banner - members only -
	 
time after 5pm becomes next day
 ScheduleStart="2017-07-22T00:01:00"
 ScheduleEnd="2017-07-22T01:01:00" 
       
        2100 is 9pm on 13st 
        UTC 04:00 on 14th - 5 hours is 09:00 on the 14th 
        
        --%> 
        
    <%--ns:ContentInclude runat="server"
        id="livechatbanner"
        ShowContentUrl="~/content/special_promo/liveshow_aug13_2017/liveshow_aug13_2017.html"
      ScheduleStart="2017-08-14T00:04:00"
        ScheduleEnd="2017-08-14T00:09:00"
         /--%>
         
         
         
               
  <div class="row">
  <div class="columns small-12">
         
         

         
<%-- Members Only Banners - Begin SnippetRandomizer --%>
   <nsf:ContentRotator runat="server"
    id="DefaultMembers"
    ShowForCustomerProfile="ActiveMember"
    ShowContentVirtualFolder="Promo Members"
         />
     <%-- End SnippetRandomizer --%>
          
          
   
     </div>
      </div> 
        
        
         