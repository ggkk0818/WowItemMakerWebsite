using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;
using System.Collections;
using NHibernate;

[ScriptService]
[WebService]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string test()
    {
        return "test";
    }

    [WebMethod][ScriptMethod(ResponseFormat=ResponseFormat.Json)]
    public static List<string> test2(string str)
    {
        List<string> list = new List<string>();
        list.Add("1");
        list.Add("2");
        list.Add("3");
        return list;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SessionManager manager = new SessionManager();
        ISession session = manager.GetSession();
        ArrayList list = (ArrayList)session.CreateSQLQuery("select name as _userName,pwd as _password from test").SetResultTransformer(NHibernate.Transform.Transformers.AliasToBean(typeof(User))).List();

        //int r = session.CreateSQLQuery("insert into test(name,pwd,displayname) VALUES(?,?,?)")
        //    .SetString(0, "'")
        //    .SetString(1, "' and 1=1")
        //    .SetString(2, "''").ExecuteUpdate();
        session.Close();
        ArrayList list2 = new ArrayList();
        for (int i = 0; i < 20; i++)
        {
            session = manager.GetSession();
            session.CreateSQLQuery("select name as _userName,pwd as _password from test").SetResultTransformer(NHibernate.Transform.Transformers.AliasToBean(typeof(User))).List();
            list2.Add(session);
        }
    }
}