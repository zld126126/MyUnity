using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class Tools
{
    private static string SNOW_ON = "SNOW_ON";

    [MenuItem("Tools/Shader/打开或关闭雪的宏")]
    public static void OpenRimlight()
    {
        if (Shader.IsKeywordEnabled(SNOW_ON))
        {
            Shader.DisableKeyword(SNOW_ON);
        }
        else
        {
            Shader.EnableKeyword(SNOW_ON);
        }
    }
}
