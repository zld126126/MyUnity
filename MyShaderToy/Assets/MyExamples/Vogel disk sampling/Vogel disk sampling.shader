Shader "Custom/Vogel disk sampling"
{
    SubShader {
    
        Pass {
            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag
            
            struct v2f{
                float4 position : SV_POSITION;
            };
            
            v2f vert(float4 v:POSITION) : SV_POSITION {
                v2f o;
                o.position = UnityObjectToClipPos (v);
                return o;
            }

            fixed4 frag(v2f i) : SV_Target {
            
				int numSamples = 128;
				float rotationSpeed = -0.2;

				float2 center = _ScreenParams.xy / 2.0;
				float diskRadius = 150.0;
				float pointSize = 2.5;
				float3 col = float3(0.10,0.10,0.13);
				float2 i_position = i.position.xy;
				float t = _Time.x * 60;


                for (int i = 0; i < 40; i++) {
					// Calculate Vogel disk sample
					float theta = 2.4 * float(i) + t * -0.2;
					float r = sqrt(float(i) + 0.5) / sqrt(float(numSamples));
					float2 u = r * float2(cos(theta), sin(theta));
					float2 pos = center + u * diskRadius;
        
					// Blend color
					float alpha = smoothstep(pointSize + 1.0, pointSize - 1.0, length(i_position - pos));
					float shade = 0.5 * (1.0 - r) + 0.5;
					col = lerp(col, float3(shade, shade, shade), alpha);
                }
            
                fixed4 fragColor = fixed4(col,1.0);

                return fragColor;
            }

            ENDCG
        }
    }
}
