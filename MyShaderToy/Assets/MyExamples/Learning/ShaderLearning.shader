// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/ShaderLearning"
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
			};

			// 需要传递什么数据给fragment shader
			struct v2f
			{
				float4 vertex : SV_POSITION;
			};

			// vert函数:返回frag函数的参数v2f 参数是appdata
			v2f vert(appdata v)
			{
				v2f o;
				// UnityObjectToClipPos:矩阵乘法,将网格上的局部顶点从一个与网格相关的点，转换成一个屏幕上的点
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			// frag函数:返回float4类型的颜色 float4可以看成四个浮点数组成的四维数组
			float4 frag(v2f i) : SV_Target
			{
				float4 color = float4(1,1,1,1);
				return color;
			}
			ENDCG
		}
	}
}