Shader "Custom/ShaderLearningExam4"
{
	Properties{
		_Tex("Texture", 2D) = "white" {}
		_Tex2("Texture", 2D) = "white" {}
		_MigTex3("Displacement Texture", 2D) = "white" {}
		_Magnitude("Magnitude", Range(0, 1)) = 0
	}
	
	SubShader
	{
		Tags
		{
			"RenderType" = "Opaque"
		}

		Pass
		{
			Cull Back
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"

			sampler2D _Tex2;

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

			float4 frag(v2f i) : SV_Target
			{
				float4 color = tex2D(_Tex2, i.uv);
				return color;
			}
			ENDCG
		}

		Pass
		{
			Cull Back
			Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"

			sampler2D _Tex;
			sampler2D _MigTex3;
			float _Magnitude;

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

			float4 frag(v2f i) : SV_Target
			{
				float uv_xy = float2(i.uv.x+_Time.x*2,i.uv.y+_Time.x*2);
                float2 disp = tex2D(_MigTex3,uv_xy).xy;
                disp = ((disp * 2) - 1) * _Magnitude;
                float4 color = tex2D(_Tex, i.uv + disp);
                return color;
			}
			ENDCG
		}
	}
}
