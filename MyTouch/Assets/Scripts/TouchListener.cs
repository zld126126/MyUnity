/****************************************************
    文件：TouchListener.cs
	功能：UI事件监听插件
*****************************************************/

using System;
using UnityEngine;
using UnityEngine.EventSystems;

public class TouchListener : MonoBehaviour, IPointerDownHandler, IPointerUpHandler, IDragHandler {
    /// <summary>
    /// 触摸区域宽度
    /// </summary>
    [Range(400, 800)] 
    public int touchAreaWidth = 600;
    /// <summary>
    /// 触摸区域高度
    /// </summary>
    [Range(330, 660)] 
    public int touchAreaHeight = 550;
    
    public Action<PointerEventData> onClickDown;
    public Action<PointerEventData> onClickUp;
    public Action<PointerEventData> onDrag;


    public void OnPointerDown(PointerEventData eventData) {
        if (onClickDown != null) {
            onClickDown(eventData);
        }
    }
    public void OnPointerUp(PointerEventData eventData) {
        if (onClickUp != null) {
            onClickUp(eventData);
        }
    }
    public void OnDrag(PointerEventData eventData) {
        if (onDrag != null) {
            onDrag(eventData);
        }
    }

    public void Awake()
    {
        RectTransform rt = gameObject.GetComponent<RectTransform>();
        rt.sizeDelta = new Vector2(touchAreaWidth,touchAreaHeight);
    }
}