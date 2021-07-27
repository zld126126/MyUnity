﻿Shader "Custom/ShaderLearning6-5"
{
    Properties
    {
        _MainTex("Main Text", 2D) = "white" {}
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        Pass{
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            sampler2D _MainTex;

            // 获取模型数据
            struct appdata
            {
                float4 vertex : POSITION;// 把模型顶点坐标填充到vertex中
                float2 uv: TEXCOORD0;// 第一组纹理坐标
            };

            // 存放计算结果
            struct v2f
            {
                float4 vertex : SV_POSITION; // 输出到裁剪空间中的顶点坐标
                float2 uv: TEXCOORD1;
            };

            // 拿取模型数据计算后传给fragment shader
            v2f vert(appdata v)
            {
                v2f o;
                o.uv = v.uv;
                o.vertex = UnityObjectToClipPos(v.vertex);
                return o;
            }

            // 拿取计算结果作用于目标
            float4 frag(v2f i) : SV_Target
            {
                float4 color = tex2D(_MainTex,i.uv);
				float luminance = 0.2125 * color.r + 0.07154 * color.g + 0.0721 * color.b;
				color = float4(luminance,luminance,luminance,color.a);
                return color;
            }
            ENDCG
        }
        
    }
}
