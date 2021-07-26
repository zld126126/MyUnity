Shader "Custom/ShaderLearning3"
{
	Properties{
		_MainTex("Main Texture", 2D) = "white"
	}
	SubShader
	{
		Tags
		{
			"Queue" = "Transparent"
		}
		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			sampler2D _MainTex;
			#include "UnityCG.cginc"

			// 从每个网格顶点获取的信息
			struct appdata
			{
				// 网格顶点的POSITION
				float4 vertex : POSITION;
				float2 uv: TEXCOORD0;
			};

			// 需要传递什么数据给fragment shader
			struct v2f
			{
				float4 vertex : SV_POSITION;
				float2 uv: TEXCOORD1;
			};

			// vert函数:返回frag函数的参数v2f 参数是appdata
			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				return o;
			}
			
			// frag函数:得到整个纹理的颜色，就需要所有像素对应的uv点
			float4 frag(v2f i) : SV_Target
			{
				// todo 图片翻转问题
				return tex2D(_MainTex, float2(abs(1-i.uv.x),abs(1-i.uv.y)));
				//return tex2D(_MainTex, i.uv);
			}
			ENDCG
		}
	}
}