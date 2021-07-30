// 半成品TODO 诸多问题
Shader "Custom/Water Wave sample2"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
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

            struct appdata
            {
                float4 position : POSITION;
                float2 uv: TEXCOORD0;
            };

            struct v2f
            {
                float4 position : SV_POSITION;
                float2 uv: TEXCOORD1;
            };

            sampler2D _MainTex;

            v2f vert (appdata v)
            {
                v2f o;
                o.position = UnityObjectToClipPos(v.position);
                o.uv = v.uv;
                return o;
            }

            // Get random value.
            float hash(float2 p)
            {
                float h = dot(p, float2(127.1, 311.7));	
                return float(sin(h) * 43758.5453123);
            }

            // Get Noise.
            float noise(in float2 p)
            {
                float2 i = floor(p);
                float2 f = float2(p);
                
                // u = -2.0f^3 + 3.0f^2
                float2 u = f * f * (3.0 - 2.0 * f);
                
                // Get each grid vertices.
                // +---+---+
                // | a | b |
                // +---+---+
                // | c | d |
                // +---+---+
                float a = hash(i + float2(0.0,0.0));
                float b = hash(i + float2(1.0,0.0));
                float c = hash(i + float2(0.0,1.0));
                float d = hash(i + float2(1.0,1.0));
                
                // Interpolate grid parameters with x and y.
                float f1 = lerp(a, b, u.x);
                float f2 = lerp(c, d, u.x);
                float result = lerp(f1,f2, u.y);
                
                // Normalized to '-1 - 1'.
                return (2.0 * result) - 1.0;
            }

            // lighting
            float diffuse(float3 n, float3 l, float p)
            {
                return pow(dot(n, l) * 0.4 + 0.6, p);
            }

            float specular(float3 n, float3 l, float3 e, float s)
            {
                float nrm = (s + 8.0) / (3.141592 * 8.0);
                return pow(max(dot(reflect(e, n), l), 0.0), s) * nrm;
            }

            // Get sky color by 'eye' position.
            // So, The color changed smoothly by eye level.
            float3 getSkyColor(float3 e)
            {
                e.y = max(e.y, 0.0);
                float r = pow(1.0 - e.y, 2.0);
                float g = 1.0 - e.y;
                float b = 0.6 + (1.0 - e.y) * 0.4;
                return float3(r, g, b);
            }

            // Get sea wave octave.
            float sea_octave(float2 uv, float choppy)
            {
                uv += noise(uv);        
                float2 wv = 1.0 - abs(sin(uv));
                float2 swv = abs(cos(uv));    
                wv = lerp(wv, swv, wv);
                return pow(1.0 - pow(wv.x * wv.y, 0.65), choppy);
            }

            // p is ray position.
            float map(float3 p)
            {
                float freq = 0.16; // => 0.16
                float amp = 0.6; // => 0.6
                float choppy = 4.0; // => 4.0
                
                // XZ plane.
                float2 uv = p.xz;
                
                float d, h = 0.0;    
                
                // 3 => 3
                for (int i = 0; i < 3; i++)
                {       
                    d = sea_octave((uv + (1.0 + _Time.x * 0.8)) * freq, choppy);
                    d += sea_octave((uv - (1.0 + _Time.x * 0.8)) * freq, choppy);
                    h += d * amp;
                    //uv *= float2x2(1.6, 1.2, -1.2, 1.6);
                    freq *= 2.0;
                    amp *= 0.2;
                    choppy = lerp(choppy, 1.0, 0.2);
                }
                
                return p.y - h;
            }

            // p is ray position.
            // This function calculate detail map with more iteration count.
            float map_detailed(float3 p)
            {
                float freq = 0.16;
                float amp = 0.6;
                float choppy = 4.0;
                
                float2 uv = p.xz;
                
                float d, h = 0.0;
                
                // 5 = 5
                for (int i = 0; i < 5; i++)
                {        
                    d = sea_octave((uv + (1.0 + _Time.x * 0.8)) * freq, choppy);
                    d += sea_octave((uv - (1.0 + _Time.x * 0.8)) * freq, choppy);
                    h += d * amp;        
                    //uv *= float2x2(1.6, 1.2, -1.2, 1.6);
                    freq *= 2.0;
                    amp *= 0.2;
                    choppy = lerp(choppy, 1.0, 0.2);
                }
                
                return p.y - h;
            }

            // p = ray position
            // n = surface normal
            // l = light
            // eye = eye
            // dist = ray marching distance
            float3 getSeaColor(float3 p, float3 n, float3 l, float3 eye, float3 dist)
            {
                float fresnel = clamp(1.0 - dot(n, -eye), 0.0, 1.0);
                fresnel = pow(fresnel, 3.0) * 0.65;
                
                float3 reflected = getSkyColor(reflect(eye, n));    
                float3 refracted = float3(0.1, 0.19, 0.22) + diffuse(n, l, 80.0) * float3(0.8,0.9,0.6) * 0.12; 
                
                float3 color = lerp(refracted, reflected, fresnel);
                
                float atten = max(1.0 - dot(dist, dist) * 0.001, 0.0);
                color += float3(0.8,0.9,0.6) * (p.y - 0.6) * 0.18 * atten;
                
                //color += float3(specular(n, l, eye,60.0));
                
                return color;
            }

            // tracing
            float3 getNormal(float3 p, float eps)
            {
                float3 n;
                n.y = map_detailed(p);    
                n.x = map_detailed(float3(p.x + eps, p.y, p.z)) - n.y;
                n.z = map_detailed(float3(p.x, p.y, p.z + eps)) - n.y;
                n.y = eps;
                return normalize(n);
            }

            // Get Height Map
            float heightMapTracing(float3 ori, float3 dir, out float3 p)
            {
                float tm = 0.0;
                
                float tx = 1000.0;
                
                // Calculate 1000m far distance map.
                float hx = map(ori + dir * tx);
                
                // if hx over 0.0 is that ray on the sky. right?
                if(hx > 0.0)
                {
                    p = float3(0.0,0.0,0.0);
                    return tx;   
                }
                
                float hm = map(ori + dir * tm);    
                float tmid = 0.0;
                
                // 8 = 8
                for (int i = 0; i < 8; i++)
                {
                    // Calculate weight for 'tm' and 'tx' lerping.
                    float f = hm / (hm - hx);
                    
                    tmid = lerp(tm, tx, f);                   
                    p = ori + dir * tmid;
                    
                    float hmid = map(p);
                    
                    if (hmid < 0.0)
                    {
                        tx = tmid;
                        hx = hmid;
                    }
                    else
                    {
                        tm = tmid;
                        hm = hmid;
                    }
                }
                
                return tmid;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                float2 uv = i.position.xy/ _ScreenParams.xy;
                uv = uv * 2.0 - 1.0;
                
                const float3 light = normalize(float3(0.0, 1.0, 0.8)); 
                
                // ray 
                float3 ori = float3(0.0, 3.5, 5.0);
                float3 dir = normalize(float3(uv.xy, -2.0));
                
                // tracing
                float3 p;
                heightMapTracing(ori, dir, p);
                
                float3 dist = p - ori;
                float3 n = getNormal(p, dot(dist, dist) * (0.1/_ScreenParams.x));
                
                // color
                float3 sky = getSkyColor(dir);
                float3 sea = getSeaColor(p, n, light, dir, dist);
                
                // This is coefficient for smooth blending sky and sea.
                float t = pow(smoothstep(0.0, -0.05, dir.y), 0.3);
                float3 color = lerp(sky, sea, t);
                
                // post
                float4 fragColor = float4(color, 1.0);

                // 自定义图片
                float4 texColor = tex2D(_MainTex, i.uv);
                return fragColor*texColor;
            }
            ENDCG
        }
    }
}
