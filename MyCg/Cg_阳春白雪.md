# CG - 阳春白雪
- [CG - 阳春白雪](#cg---阳春白雪)
  - [几何阶段](#几何阶段)
    - [Object Space To World Space - 模型坐标控件 到 世界坐标系空间](#object-space-to-world-space---模型坐标控件-到-世界坐标系空间)
    - [Eye Space To Project And Clip Space - 观察坐标空间 到 屏幕坐标空间](#eye-space-to-project-and-clip-space---观察坐标空间-到-屏幕坐标空间)
  - [Primitive Assembly && Triangle Setup - 图元装配](#primitive-assembly--triangle-setup---图元装配)
  - [光栅化阶段](#光栅化阶段)
    - [Rasterization](#rasterization)
    - [Pixel Operation(Raster Operation)](#pixel-operationraster-operation)
  - [图形硬件](#图形硬件)
    - [GPU内存架构](#gpu内存架构)
    - [Buffer 与 与 Z 值 - z缓冲区算法](#buffer-与-与-z-值---z缓冲区算法)
    - [Stencil Buffer - 模版缓冲区](#stencil-buffer---模版缓冲区)
    - [Frame Buffer - 帧缓冲器](#frame-buffer---帧缓冲器)
  - [Shader Language原理](#shader-language原理)
  - [Vertex Shader Program](#vertex-shader-program)
  - [Fragment Shader Program](#fragment-shader-program)
  - [CG VS GLSL VS HLSL](#cg-vs-glsl-vs-hlsl)
  - [Start Cg:开始cg世界!!!](#start-cg开始cg世界)
    - [1.CG Setup](#1cg-setup)
    - [2.VS插件](#2vs插件)
    - [3.CG基本知识:](#3cg基本知识)
      - [3.1cg compiler 支持 profiles(2009年统计)：](#31cg-compiler-支持-profiles2009年统计)
      - [3.2cg基本数据类型:](#32cg基本数据类型)
      - [3.3cg数组类型:](#33cg数组类型)
      - [3.4cg结构类型:](#34cg结构类型)
      - [3.5cg接口Interface类型:](#35cg接口interface类型)
      - [3.6cg类型转换:](#36cg类型转换)
      - [3.7cg关系操作符:](#37cg关系操作符)
      - [3.8cg逻辑操作符:](#38cg逻辑操作符)
      - [3.9cg数学操作符](#39cg数学操作符)
      - [3.10cg移位操作符 int:](#310cg移位操作符-int)
      - [3.11cg条件操作符:](#311cg条件操作符)
      - [3.12cg操作符优先顺序:](#312cg操作符优先顺序)
      - [3.13cg控制流语句](#313cg控制流语句)
      - [3.14cg关键字](#314cg关键字)
      - [3.15cg入口函数:](#315cg入口函数)
      - [3.16cg标准函数库:](#316cg标准函数库)
    - [4.cg例子-HelloCg TODO:](#4cg例子-hellocg-todo)
      - [4.1 hello cg 01](#41-hello-cg-01)
      - [4.2 hello cg 02 TODO](#42-hello-cg-02-todo)
    - [TODO 更多的CG例子](#todo-更多的cg例子)

## 几何阶段
### Object Space To World Space - 模型坐标控件 到 世界坐标系空间
    光照计算
### Eye Space To Project And Clip Space - 观察坐标空间 到 屏幕坐标空间
    视锥

## Primitive Assembly && Triangle Setup - 图元装配
    右手定则 决定 三角面片 法向量

    裁剪算法

## 光栅化阶段
### Rasterization
    决定那些像素被集合图元覆盖的过程(顶点以及绘制图元(线/面) 已经到像素(pixel))
    
### Pixel Operation(Raster Operation)
    1.消除遮挡面
    2.Texture operation - 纹理操作
    3.Blending - 混色
    4.Filtering - 经过数学运算后变成新的颜色值

## 图形硬件
### GPU内存架构
    glsl和hlsl的着色虚拟机版本基于GPU的寄存器和指令集而区分的
### Buffer 与 与 Z 值 - z缓冲区算法
### Stencil Buffer - 模版缓冲区
### Frame Buffer - 帧缓冲器

## Shader Language原理
    shader language 编写的程序 称之为 shader program(着色程序)

    shader program :
        1.vertex shader program(顶点着色程序)
        2.fragment shader program(片断着色程序)

        其中:
        Vertex program 负责顶点坐标变换 
        Fragment program 负责像素颜色计算
        Vertex program 输出 作为 Fragment program 输入

## Vertex Shader Program
    每个顶点数据都会执行一次顶点程序,每个片段都会执行一次片段程序

## Fragment Shader Program
    片断是三维顶点光栅化后的数据即可,没有经过深度比较
    屏幕显示的像素都经过深度比较

## CG VS GLSL VS HLSL
    OpenGL - GLSL
    Direct3D - HLSL
    NVIDIA - Cg

    Cg - More Popular And Standard

## Start Cg:开始cg世界!!!
### 1.[CG Setup](http://developer.nvidia.com/object/cg_toolkit.html)

    安装目录:
    C:\Program Files (x86)\NVIDIA Corporation\Cg\bin\cgc.exe

    运行:
    cgc -h

    cgc程序剖析:
        cgc -profile glslv -entry main_v test.cg

        -profile 配置项名
        glslv 当前所使用的profile名称
        -entry 着色程序入口函数名配置项
        main_v 顶点着色程序入口函数名
        test.cg 着色程序文件名(.cg可省略)
        main_f 片段着色程序入口函数名
        fp20 另一种profile名称,已知不支持tex2d

    在Project/HelloCg01/HelloCg01运行CMD命令行输入如下内容,
    会出现cgc程序输出:
        cgc -profile glslv -entry vs_main 01vs.cg

### 2.VS插件 

    VS2012:
        NShader:
            http://nshader.codeplex.com/
    VS2017:
        https://blog.csdn.net/weixin_31881743/article/details/113322922

        HLSL Tools For Visual Studio
        GLSL Language integration
        Shader Unity Support(UnityShaderLab)

        环境配置见
            VS2017_CG配置.docx

### 3.CG基本知识:
    
#### 3.1cg compiler 支持 profiles(2009年统计)：
        OpenGL ARB vertex programs
            Runtime profile: CG_PROFILE_ARBVP1
            Compiler option: _profile arbvp1

        OpenGL ARB fragment programs
            Runtime profile: CG_PROFILE_ARBFP1
            Compiler option: _profile arbfp1

        OpenGL NV40 vertex programs
            Runtime profile: CG_PROFILE_VP40
            Compiler option: _profile vp40

        OpenGL NV40 fragment programs
            Runtime profile: CG_PROFILE_FP40
            Compiler option: _profile fp40

        OpenGL NV30 vertex programs
            Runtime profile: CG_PROFILE_VP30
            Compiler option: _profile vp30

        OpenGL NV30 fragment programs
            Runtime profile: CG_PROFILE_FP30
            Compiler option: _profile fp30

        OpenGL NV2X vertex programs
            Runtime profile: CG_PROFILE_VP20
            Compiler option: _profile vp20

        OpenGL NV2X fragment programs
            Runtime profile: CG_PROFILE_FP20
            Compiler option: _profile fp20

        DirectX 9 vertex shaders
            Runtime profiles: CG_PROFILE_VS_2_X
            CG_PROFILE_VS_2_0
            Compiler options:-profile vs_2_x
            -profile vs_2_0

        DirectX 9 pixel shaders
            Runtime profiles: CG_PROFILE_PS_2_X
            CG_PROFILE_PS_2_0
            Compiler options: -profile ps_2_x
            -profile ps_2_0

        DirectX 8 vertex shaders
            Runtime profiles: CG_PROFILE_VS_1_1
            Compiler options:-profile vs_1_1

        DirectX 8 pixel shaders
            Runtime profiles: CG_PROFILE_PS_1_3
            CG_PROFILE_PS_1_2
            CG_PROFILE_PS_1_1
            Compiler options: -profile ps_1_3
            -profile ps_1_2
            -profile ps_1_2
            -profile ps_1_1
#### 3.2cg基本数据类型:
    Cg支持7种数据类型:
        1.float,32位浮点数据
        2.half,16位浮点数据
        3.int,32位整形数据-有些profile会变成float
        4.fixed,12位定点数-fragment profiles支持
        5.bool,布尔数据
        6.sampler*,纹理对象句柄
        7.string,字符类型-内置类型"Cg-Runtime-API"使用
#### 3.3cg数组类型:
    cg中的数组,作为函数的形参,用于大量数据的传递
    声明数组 必须指定 长度和地址

#### 3.4cg结构类型:
    类似对象的概念:
    struct myAdd{
        float val;
        float add(float x){
            return val+x;
        }

    }
    myAdd s;

    float a = s.value;
    float b = s.add(a);

#### 3.5cg接口Interface类型:
    目前Cg中的接口类型不算完善,暂不能扩展和包含

#### 3.6cg类型转换:
    float a = 1.0;
    half b = 2.0;
    float c = a + b; 等价于 float c = a + (float)b;

#### 3.7cg关系操作符:
    <
    <=
    !=
    ==
    >=
    >    

#### 3.8cg逻辑操作符:
    && 
    || 
    !

#### 3.9cg数学操作符
    +
    -
    *
    /
    %
    ...

#### 3.10cg移位操作符 int:
    float a = 1.0;
    float4 b = a.xxxx;

#### 3.11cg条件操作符:
    (a < 0)?(b = a):(c = a);

#### 3.12cg操作符优先顺序:
|操作符|结合律|功能|
|:----:|:----:|:----:|
|()[]->.|从左到右|函数调用、数组引用、结构引用、成员选择|
|!~++-+-*&(type)sizeof|从右到左|一元操作符：取反、增加、减少、正号、负号、间接、地址、转换|
|*/%|从左到右|乘法、除法、余数|
|+-|从左到右|加法、减法|
|<<>>|从左到右|移位操作符|
|<>=>>=|从左到右|关系操作符|
|==!=|从左到右|等于，不等|
|&|从左到右|位操作符与|
|^|从左到右|位操作符异或|
|&#124;|从左到右|位操作符或|
|&&|从左到右|逻辑与|
|&#124;&#124;|从左到右|逻辑或|
|?:|从右到左|条件表达式|
|=+=-=*=/=%=&=^=!=<<=>>=|从右到左|赋值、赋值表达式|
|,|从左到右|逗号操作符|

#### 3.13cg控制流语句
    如果没有确切的把握,不要在低级的profiles中使用循环控制语句

    return 只能作为最后一条语句出现

#### 3.14cg关键字
    int/float/struct等 照搬其他编程语言
    in/out/inout cg特有输入参数
        in: 输入参数传值
        out: 输出参数传值
        inout: 输入输出参数传值
    uniform-制定变量的数据初始化
        1.  Varying inputs
        2.  Uniform inputs
    const-常量变量
        const float a = 1.0;

#### 3.15cg入口函数:
    struct C2E1v_Output {
        float4 position : POSITION;
        float3 color : COLOR;
    };
    C2E1v_Output C2E1v_green(float2 position : POSITION)
    { 
        C2E1v_Output OUT;
        OUT.position = float4(position,0,1);
        OUT.color = float3(0,1,0);
        return OUT; 
    }

#### 3.16cg标准函数库:
    1. 数学函数(Mathematical Functions)
![数学函数](https://github.com/zld126126/MyUnity/blob/main/MyCg/Image/01.png)

    2. 几何函数 (Geometric Functions) 
![几何函数](https://github.com/zld126126/MyUnity/blob/main/MyCg/Image/02.png)

    3. 纹理映射函数 (Texture Map Functions) 
![纹理映射函数](https://github.com/zld126126/MyUnity/blob/main/MyCg/Image/03.png)

    4. 偏导数函数 (Derivative Functions) 
![偏导数函数](https://github.com/zld126126/MyUnity/blob/main/MyCg/Image/04.png)

    5. 调试函数 (Debugging Function) 
![调试函数](https://github.com/zld126126/MyUnity/blob/main/MyCg/Image/05.png)

   
### 4.cg例子-HelloCg TODO:
    参考例子:
    https://blog.csdn.net/zhangci226/article/details/5540100
#### 4.1 hello cg 01
    https://github.com/zld126126/MyUnity/tree/main/MyCg/Project/HelloCg01
#### 4.2 hello cg 02 TODO
    https://github.com/zld126126/MyUnity/tree/main/MyCg/Project/HelloCg02

### TODO 更多的CG例子