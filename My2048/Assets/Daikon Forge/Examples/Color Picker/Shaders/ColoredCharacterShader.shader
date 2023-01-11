Shader "Custom/TeamColors" {
    Properties {
        _MainTex ("Base (RGB)", 2D) = "white" {}
        _TeamColor ("Team Color", Color) = (1,1,1,1)
    }
    SubShader {
        Tags { "RenderType"="Opaque" }
        LOD 200
        
        CGPROGRAM
        #pragma surface surf Lambert

        sampler2D _MainTex;
        float4 _TeamColor;

        struct Input {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutput o) {
            half4 c = tex2D (_MainTex, IN.uv_MainTex);
            o.Albedo = lerp( c.rgb, c.rgb * _TeamColor, c.a );
            o.Alpha = c.a;
        }
        ENDCG
    } 
    FallBack "Diffuse"
}