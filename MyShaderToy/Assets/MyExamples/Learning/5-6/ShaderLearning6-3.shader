Shader "Custom/ShaderLearning6-3"
{
    Properties
    {
        _MainTex1("Main Text", 2D) = "white" {}
        _MainTex2("Main Text", 2D) = "white" {}
		_Tween("Tween", Range(0, 1)) = 0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        Pass{
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            sampler2D _MainTex1;
            sampler2D _MainTex2;
			float _Tween;

            // 获取模型数据
            struct appdata
            {
                float4 vertex : POSITION;// 把模型顶点坐标填充到vertex中
                float2 uv: TEXCOORD0;// 第一组纹理坐标
            };

            // 存放计算结果
            struct v2f
            {
                float4 vertex : SV_POSITION; // 输出到裁剪空间中的顶点坐标
                float2 uv: TEXCOORD1;
            };

            // 拿取模型数据计算后传给fragment shader
            v2f vert(appdata v)
            {
                v2f o;
				o.uv = v.uv;
                o.vertex = UnityObjectToClipPos(v.vertex);
                return o;
            }

            // 拿取计算结果作用于目标
            float4 frag(v2f i) : SV_Target
            {
                float4 _LeftColor = tex2D(_MainTex1,i.uv);
                float4 _RightColor = tex2D(_MainTex2,i.uv);
                float4 color = lerp(_LeftColor, _RightColor, _Tween);
                return color;
            }
            ENDCG
        }
        
    }
}
