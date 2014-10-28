using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NHibernate;
using NHibernate.Cfg;

/// <summary>
///SessionManager 的摘要说明
/// </summary>
public class SessionManager
{
    private ISessionFactory _sessionFactory;
    public SessionManager()
    {
        _sessionFactory = GetSessionFactory();
    }
    private ISessionFactory GetSessionFactory()
    {
        return (new Configuration()).Configure().BuildSessionFactory();
    }
    public ISession GetSession()
    {
        return _sessionFactory.OpenSession();
    }
}