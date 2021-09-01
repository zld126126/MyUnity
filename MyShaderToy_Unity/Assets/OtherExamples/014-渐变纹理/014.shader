Shader "Unlit/014"
{
      Properties
	{
		_RampTex("MainTex", 2D) = "white" {}
		_Diffuse("Diffuse", Color) = (1,1,1,1)
		_Specular("Specular", Color) = (1,1,1,1)
		_Gloss("Gloss", Range(1,256)) = 5
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
			#include "UnityCG.cginc"
			#include "Lighting.cginc"

			sampler2D _RampTex;
			float4 _RampTex_ST;
			fixed4 _Diffuse;
			fixed4 _Specular;
			float _Gloss;

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
				o.uv = TRANSFORM_TEX(v.texcoord, _RampTex);//v.texcoord.xy * _RampTex_ST.xy + _RampTex_ST.zw;
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz;

				//漫反射
				fixed3 worldLightDir = UnityWorldSpaceLightDir(i.worldPos);
				fixed halfLambert = max(0,dot(worldLightDir,i.worldNormal))*0.5+0.5;
				fixed3 diffuse = _LightColor0.rgb * tex2D(_RampTex, fixed2(halfLambert,halfLambert)) * _Diffuse.rgb;

				//高光反射
				//fixed3 reflectDir = normalize(reflect(-worldLightDir,i.worldNormal));
				fixed3 viewDir = normalize(UnityWorldSpaceViewDir(i.worldPos));
				//fixed3 viewDir = normalize(_WorldSpaceCameraPos.xyz - i.worldPos.xyz);
				fixed3 halfDir = normalize(worldLightDir + viewDir);
				fixed3 specular = _LightColor0.rgb * _Specular.rgb * pow(saturate(dot(i.worldNormal,halfDir)),_Gloss);
				
				fixed3 color = ambient + diffuse + specular;
				return fixed4(color,1);
			}
			ENDCG
		}
	}
}
