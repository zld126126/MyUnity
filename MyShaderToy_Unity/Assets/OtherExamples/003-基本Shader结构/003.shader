Shader "Unlit/003"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_Color("Color" , Color) = (1,1,1,1)
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			//#include "UnityCG.cginc"

			//只有在CGPROGRAM内再次定义一个与属性块内名字与类型相同的变量，属性块对应的变量才能起作用
			fixed4 _Color;

			struct a2v//a application dao vert
			{
				//用模型顶点填充v变量
				float4 vertex:POSITION;
				//用模型的法线填充n变量
				float3 normal:NORMAL;
				//用模型的第一套uv填充texcoord
				float4 texcoord: TEXCOORD0;
			};

			struct v2f// v vert dao frag
			{
				//SV_POSITION语义告诉unity : pos为裁剪空间中的位置信息  
				float4 pos:SV_POSITION;
				//COLOR0 语义可以储存颜色信息
				fixed3 color:COLOR0;
			};
	
			v2f vert(a2v v)
			{
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				//将 【-1，1】转变为【0，1】  x/2 + 0.5;
				o.color = v.normal * 0.5 +fixed3(0.5,0.5,0.5);
				return o;
			}

			fixed4 frag(v2f i):SV_TARGET
			{
				fixed3 c = i.color;
				//.xyzw   .rgba  .x  .y  .xw
				c*=_Color.rgb;
				//return fixed4(0,0,0,1);
				return fixed4(c, 1);
			}

			ENDCG
		}
	}
}
