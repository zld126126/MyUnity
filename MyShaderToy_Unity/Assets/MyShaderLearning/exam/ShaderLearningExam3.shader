Shader "Custom/ShaderLearningExam3"
{
    Properties{
		_MainTex("Main Texture", 2D) = "white" {}
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

			sampler2D _MainTex;

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

			// 该方法和 "Cull Back" 效果一样 透明效果
			// float4 colorTranslate(float4 srcColor)
			// {
			// 	float4 white = float4(1, 1, 1, 1);
			// 	float4 alpha = srcColor.a;
			// 	srcColor = lerp(white, srcColor, alpha);
			// 	return srcColor;
			// }

			float4 frag(v2f i) : SV_Target
			{
				float4 color = tex2D(_MainTex, i.uv);
				return color;
			}
			ENDCG
		}

		Pass
		{
			Cull Front
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"

			sampler2D _MainTex;

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

			// 该方法和 "Cull Back" 效果一样 透明效果
			float4 colorTranslate(float4 srcColor)
			{
				float4 white = float4(1, 1, 1, 1);
				float4 alpha = srcColor.a;
				srcColor = lerp(white, srcColor, alpha); 
				return srcColor;
			}

			float4 frag(v2f i) : SV_Target
			{
				float4 color = tex2D(_MainTex, i.uv);
				if (color.r == 1 && color.g == 1 && color.b == 1){
					color = float4(0,0,0,1);
				}else{
					color = float4(1,1,1,1);
				}
				
				// if (color.a != 0){
				// 	color = float4(1,1,1,1);
				// }
				return color;
			}
			ENDCG
		}
	}
}
