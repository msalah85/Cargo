<%@ Application Language="C#" %>
<%@ Import Namespace="Implementation" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script RunAt="server">
    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        HttpCookie _userInfo = Request.Cookies[Config._cookName]; // get saved coockie.
        if (_userInfo != null)
        {
            CookiesManager.UserLogin(_userInfo);
        }
    }
</script>
