Shader "Custom/ShaderLearning15"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
		_XRayPower("XRay Power",Range(0.1,10)) = 1
		_XRayColor("XRay Color",Color) = (1,1,1,1)
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

		Pass//XRay
		{
			ZTest Greater
			ZWrite Off
			Blend SrcAlpha One

			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag
			#include"UnityCG.cginc"

			float _XRayPower;
			float4 _XRayColor;

			struct v2f
			{
				float4 vertex:SV_POSITION;
				float3 viewDir:TEXCOORD0;
				float3 normal:TEXCOORD1;
			};

			v2f vert(appdata_base v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.normal = v.normal;
				o.viewDir = ObjSpaceViewDir(v.vertex);
				return o;
			}

			fixed4 frag(v2f i) :SV_Target
			{
				float rim = 1 - saturate(dot(normalize(i.normal),normalize(i.viewDir)));
				return _XRayColor * pow(rim, _XRayPower);
			}

			ENDCG
		}

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                fixed4 col = tex2D(_MainTex, i.uv);
                return col;
            }
            ENDCG
        }
    }
}
