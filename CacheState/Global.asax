<%@ Application Language="C#" %>
<%@ Import Namespace="ClassLibraryForEF" %>

<script runat="server">

    static Cache _theCache;

    void Application_Start(object sender, EventArgs e)
    {
        _theCache = Context.Cache;

        var theMonthlyPrices = new MonthlyPricesRepo().GetAll();

        _theCache.Insert("MonthlyPriceList", theMonthlyPrices, null, DateTime.Now.AddSeconds(30),
            Cache.NoSlidingExpiration, CacheItemPriority.Default, UpdateMonthlyPrice);

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    static void UpdateMonthlyPrice(string key, object item, CacheItemRemovedReason reason)
    {
        var theMonthlyPrices = new MonthlyPricesRepo().GetAll();

        _theCache.Insert("MonthlyPriceList", theMonthlyPrices, null, DateTime.Now.AddSeconds(30),
            Cache.NoSlidingExpiration, CacheItemPriority.Default, UpdateMonthlyPrice);
    }

</script>
