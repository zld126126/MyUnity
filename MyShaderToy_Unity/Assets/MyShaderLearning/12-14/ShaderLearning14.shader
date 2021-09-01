Shader "Custom/ShaderLearning14"
{
    SubShader{
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

			//float3 UnityObjectToWorldNormal(in float3 norm) {
			//	return normalize(unity_WorldToObject[0].xyz * norm.x + unity_WorldToObject[1].xyz * norm.y + unity_WorldToObject[2].xyz * norm.z);
			//}

            v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				// o.normal = normalize(mul(v.normal,(float3x3)unity_WorldToObject));
				o.normal = UnityObjectToWorldNormal(v.normal);  // 与上同
				return o;
			}

			float4 frag(v2f i) : SV_Target
			{
				// return saturate(dot(i.normal, _WorldSpaceLightPos0));
				float ndotL = dot(i.normal, _WorldSpaceLightPos0);
				return float4(ndotL, ndotL, ndotL,0); // 与上同
			}
            ENDCG
        }
    }
}
