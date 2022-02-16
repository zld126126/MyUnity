using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class ObjectManager : Singleton<ObjectManager>
{
    public ClassObjectPool<TestSerializable> test = ObjectManager.Instance.GetOrCreateClassPool<TestSerializable>(1000);

    public void TestClass()
    {
        TestSerializable t = test.Spawn(true);
        test.Recycle(t);
    }

    protected Dictionary<Type, object> m_ClassPoolDic = new Dictionary<Type, object>();
    /// <summary>
    /// 创建类对象池,创建完成后 外面可以保存ClassObjectPool<T> 然后调用Spawn和Recycle来创建和回收类对象
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public ClassObjectPool<T> GetOrCreateClassPool<T>(int maxCount) where T : class, new()
    {
        Type type = typeof(T);
        object outObj = null;
        if (m_ClassPoolDic.TryGetValue(type, out outObj) || outObj == null)
        {
            ClassObjectPool<T> newPool = new ClassObjectPool<T>(maxCount);
            m_ClassPoolDic.Add(type, newPool);
            return newPool;
        }

        return outObj as ClassObjectPool<T>;
    }

    public T NewClassObjectFromPool<T>(int maxCount) where T : class, new()
    {
        ClassObjectPool<T> pool = GetOrCreateClassPool<T>(maxCount);
        if (pool == null)
        {
            return null;
        }

        return pool.Spawn(true);
    }
}
