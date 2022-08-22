using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MyGUI : MonoBehaviour
{
    private void OnGUI()
    {
        GUIStyle fontStyle = new GUIStyle();
        fontStyle.normal.background = null;
        fontStyle.normal.textColor = new Color(1, 0, 0);
        fontStyle.fontSize = 60;
        
        GUI.Button(new Rect(100,200,100,200),"1.键盘按下W/S/A/D键控制玩家移动",fontStyle);
        GUI.Button(new Rect(100,400,100,200),"2.键盘按下Enter键,切换玩家...",fontStyle);
    }
}
