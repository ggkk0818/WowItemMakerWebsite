using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///UserTransformer 的摘要说明
/// </summary>
public class UserTransformer : NHibernate.Transform.IResultTransformer
{
	public UserTransformer()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public System.Collections.IList TransformList(System.Collections.IList collection)
    {
        throw new NotImplementedException();
    }

    public object TransformTuple(object[] tuple, string[] aliases)
    {
        throw new NotImplementedException();
    }
}