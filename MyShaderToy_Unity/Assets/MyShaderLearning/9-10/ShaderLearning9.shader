Shader "Custom/ShaderLearning9"
{	
	SubShader
	{
		Tags { "RenderType" = "Opaque" }
		Pass{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				float depth : DEPTH;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.depth = -mul(UNITY_MATRIX_MV, v.vertex).z * _ProjectionParams.w;

				return o;
			}

			float4 frag(v2f i) : SV_Target
			{
				float invert = 1 - i.depth;
				return float4(invert, invert, invert, 1);
			}
			ENDCG
		}
	}

	SubShader
	{
		Tags { "RenderType" = "Transparent" }
		Pass{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				float depth : DEPTH;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.depth = -mul(UNITY_MATRIX_MV, v.vertex).z * _ProjectionParams.w;

				return o;
			}

			float4 frag(v2f i) : SV_Target
			{
				float invert = 1 - i.depth;
				return float4(invert, invert, invert, 1);
			}
			ENDCG
		}
	}

	SubShader
	{ 
		ZWrite Off   // 关闭深度写入
		Blend SrcAlpha OneMinusSrcAlpha  // 开启混合模式
		Tags { "RenderType" = "Transparent" }
		Pass{
			
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}
			
			half4 _Color;

			float4 frag(v2f i) : SV_Target
			{
				return  _Color;  // 仅仅返回自身颜色
			}
			ENDCG
		}
	}
}
