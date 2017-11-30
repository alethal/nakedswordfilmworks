<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />
</head>
<body>

<%-- Studio Billboard --%>
<nsf:StudioBillboard id="FeaturedStudios" runat="server" 
    MaxResults="4" />   

<br />
<!--
<img data-interchange="[https://spotlight.nakedcdn.com/nakedsword/img/small.jpg, small], [https://spotlight.nakedcdn.com/nakedsword/img/medium.jpg, medium], [https://spotlight.nakedcdn.com/nakedsword/img/large.jpg, large]">
<BR>-->


   
<%-- Studio Index --%>
<nsf:StudioIndex id="AllStudios" runat="server" />    

<ns:ScriptWriter id="Scripts" runat="server" />  
</body>
</html>