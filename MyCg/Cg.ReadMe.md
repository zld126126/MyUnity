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
  - [Start Cg!!!](#start-cg)

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

## Start Cg!!!
1.[CG Setup](http://developer.nvidia.com/object/cg_toolkit.html)

    安装目录:
    C:\Program Files (x86)\NVIDIA Corporation\Cg\bin\cgc.exe

    运行:
    cgc -h

2.VS插件 

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

    

