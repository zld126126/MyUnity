using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class BaseHandler
{
    /// <summary>
    /// 接收到数据
    /// </summary>
    public abstract void OnReceive(int subCode, object value);
}
