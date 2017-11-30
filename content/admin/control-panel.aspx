<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" Title="Control Panel" runat="server" />
    </title>
    <ns:MetaTagWriter id="Meta" runat="server" />
    <ns:LinkTagWriter id="Links" runat="server" />
    <ns:StyleWriter id="Styles" runat="server" />
</head>
<body>
   
<%-- Control Panel --%>
<admin:ControlPanel runat="server" 
    id="Control" />    

<ns:ScriptWriter id="Scripts" runat="server" />  
</body>
</html>