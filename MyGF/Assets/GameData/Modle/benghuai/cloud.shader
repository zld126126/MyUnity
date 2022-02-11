Shader "Custom/cloud"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_CloudTime("AppearTime,VanishTime,AlphaOverLife", vector) = (0,0,0,0)
		_Cam("CamForward,IsUseCamForward", vector) = (0,0,0,0)
		_EmissionScaler("EmissionScaler",float) = 0
		_TintColor0("TintColor0", Color) = (1,1,1,1)
		_TintColor1("TintColor1", Color) = (1,1,1,1)
		_TintColor2("TintColor2", Color) = (1,1,1,1)
		_imm1("_imm1", vector) = (0,0,0,0)
		_imm2("_imm2", vector) = (0,0,0,0)
		_imm3("_imm3", vector) = (0,0,0,0)
		_imm4("_imm4", vector) = (0,0,0,0)
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
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				float4 color: COLOR0;
				float3 normal : NORMAL;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float a : TEXCOORD1;
				float4 color : COLOR0;
				UNITY_FOG_COORDS(3)
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			float4 _CloudTime;
		/*	float _AppearTime;
			float _VanishTime;
			float2 _AlphaOverLife;*/
			float4 _Cam;
		/*	float3 _CamForward;
			float _IsUseCamForward;*/

			float _EmissionScaler;
			float4 _TintColor0;
			float4 _TintColor1;
			float4 _TintColor2;
			float4 _imm1;
			float4 _imm2;
			float4 _imm3;
			float4 _imm4;
			float4 imm[4];
			
			v2f vert (appdata v)
			{
				v2f o;
				float2 temp = float2(float2(_CloudTime.y, _CloudTime.y)) + float2(0.99000001, 1.0);
				temp.x = max(floor(temp.x), 0.0);
				float threshold = int(temp.x);
				temp.x = (threshold != 0) ? temp.y : _CloudTime.x;
				temp.x = temp.x - v.uv.x;
				float u_xlat3 = temp.x;

				float4 u_xlat2;
				bool u_xlatb2;
				float u_xlat10;
				bool u_xlatb7;
				float u_xlat7;
				bool u_xlatb4;
				float4 uv;
#ifdef UNITY_ADRENO_ES3
				u_xlat3 = min(max(u_xlat3, 0.0), 1.0);
#else
				u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
#endif
				float u_xlat6 = u_xlat3 * 14.9899998;
				u_xlat6 = floor(u_xlat6);
				uint u_xlatu9 = uint(int(u_xlat6));
				uint u_xlatu1 = u_xlatu9 + 1u;
				uint u_xlatu4 = u_xlatu9 >> 2u;
				int u_xlati9 = int(u_xlatu9 & 3u);
				uint u_xlatu7 = u_xlatu1 >> 2u;
				int u_xlati1 = int(u_xlatu1 & 3u);
				u_xlat6 = u_xlat3 * 14.9899998 + (-u_xlat6);


				imm[0] = _imm1;
				imm[1] = _imm2;
				imm[2] = _imm3;
				imm[3] = _imm4;

				if (u_xlatu4 == uint(0u)) {
					if (u_xlatu7 == uint(0u)) {
						u_xlat10 = (-imm[u_xlati9].x) + imm[u_xlati1].x;
						u_xlat10 = u_xlat6 * u_xlat10 + imm[u_xlati9].x;
					}
					else {
						u_xlat2.x = (-imm[u_xlati9].x) + imm[u_xlati1].y;
						u_xlat10 = u_xlat6 * u_xlat2.x + imm[u_xlati9].x;
						//ENDIF
					}
				}
				else {
#ifdef UNITY_ADRENO_ES3
					u_xlatb2 = !!(int(u_xlatu4) == 1);
#else
					u_xlatb2 = int(u_xlatu4) == 1;
#endif
					if (u_xlatb2) {
#ifdef UNITY_ADRENO_ES3
						u_xlatb2 = !!(int(u_xlatu7) == 1);
#else
						u_xlatb2 = int(u_xlatu7) == 1;
#endif
						if (u_xlatb2) {
							u_xlat2.x = (-imm[u_xlati9].y) + imm[u_xlati1].y;
							u_xlat10 = u_xlat6 * u_xlat2.x + imm[u_xlati9].y;
						}
						else {
							u_xlat2.x = (-imm[u_xlati9].y) + imm[u_xlati1].z;
							u_xlat10 = u_xlat6 * u_xlat2.x + imm[u_xlati9].y;
							//ENDIF
						}
					}
					else {
#ifdef UNITY_ADRENO_ES3
						u_xlatb2 = !!(int(u_xlatu4) == 2);
#else
						u_xlatb2 = int(u_xlatu4) == 2;
#endif
						if (u_xlatb2) {
#ifdef UNITY_ADRENO_ES3
							u_xlatb7 = !!(int(u_xlatu7) == 2);
#else
							u_xlatb7 = int(u_xlatu7) == 2;
#endif
							if (u_xlatb7) {
								u_xlat7 = (-imm[u_xlati9].z) + imm[u_xlati1].z;
								u_xlat10 = u_xlat6 * u_xlat7 + imm[u_xlati9].z;
							}
							else {
								u_xlat7 = (-imm[u_xlati9].z) + imm[u_xlati1].w;
								u_xlat10 = u_xlat6 * u_xlat7 + imm[u_xlati9].z;
								//ENDIF
							}
						}
						else {
#ifdef UNITY_ADRENO_ES3
							u_xlatb4 = !!(int(u_xlatu4) == 3);
#else
							u_xlatb4 = int(u_xlatu4) == 3;
#endif
							if (u_xlatb4) {
								uv.x = (-imm[u_xlati9].w) + imm[u_xlati1].w;
								u_xlat10 = u_xlat6 * uv.x + imm[u_xlati9].w;
							}
							else {
								u_xlat10 = 0.0;
								//ENDIF
							}
							//ENDIF
						}
						//ENDIF
					}
					//ENDIF
				}


				u_xlat6 = max(floor((-_Cam.w) + 1.5),0.0);
				int u_xlati6 = int(u_xlat6);
				float u_xlat9 = sqrt(dot(v.normal.xyz, v.normal.xyz));
				uv.xyz = v.normal.zxy * _Cam.yzx;
				uv.xyz = v.normal.yzx * _Cam.zxy + (-uv.xyz);
				u_xlat2.x = dot(uv.xyz, uv.xyz);
				u_xlat2.x = 1/ sqrt(u_xlat2.x);
				uv.xyz = uv.xyz * u_xlat2.xxx;
				uv.xyz = float3(u_xlat9, u_xlat9, u_xlat9) * uv.xyz;
				uv.xyz = (int(u_xlati6) != 0) ? v.normal.xyz : uv.xyz;
				uv.xyz = uv.xyz * float3(u_xlat10, u_xlat10, u_xlat10) + v.vertex.xyz;

				u_xlat2 = uv.yyyy * unity_ObjectToWorld[1];
				u_xlat2 = unity_ObjectToWorld[0] * uv.xxxx + u_xlat2;
				uv = unity_ObjectToWorld[2] * uv.zzzz + u_xlat2;
				uv = uv + unity_ObjectToWorld[3];
				u_xlat2 = uv.yyyy * UNITY_MATRIX_VP[1];
				u_xlat2 = UNITY_MATRIX_VP[0] * uv.xxxx + u_xlat2;
				u_xlat2 = UNITY_MATRIX_VP[2] * uv.zzzz + u_xlat2;
				o.vertex = UNITY_MATRIX_VP[3] * uv.wwww + u_xlat2;

				u_xlat6 = u_xlat3 + (-_CloudTime.zzzw.z);
				u_xlat6 = u_xlat6 + 1.0;
				u_xlat6 = floor(u_xlat6);
				u_xlat6 = max(u_xlat6, 0.0);
				u_xlati6 = int(u_xlat6);
				u_xlat9 = u_xlat3 / _CloudTime.zzzw.z;
				u_xlat6 = (u_xlati6 != 0) ? 1.0 : u_xlat9;
				u_xlat9 = (-u_xlat3) + _CloudTime.zzzw.w;
				u_xlat9 = max(floor(u_xlat9 + 1.0), 0.0);
				u_xlati9 = int(u_xlat9);
				u_xlat3 = (-u_xlat3) + 1.0;
				uv.x = (-_CloudTime.zzzw.w) + 1.0;
				u_xlat3 = u_xlat3 / uv.x;
				u_xlat3 = (u_xlati9 != 0) ? u_xlat6 : u_xlat3;
				u_xlat6 = max(_CloudTime.y, 0.0);
				u_xlat9 = (-u_xlat6) + v.uv.x;
				u_xlat6 = (-u_xlat6) + _CloudTime.x;
				uv.x = u_xlat9 / u_xlat6;
				uv.y = v.uv.y;
				o.uv = TRANSFORM_TEX(uv.xy, _MainTex);
				//vs_TEXCOORD0.xy = uv.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				o.a = temp.x;
				o.color.xyz = v.color.xyz;
				o.color.w = u_xlat3;

				//o.vertex = UnityObjectToClipPos(v.vertex);
				//o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				//fixed4 col = tex2D(_MainTex, i.uv);
				// apply fog
				fixed4 col;
				float u_xlat0 = max(floor(i.a + 0.999000013),0.0);
				int u_xlati0 = int(u_xlat0);
				if ((u_xlati0) == 0) { discard; }
				u_xlat0 = max(floor((-i.a) + 1.99900007),0.0);
				u_xlati0 = int(u_xlat0);
				if ((u_xlati0) == 0) { discard; }
				fixed3 mainColor = tex2D(_MainTex, i.uv).xyz;
				fixed3 color1 = (-_TintColor0.xyz) + _TintColor1.xyz;
				color1.xyz = mainColor.xxx * color1.xyz + _TintColor0.xyz;
				fixed3 color2 = (-color1.xyz) + _TintColor2.xyz;
				color1.xyz = mainColor.yyy * color2.xyz + color1.xyz;
				float u_xlat16_10 = _EmissionScaler + _EmissionScaler;
				color2.xyz = float3(u_xlat16_10, u_xlat16_10, u_xlat16_10) * i.color.xyz;
				col.xyz = color1.xyz * color2.xyz;
				col.w = mainColor.z * i.color.w;
				UNITY_APPLY_FOG(i.fogCoord, col);
				return col;
			}
			ENDCG
		}
	}
}
