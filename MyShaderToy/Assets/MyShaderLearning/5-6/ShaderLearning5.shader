Shader "Custom/ShaderLearning5"
{
    Properties
    {
        _MainTex("Main Text", 2D) = "white" {}
        _DisplacementTex("Displacement Texture", 2D) = "white" {}
        _Magnitude("Magnitude", Range(0, 1)) = 0
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

            sampler2D _MainTex;
            sampler2D _DisplacementTex;
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
                // 静态扭曲
                // float uv_xy = i.uv;
                // 动态扭曲
                float uv_xy = float2(i.uv.x+_Time.x*2,i.uv.y+_Time.x*2);
                float2 disp = tex2D(_DisplacementTex,uv_xy).xy;
                disp = ((disp * 2) - 1) * _Magnitude;
                float4 color = tex2D(_MainTex, i.uv + disp);
                return color;
            }
            ENDCG
        }
    }
}
