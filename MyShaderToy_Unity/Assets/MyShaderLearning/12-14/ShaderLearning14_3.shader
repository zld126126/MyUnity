// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/ShaderLearning14_3"
{
	SubShader{
		Pass{
			ZTest Always
			Blend One One
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
				float3 viewDir : TEXCOORD2;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.normal = normalize(mul(v.normal,(float3x3)unity_WorldToObject));
				o.viewDir = normalize(_WorldSpaceCameraPos.xyz - mul(unity_ObjectToWorld, v.vertex).xyz);
				return o;
			}

			float4 frag(v2f i) : SV_Target
			{
				//float ndotV = dot(i.normal, i.viewDir);
				//float ndotV = 1 - dot(i.normal, i.viewDir);
				float ndotV = 1 - dot(i.normal, i.viewDir) * 2;
				return float4(ndotV, ndotV, ndotV, 0);
			}
			ENDCG
		}
	}
}
