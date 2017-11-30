<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <ns:PageTitleWriter id="PageTitle" AllowControlToWrite="Spotlight" runat="server" />
    </title>
<!-- Styles -->   
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" href="/css/spectre.css">

     <style type="text/css">


</style>
  
  


</head>
<body>

<div class="callout" style="color:#000;">small test</div>



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
    PageSize="1"
     />   

     


   

  
   <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
   <script src="/bower_components/foundation-sites/dist/foundation.js"></script>
   
   
     <script>
      $(document).foundation();
    </script>
    
  


  


</body>
</html>