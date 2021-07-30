// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/ShaderLearning12"
{
    SubShader{
        Tags{
            "Queue" = "Transparent"
        }

        Pass{
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct appdata {
                float4 vertex : POSITION;
				float3 normal : NORMAL;
            };

            struct v2f {
                float4 vertex : SV_POSITION;
                float3 normal : TEXCOORD1;
            };

            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.normal = normalize(v.normal);
                return o;
            }

            float4 frag(v2f i) : SV_Target
            {
                float3 color = (i.normal + 1) *0.5;
                return float4(color.rgb, 1);
            }
            ENDCG
        }
    }
}
