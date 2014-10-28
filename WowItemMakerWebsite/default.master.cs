using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _default : System.Web.UI.MasterPage
{
    public string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        path = "/";
        if (Request.ApplicationPath.Length > 1)
        {
            path = Request.ApplicationPath + "/";
        }
    }
}
