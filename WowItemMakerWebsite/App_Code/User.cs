using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///User 的摘要说明
/// </summary>
public class User
{
    private string _userName;

    public string UserName
    {
        get { return _userName; }
        set { _userName = value; }
    }
    private string _password;

    public string Password
    {
        get { return _password; }
        set { _password = value; }
    }

	public User()
	{
	}
}