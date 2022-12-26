using System;
using UnityEngine;

public class Main : MonoBehaviour
{
    private GameObject Cube;

    private void Start()
    {
        Cube = GameObject.Find("Cube");
    }

    void OnGUI()
    {
        GUI.Label(new Rect(50, 50, 280, 100), "注意事项:请检查app有没有正常跳过unity-logo广告...", GetGUIStyle(20, Color.green));
        if (GUI.Button(new Rect(140, 180, 100, 100), "旋转物体"))
        {
            Debug.Log("这是一个旋转物体按钮");
            Cube.transform.Rotate(20*Vector3.up,Space.Self);
        }
    }
    
    private GUIStyle GetGUIStyle(int fontSize, Color color)
    {
        GUIStyle style = GUI.skin.textArea;
        style.normal.textColor = color;
        style.fontSize = fontSize;
        return style;
    }
}
