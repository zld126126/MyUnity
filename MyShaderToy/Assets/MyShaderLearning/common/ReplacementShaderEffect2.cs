using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class ReplacementShaderEffect2 : MonoBehaviour
{
    public Shader ReplacementShader;
    public Texture Tex;
    public Texture Tex2;

    private void OnEnable()
    {
        if (ReplacementShader != null)
            GetComponent<Camera>().SetReplacementShader(ReplacementShader, "RenderType");
        //GetComponent<Camera>().SetReplacementShader(ReplacementShader, "");
    }

    private void OnDisable()
    {
        GetComponent<Camera>().ResetReplacementShader();
    }

    private void OnValidate()
    {
        //Shader.SetGlobalColor("_OverDrawColor", color);
        Shader.SetGlobalTexture("_Tex", Tex);
        Shader.SetGlobalTexture("_Tex2", Tex2);
    }
}
