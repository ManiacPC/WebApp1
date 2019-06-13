using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace WebApp1
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
                 ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
                                 new ScriptResourceDefinition
         
                             {
                                     Path = "~/Resources/js/jquery-3.3.1.slim.min.js",
                                     DebugPath = "~/Resources/js/jquery-3.3.1.slim.min.js",
                                     CdnPath = "https://code.jquery.com/jquery-3.3.1.slim.min.js",
                                     CdnDebugPath = "https://code.jquery.com/jquery-3.3.1.slim.js"
                                 });
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}