Shader "Unlit/018"
{
         Properties
	{
		_MainTex("MainTex", 2D) = "white" {}
		_Diffuse("Diffuse", Color) = (1,1,1,1)
		_AlphaScale("Alpha Scale", Range(0,1)) = 1
	}

	SubShader
	{
		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
		LOD 100

		Pass
		{
			ZWrite On
			//意味着不写入任何颜色通道
			ColorMask 0
		}

		Pass
		{
			Tags{"LightMode"="ForwardBase"}

			ZWrite Off
			Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "Lighting.cginc"

			sampler2D _MainTex;
			float4 _MainTex_ST;
			fixed4 _Diffuse;
			float _AlphaScale;

			struct v2f
			{
				float4 vertex : SV_POSITION;
				fixed3 worldNormal: TEXCOORD0;
				float3 worldPos: TEXCOORD1;
				float2 uv : TEXCOORD2;
			};

			v2f vert (appdata_base v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				fixed3 worldNormal = UnityObjectToWorldNormal( v.normal);
				o.worldNormal = worldNormal;
				o.worldPos = mul(unity_ObjectToWorld, v.vertex);
				o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz;

				fixed4 texColor = tex2D(_MainTex, i.uv);

				//漫反射
				fixed3 worldLightDir = UnityWorldSpaceLightDir(i.worldPos);
				//fixed3 worldLightDir = normalize(_WorldSpaceLightPos0.xyz);
				fixed3 diffuse = _LightColor0.rgb * texColor.rgb * _Diffuse.rgb * (dot(worldLightDir,i.worldNormal)*0.5+0.5);

				
				fixed3 color = ambient + diffuse;
				return fixed4(color, texColor.a * _AlphaScale);
			}
			ENDCG
		}
	}
	FallBack "Transparent/VertexLit"
}
