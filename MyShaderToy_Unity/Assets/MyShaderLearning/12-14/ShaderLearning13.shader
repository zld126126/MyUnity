Shader "Custom/ShaderLearning13"
{
    SubShader{
        Tags
		{
			"LightMode" = "ForwardBase"
		}

        Pass{
            CGPROGRAM
			#include "Lighting.cginc"

            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				float3 normal : TEXCOORD1;
			};

            v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				//o.normal = normalize(v.normal);
				o.normal = normalize(mul(v.normal,(float3x3)unity_WorldToObject));
				return o;
			}

			float4 frag(v2f i) : SV_Target
			{
				return saturate(dot(i.normal, _WorldSpaceLightPos0));
			}
            ENDCG
        }
    }
}
