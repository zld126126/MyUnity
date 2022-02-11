Shader "Effect/Xray"
{
	Properties
	{
		_RimColor("RimColor", Color) = (0, 0, 1, 1)
		_RimIntensity("Intensity", Range(0, 3)) = 1
	}

	SubShader
	{
		Tags{ "Queue" = "Transparent" "RenderType" = "Opaque" }

		LOD 200
		Pass
		{
		Blend SrcAlpha One//打开混合模式
		ZWrite off
		Lighting off

		CGPROGRAM
		#pragma vertex vert
		#pragma fragment frag

		#include "UnityCG.cginc"

		struct appdata
		{
			float4 vertex : POSITION;
			float3 normal:Normal;
		};

		struct v2f
		{
			float4 pos : SV_POSITION;
			float3 normal : normal;
			float3 viewDir : TEXCOORD0;
		};

		fixed4 _RimColor;
		float _RimIntensity;

		v2f vert(appdata v)
		{
			v2f o;
			o.pos = UnityObjectToClipPos(v.vertex);
			o.viewDir = ObjSpaceViewDir(v.vertex);
			o.normal = v.normal;
			return o;
		}

		fixed4 frag(v2f i) : COLOR
		{
			float3 normal = normalize(i.normal);
			float3 viewDir = normalize(i.viewDir);
			float rim = 1 - dot(normal, viewDir);
			return _RimColor * rim * (1 + _RimIntensity);
		}
		ENDCG
	}
	}
}