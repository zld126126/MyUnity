/****************************************************
    文件：BaseTouch.cs
	功能：基类
*****************************************************/
using UnityEngine;
using System;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class BaseTouch : MonoBehaviour 
{
    protected T GetOrAddComponect<T>(GameObject go) where T : Component
    {
        T t = go.GetComponent<T>();
        if (t == null)
        {
            t = go.AddComponent<T>();
        }

        return t;
    }
    
    protected void OnClickDown(GameObject go, Action<PointerEventData> cb)
    {
        TouchListener listener = GetOrAddComponect<TouchListener>(go);
        listener.onClickDown = cb;
    }

    protected void OnClickUp(GameObject go, Action<PointerEventData> cb)
    {
        TouchListener listener = GetOrAddComponect<TouchListener>(go);
        listener.onClickUp = cb;
    }

    protected void OnDrag(GameObject go, Action<PointerEventData> cb)
    {
        TouchListener listener = GetOrAddComponect<TouchListener>(go);
        listener.onDrag = cb;
    }
    
    protected void SetActive(Image img, bool state = true) {
        img.transform.gameObject.SetActive(state);
    }
}
    