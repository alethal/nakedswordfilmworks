   
   
    <%--ns:ContentInclude runat="server"
        id="joinordeal"
        ShowContentUrl="~/content/special_promo/joinordeal/joinordeal.aspx"
        ShowForCustomerProfile="SignedOut"
         /--%>
       
  
       
    <%--ns:ContentInclude runat="server"
        id="memberonlybanners"
        ShowContentUrl="~/content/special_promo/memberonlybanners/memberonlybanners.aspx"
        ShowForCustomerProfile="ActiveMember"
         /--%>
         
         
         
         
    
<%-- Begin SnippetRandomizer --%>
    <ns:ContentRotator runat="server"
        id="JoinTop"
        ShowForCustomerProfile="SignedOut"
        ShowContentVirtualFolder="~/content/join_top_folder/"
         />
    <%-- End SnippetRandomizer --%>




  


   