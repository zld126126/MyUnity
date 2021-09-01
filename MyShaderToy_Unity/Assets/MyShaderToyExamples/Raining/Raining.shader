//https://www.shadertoy.com/view/4dXSzB
//void mainImage( out vec4 fragColor, in vec2 fragCoord )
//{
//	vec2 uv = fragCoord.xy / iResolution.xy;
//	float time = iTime;
//	vec3 raintex = texture(iChannel1,vec2(uv.x*2.0,uv.y*0.1+time*0.125)).rgb/8.0;
//	vec2 where = (uv.xy-raintex.xy);
//	vec3 texchur1 = texture(iChannel0,vec2(where.x,where.y)).rgb;
	
//	fragColor = vec4(texchur1,1.0);
//}

Shader "Custom/Raining"
{
    Properties
    {
		_Speed("Float",Float) = 10
        _MainTex ("Texture", 2D) = "white" {}
		_MainTex2 ("Texture", 2D) = "white" {}
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag

			// 只有在CGPROGRAM内再次定义一个与属性块内名字与类型相同的变量,属性块对应的变量才能生效
			sampler2D _MainTex;
			sampler2D _MainTex2;
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

                float2 uv = i.position.xy/ _ScreenParams.xy;

				float time = _Time.x*_Speed;

				float3 raintex = tex2D(_MainTex,float2(uv.x*2.0,uv.y*0.1+time*0.125)).rgb/8.0;

				float2 where = (uv.xy - raintex.xy);

				float3 texchur1 = tex2D(_MainTex2,float2(where.x,where.y)).rgb;

				// Output to screen
				fixed4 fragColor = fixed4(texchur1,1.0);

                return fragColor;
            }

            ENDCG
        }
    }
    FallBack "Diffuse"
}
