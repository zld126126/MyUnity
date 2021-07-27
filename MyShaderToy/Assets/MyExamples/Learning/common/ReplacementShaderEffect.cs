using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class ReplacementShaderEffect : MonoBehaviour
{
    public Shader ReplacementShader;
    public Color color;

    private void OnEnable()
    {
        if (ReplacementShader != null)
            //GetComponent<Camera>().SetReplacementShader(ReplacementShader, "RenderType");
            GetComponent<Camera>().SetReplacementShader(ReplacementShader, "");
    }

    private void OnDisable()
    {
        GetComponent<Camera>().ResetReplacementShader();
    }

    private void OnValidate()
    {
        Shader.SetGlobalColor("_OverDrawColor", color);
    }
}
