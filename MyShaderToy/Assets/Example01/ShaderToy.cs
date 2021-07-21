using System;
using UnityEngine;

[ExecuteInEditMode]
public class ShaderToy : MonoBehaviour
{

    public int horizontalResolution = 320;
    public int verticalResolution = 240;
    public Shader shaderToy;
    private Material shaderToyMaterial = null;
    public Material material
    {
        get
        {
            shaderToyMaterial = CheckShaderAndCreateMaterial(shaderToy, shaderToyMaterial);
            return shaderToyMaterial;
        }
    }

    // Called by camera to apply image effect
    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        // To draw the shader at full resolution, use: 
        // Graphics.Blit (source, destination, material);

        // To draw the shader at scaled down resolution, use:
        RenderTexture scaled = RenderTexture.GetTemporary(horizontalResolution, verticalResolution);
        Graphics.Blit(source, scaled, material);
        Graphics.Blit(scaled, destination);
        RenderTexture.ReleaseTemporary(scaled);
    }

    protected Material CheckShaderAndCreateMaterial(Shader shader, Material material)
    {
        if (shader == null)
        {
            return null;
        }

        if (shader.isSupported && material && material.shader == shader)
            return material;

        if (!shader.isSupported)
        {
            return null;
        }
        else
        {
            material = new Material(shader);
            material.hideFlags = HideFlags.DontSave;
            if (material)
                return material;
            else
                return null;
        }
    }
}
