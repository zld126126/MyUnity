Shader "Custom/Colorful"
{	
	// 属性块
	Properties{
		_Speed("Float",Float) = 30
	}
    SubShader
    {

        Pass
        {
            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag

			// 只有在CGPROGRAM内再次定义一个与属性块内名字与类型相同的变量,属性块对应的变量才能生效
			Float _Speed;

			struct v2f{
                float4 position : SV_POSITION;
            };

			v2f vert(float4 v:POSITION) : SV_POSITION {
                v2f o;
                o.position = UnityObjectToClipPos(v);
                return o;
            }

			fixed4 frag(v2f i) : SV_Target {
            
				// Normalized pixel coordinates (from 0 to 1)
                float2 uv = i.position.xy/ _ScreenParams.xy;

				// Time varying pixel color
				float3 col = 0.5 +0.5*cos(uv.xyx+float3(_Time.x*_Speed+0,_Time.x*30+2,_Time.x*_Speed+4));

                // Output to screen
				fixed4 fragColor = fixed4(col,1.0);

                return fragColor;
            }

            ENDCG
        }
    }
}
