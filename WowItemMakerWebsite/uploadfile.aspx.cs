using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uploadfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < Request.Form.Count; i++)
        {
            string str = Request.Form[i];
        }
        Response.Clear();
        Response.Write("1");
        Response.End();
    }
}