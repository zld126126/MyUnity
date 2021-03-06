- [1.UnityShader基本结构:<br/>](#1unityshader基本结构)
- [2.新建一个Surface Shader<br/>](#2新建一个surface-shader)
- [3.详解含义<br/>](#3详解含义)
  - [3.1 属性定义Property Definitition<br/>](#31-属性定义property-definitition)
    - [3.1.1 _Name<br/>](#311-_name)
    - [3.1.2 Display Name<br/>](#312-display-name)
    - [3.1.3 type<br/>](#313-type)
    - [3.1.4 defaultValue<br/>](#314-defaultvalue)
    - [3.1.5 Tags<br/>](#315-tags)
  - [3.2 LOD<br/>](#32-lod)
  - [3.3 Shader本体<br/>](#33-shader本体)

### 1.UnityShader基本结构:<br/>
> 1.1 着色器Shader<br/>

> 1.1.1 属性定义Property Definitition<br/>

> 1.1.2 多个 子着色器SubShader []SubShader<br/>

> 1.1.2.1 多个 Pass []Pass<br/>

> 1.1.3 回滚 FallBack<br/>

### 2.新建一个Surface Shader<br/>
``` UnityShader
Shader "Custom/NewSurfaceShader"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Albedo (RGB)", 2D) = "white" {}
        _Glossiness ("Smoothness", Range(0,1)) = 0.5
        _Metallic ("Metallic", Range(0,1)) = 0.0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Standard fullforwardshadows

        // Use shader model 3.0 target, to get nicer looking lighting
        #pragma target 3.0

        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };

        half _Glossiness;
        half _Metallic;
        fixed4 _Color;

        // Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
        // See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
        // #pragma instancing_options assumeuniformscaling
        UNITY_INSTANCING_BUFFER_START(Props)
            // put more per-instance properties here
        UNITY_INSTANCING_BUFFER_END(Props)

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            // Albedo comes from a texture tinted by color
            fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
            o.Albedo = c.rgb;
            // Metallic and smoothness come from slider variables
            o.Metallic = _Metallic;
            o.Smoothness = _Glossiness;
            o.Alpha = c.a;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
```

### 3.详解含义<br/>
#### 3.1 属性定义Property Definitition<br/>
> _Name("Display Name", type) = defaultValue[{options}]<br/>
```
_MainTex ("Albedo (RGB)", 2D) = "white" {}
```

##### 3.1.1 _Name<br/>
> 属性的名字,即变量名,使用时需要在"CGPROGRAM"中再次注册<br/>
> 如:sampler2D _MainTex;<br/>

##### 3.1.2 Display Name<br/>
> 使用者可读内容<br/>

##### 3.1.3 type<br/> 
> 这个属性的类型，可能的type所表示的内容有以下几种：<br/> 

> Color:一种颜色，由RGBA（红绿蓝和透明度）四个量来定义<br/> 
> 2D:一张2的阶数大小（256，512之类）的贴图。这张贴图将在采样后被转为对应基于模型UV的每个像素的颜色，最终被显示出来<br/> 
> Rect:一个非2阶数大小的贴图<br/> 
> Cube:即Cube map texture（立方体纹理），简单说就是6张有联系的2D贴图的组合，主要用来做反射效果(比如天空盒和动态反射)，也会被转换为对应点的采样<br/> 
> Range(min,max): 一个介于最小值和最大值之间的浮点数，一般用来当作调整Shader某些特性的参数(比如透明度渲染的截止值可以是从0至1的值等)<br/> 
> Float:任意一个浮点数<br/> 
> Vector:一个四维数<br/> 

##### 3.1.4 defaultValue<br/> 
> 定义了这个属性的默认值，通过输入一个符合格式的默认值来指定对应属性的初始值（某些效果可能需要某些特定的参数值来达到需要的效果，虽然这些值可以在之后在进行调整，但是如果默认就指定为想要的值的话就省去了一个个调整的时间，方便很多）<br/> 
> Color:以0～1定义的rgba颜色，比如(1,1,1,1)<br/> 
> 2D/Rect/Cube:对于贴图来说，默认值可以为一个代表默认tint颜色的字符串，可以是空字符串或者”white”,”black”,”gray”,”bump”中的一个<br/> 
> Float，Range:某个指定的浮点数<br/> 
> Vector:一个4维数，写为 (x,y,z,w)<br/> 

> 另外还有一个{option}，它只对2D，Rect或者Cube贴图有关，在写输入时我们最少要在贴图之后写一对什么都不含的空白的{}，当我们需要打开特定选项时可以把其写在这对花括号内。如果需要同时打开多个选项，可以使用空白分隔。可能的选择有ObjectLinear, EyeLinear, SphereMap, CubeReflect, CubeNormal中的一个，这些都是OpenGL中TexGen的模式，具体的留到后面有机会再说<br/> 
> <br/>
> 如下:<br/>
```Unity
//Define a color with a default value of semi-transparent blue
_MainColor ("Main Color", Color) = (0,0,1,0.5)
//Define a texture with a default of white
_Texture ("Texture", 2D) = "white" {}
```

##### 3.1.5 Tags<br/> 
> 表面着色器可以被若干的标签（tags）所修饰，而硬件将通过判定这些标签来决定什么时候调用该着色器<br/> 

> 渲染非透明物体时调用:Tags { "RenderType"="Opaque" }<br/> 
> 渲染含有透明效果调用:"RenderType" = "Transparent"<br/> 
> 不被Projectors影响:"IgnoreProjector"="True"<br/> 
> 从不产生阴影:"ForceNoShadowCasting"="True"<br/> 
> 指定渲染顺序队列:"Queue"="xxx"<br/> 

> 如果你使用Unity做过一些透明和不透明物体的混合的话，很可能已经遇到过不透明物体无法呈现在透明物体之后的情况<br/> 
> Queue指定了物体的渲染顺序，预定义的Queue有：<br/> 
>	Background:最早被调用的渲染，用来渲染天空盒或者背景
>	Geometry:这是默认值，用来渲染非透明物体（普通情况下，场景中的绝大多数物体应该是非透明的）
>	AlphaTest:用来渲染经过Alpha Test的像素，单独为AlphaTest设定一个Queue是出于对效率的考虑
>	Transparent:以从后往前的顺序渲染透明物体
>	Overlay:用来渲染叠加的效果，是渲染的最后阶段（比如镜头光晕等特效）
> <br/>
> 这些预定义的值本质上是一组定义整数，Background = 1000， Geometry = 2000, AlphaTest = 2450， Transparent = 3000，最后Overlay = 4000。在我们实际设置Queue值时，不仅能使用上面的几个预定义值，我们也可以指定自己的Queue值，写成类似这样："Queue"="Transparent+100"，表示一个在Transparent之后100的Queue上进行调用。<br/>

#### 3.2 LOD<br/>
> LOD很简单，它是Level of Detail的缩写，在这里例子里我们指定了其为200（其实这是Unity的内建Diffuse着色器的设定值）。<br/>

> 调整根据设备图形性能来调整画质时可以进行比较精确的控制:<br/>
>    VertexLit及其系列 = 100<br/>
>    Decal, Reflective VertexLit = 150<br/>
>    Diffuse = 200<br/>
>    Diffuse Detail, Reflective Bumped Unlit, Reflective Bumped VertexLit = 250<br/>
>    Bumped, Specular = 300<br/>
>    Bumped Specular = 400<br/>
>    Parallax = 500<br/>
>    Parallax Specular = 600<br/>

#### 3.3 Shader本体<br/>
```Unity
CGPROGRAM
// Physically based Standard lighting model, and enable shadows on all light types
#pragma surface surf Standard fullforwardshadows

// Use shader model 3.0 target, to get nicer looking lighting
#pragma target 3.0

sampler2D _MainTex;

struct Input
{
    float2 uv_MainTex;
};

half _Glossiness;
half _Metallic;
fixed4 _Color;

// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
// #pragma instancing_options assumeuniformscaling
UNITY_INSTANCING_BUFFER_START(Props)
// put more per-instance properties here
UNITY_INSTANCING_BUFFER_END(Props)

void surf (Input IN, inout SurfaceOutputStandard o)
{
    // Albedo comes from a texture tinted by color
    fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
    o.Albedo = c.rgb;
    // Metallic and smoothness come from slider variables
    o.Metallic = _Metallic;
    o.Smoothness = _Glossiness;
    o.Alpha = c.a;
}
ENDCG
```
> 逐行定义:<br/>
```
CGPROGRAM
```
> 开始CG程序<br/>
```
ENDCG
```
> 结束CG程序<br/>
```
#pragma surface surf Lambert
```
> surface - 声明的是一个表面着色器<br/>
> surfaceFunction - 着色器代码的方法的名字<br/>
> lightModel - 使用的光照模型。<br/>

```
#pragma target 3.0
```
> target 3.0 --> 用什么Lighting<br/>
```
sampler2D _MainTex;
```
> 对于这段CG程序，要想访问在Properties中所定义的变量的话，必须使用和之前变量相同的名字进行声明。于是其实sampler2D _MainTex;做的事情就是再次声明并链接了_MainTex，使得接下来的CG程序能够使用这个变量。<br/>
```
struct Input
{
    float2 uv_MainTex;
};
```
> 接下来是一个struct结构体。相信大家对于结构体已经很熟悉了，我们先跳过之，直接看下面的的surf函数。上面的#pragma段已经指出了我们的着色器代码的方法的名字叫做surf，那没跑儿了，就是这段代码是我们的着色器的工作核心。<br/>
```
half _Glossiness;
half _Metallic;
fixed4 _Color;
```
> 其实没什么魔法，float和vec都可以在之后加入一个2到4的数字，来表示被打包在一起的2到4个同类型数。<br/>
```
struct SurfaceOutput {
    half3 Albedo;     //像素的颜色
    half3 Normal;     //像素的法向值
    half3 Emission;   //像素的发散颜色
    half Specular;    //像素的镜面高光
    half Gloss;       //像素的发光强度
    half Alpha;       //像素的透明度
};
```
> 第一个是Input，我们已经明白了：在计算输出时Shader会多次调用surf函数，每次给入一个贴图上的点坐标，来计算输出。第二个参数是一个可写的SurfaceOutput，SurfaceOutput是预定义的输出结构，我们的surf函数的目标就是根据输入把这个输出结构填上。<br/>

> 这里的half和我们常见float与double类似，都表示浮点数，只不过精度不一样。也许你很熟悉单精度浮点数（float或者single）和双精度浮点数（double），这里的half指的是半精度浮点数，精度最低，运算性能相对比高精度浮点数高一些，因此被大量使用。<br/>

 > 在例子中，我们做的事情非常简单：<br/>
```
fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
o.Albedo = c.rgb;
o.Metallic = _Metallic;
o.Smoothness = _Glossiness;
o.Alpha = c.a;
```
> 这里用到了一个tex2d函数，这是CG程序中用来在一张贴图中对一个点进行采样的方法，返回一个float4。这里对_MainTex在输入点上进行了采样，并将其颜色的rbg值赋予了输出的像素颜色，将a值赋予透明度。于是，着色器就明白了应当怎样工作：即找到贴图上对应的uv点，直接使用颜色信息来进行着色，over。<br/>

> TODO:未完待续...

