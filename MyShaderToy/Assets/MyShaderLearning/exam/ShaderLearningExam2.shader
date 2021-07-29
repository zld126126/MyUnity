Shader "Custom/ShaderLearningExam2"
{
	Properties{
		_Tex ("Texture", 2D) = "white" {}
		_Tex2 ("Texture", 2D) = "white" {}
	}
	
	SubShader
	{
		Tags {"RenderType" = "Transparent"}
		Pass{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			sampler2D _Tex;

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv: TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				float depth : DEPTH;
				float2 uv: TEXCOORD1;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.depth = -mul(UNITY_MATRIX_MV, v.vertex).z * _ProjectionParams.w;
				o.uv = v.uv;
				return o;
			}

			float4 frag(v2f i) : SV_Target
			{
				float4 color = tex2D(_Tex,i.uv);
				float invert = 1 - i.depth;
				return float4(invert, invert, invert, 1)*color;
			}
			ENDCG
		}
	}

	SubShader
	{
		Tags { "RenderType" = "Opaque" }
		Pass{
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
	}

}
