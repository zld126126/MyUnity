// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/ShaderLearning2"
{
	SubShader
	{
		Tags
		{
			"PreviewType" = "Plane"
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			// 从每个网格顶点获取的信息
			struct appdata
			{
				// 网格顶点的POSITION
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			// 需要传递什么数据给fragment shader
			struct v2f
			{
				float4 vertex : SV_POSITION;
				float2 uv : TEXCOORD1;
			};

			// vert函数:返回frag函数的参数v2f 参数是appdata
			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				return o;
			}

			// frag函数:返回float4类型的颜色 float4可以看成四个浮点数组成的四维数组
			float4 frag(v2f i) : SV_Target
			{
				// 纯白
				// float4 color = float4(1,1,1,1);
				// 橙色
				// float4 color = float4(1,0.6,0,1);

				// 乱色
				// 红变绿
				// float4 color = float4(i.uv.r, i.uv.g, 0, 1);
				// 紫变绿
				// float4 color = float4(i.uv.r,i.uv.g,i.uv.r,1);
				// 红变紫
				// float4 color = float4(i.uv.r,0,i.uv.g,1);
				// 绿变红
				// float4 color = float4(i.uv.g,i.uv.r,0,1);
				// 紫变青
				float4 color = float4(i.uv.r,i.uv.g,1,1);
				
				return color;
			}
			ENDCG
		}
	}
}