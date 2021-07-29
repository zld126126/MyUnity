Shader "Custom/ShaderLearning11"
{
	Properties{
		_MainTex("Main Text", 2D) = "white" {}
	}
	SubShader{
		Tags { "Queue" = "Transparent" }
			// 重复利用变量
			CGINCLUDE
			sampler2D _MainTex;
			sampler2D _SecondTex;

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv: TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				float2 uv: TEXCOORD1;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				return o;
			}
			ENDCG

		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha
			Cull Off
			ZWrite Off
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"

			//sampler2D _MainTex;

			//struct appdata
			//{
			//	float4 vertex : POSITION;
			//	float2 uv: TEXCOORD0;
			//};

			//struct v2f
			//{
			//	float4 vertex : SV_POSITION;
			//	float2 uv: TEXCOORD1;
			//};

			//v2f vert(appdata v)
			//{
			//	v2f o;
			//	o.vertex = UnityObjectToClipPos(v.vertex);
			//	o.uv = v.uv;
			//	return o;
			//}

			float4 frag(v2f i) : SV_Target
			{
				float4 color = tex2D(_MainTex, i.uv);
				return color;
			}
			ENDCG
		}

		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha
			Cull Front
			ZWrite Off
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"

			//sampler2D _SecondTex;

			//struct appdata
			//{
			//	float4 vertex : POSITION;
			//	float2 uv: TEXCOORD0;
			//};

			//struct v2f
			//{
			//	float4 vertex : SV_POSITION;
			//	float2 uv: TEXCOORD1;
			//};

			//v2f vert(appdata v)
			//{
			//	v2f o;
			//	o.vertex = UnityObjectToClipPos(v.vertex);
			//	o.uv = v.uv;
			//	return o;
			//}

			float4 frag(v2f i) : SV_Target
			{
				float4 color = tex2D(_SecondTex, i.uv);
				return color;
			}
			ENDCG
		}
	}
}
