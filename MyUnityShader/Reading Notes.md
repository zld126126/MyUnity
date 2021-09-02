# Unity Shader 入门精要 - Reading Notes
    Shader 不只是 UnityShader

    勘误:
    http://candycat1992.github.io/unity_shaders_book/unity_shaders_book_corrigenda.html

    彩图:
    https://blog.csdn.net/Terrell21/article/details/82721447
- [Unity Shader 入门精要 - Reading Notes](#unity-shader-入门精要---reading-notes)
  - [1.程序员的三大浪漫:](#1程序员的三大浪漫)
  - [2.渲染流水线:](#2渲染流水线)
    - [2.1.1 应用阶段](#211-应用阶段)
    - [2.1.2 几何阶段](#212-几何阶段)
    - [2.1.3 光栅化阶段](#213-光栅化阶段)
  - [2.2 CPU和GPU之间的通信](#22-cpu和gpu之间的通信)
  - [2.3 GPU流水线](#23-gpu流水线)
    - [2.3.1 顶点着色器](#231-顶点着色器)
    - [2.3.2 裁剪](#232-裁剪)
    - [2.3.3 屏幕映射](#233-屏幕映射)
    - [2.3.4 三角形设置](#234-三角形设置)
    - [2.3.5 三角形遍历(扫描变换)](#235-三角形遍历扫描变换)
    - [2.3.6 片元着色器(像素着色器)](#236-片元着色器像素着色器)
    - [2.3.7 逐片元操作(输出合并阶段)](#237-逐片元操作输出合并阶段)
  - [2.4 容易困惑的地方:](#24-容易困惑的地方)
    - [2.4.1 什么是OpenGL/DirectX](#241-什么是opengldirectx)
    - [2.4.2 什么是HLSL GLSL CG](#242-什么是hlsl-glsl-cg)
    - [2.4.3 什么是DrawCall](#243-什么是drawcall)
    - [2.4.4 什么是固定管线渲染](#244-什么是固定管线渲染)
  - [2.5 什么是Shader?](#25-什么是shader)

## 1.程序员的三大浪漫:

    编译原理
    操作系统
    图形学
## 2.渲染流水线:
![真实生活中的流水线](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_01.png)

    渲染流水线的工作任务:
        由一个三维场景出发、生成(渲染)一张二维图像

![渲染流水线的三个阶段](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_02.png)

    渲染流水线的三个阶段:
        应用阶段(输出渲染图元)
        几何阶段(输出屏幕空间的顶点信息)
        光栅化阶段


### 2.1.1 应用阶段

    主要任务(CPU):
        1.场景数据
        包括位置信息,模型信息,光源等

        2.粗粒度剔除
        为了提高渲染性能,把不可见的物体剔除出去,不需要再移交给几何阶段进行处理

        3.设置渲染状态
        设置好每个模型的渲染状态,包括但不限于它使用的材质(漫反射颜色、高光反射颜色)、使用的纹理、使用的shader等，输出渲染图元(渲染所需的几何信息,一般是点、线、三角面等)
### 2.1.2 几何阶段
    主要任务(GPU)：
        1.决定需要绘制的图元是什么

        2.怎样绘制它们

        3.在哪里绘制它们
    
    重要任务:
        把顶点坐标变换到屏幕空间中,再交给光栅器进行处理
        输出屏幕空间的二维顶点坐标、每个顶点对应的深度值、着色等相关信息，并传递给下一个阶段

    可拆分更小流水线阶段
### 2.1.3 光栅化阶段
    负责将 几何阶段 传递的数据 产生屏幕上的像素,并渲染出最终的图像

    主要任务(GPU):
        决定每个渲染图元中的哪些像素应该被绘制在屏幕上,需要对几何阶段得到的逐顶点数据(例如纹理坐标、顶点颜色等)进行插值，然后进行逐像素处理
    
    可拆分更小流水线阶段
## 2.2 CPU和GPU之间的通信
    CPU - 应用阶段

![渲染流水线的三个阶段](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_03.png)
        
    1 把数据加载到显存中

![渲染流水线的三个阶段](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_04.png)    

    2 设置渲染状态

![渲染流水线的三个阶段](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_05.png)

    3 调用 Draw Call
        CPU发起,GPU接收
        GPU会根据渲染状态(例如材质\纹理\着色器等)和所有输入的顶点数据来计算,最终输出成屏幕上显示的那些漂亮的像素
## 2.3 GPU流水线
![GPU流水线](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_06.png)

    绿色表示完全可编程
    黄色表示可配置但不可编程
    蓝色表示GPU固定实现,无法编程

### 2.3.1 顶点着色器
![坐标变换和逐顶点光照](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_07.png)

    主要任务:
        坐标变换和逐顶点光照(先坐标变换,再计算顶点颜色)

![把顶点坐标从模型控件转换到齐次裁剪空间](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_08.png)
        
    坐标变换
        o.pos = mul(UNITY_MVP,v.position);
        这句话的意思:把顶点坐标从模型控件转换到齐次裁剪空间
        

        扩展:
            把数据发送给曲面细分着色器或几何着色器
    
### 2.3.2 裁剪
![裁剪](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_09.png)

    一个图元和摄像机视野的关系:
        完全在视野内
        部分在视野内
        完全在视野外

### 2.3.3 屏幕映射
![屏幕映射](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_10.png)

    主要任务:
        把每个图元的x和y坐标转换到屏幕坐标系下

        实际上,屏幕坐标和z坐标一起构成了窗口坐标系

![OpenGL和DirectX的映射是有区别的](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_11.png)

### 2.3.4 三角形设置
    光栅化阶段的起点
    主要任务:
        计算光栅化一个三角网格所需的信息

### 2.3.5 三角形遍历(扫描变换)
![三角形遍历](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_12.png)

    主要任务:
        检查每个像素是否被一个三角网格所覆盖
        如果覆盖,生成片元(很多状态的集合:包括但不限于屏幕坐标,深度信息,几何阶段顶点信息(例如法线,纹理坐标等))

### 2.3.6 片元着色器(像素着色器)
![片元着色器](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_13.png)

    在顶点着色器阶段输出每个顶点对应的纹理坐标,然后经过光栅化阶段对三角网格的3个顶点对应的纹理坐标进行插值后,就可以得到其覆盖的片元的纹理坐标

### 2.3.7 逐片元操作(输出合并阶段)
![逐片元操作](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_14.png)

    主要任务:
        1 决定每个片元的的可见性 涉及深度测试,模版测试等测试工作
        2 如果1个片元通过了所有的测试,就需要把这个片元的颜色值 和 已经存储在颜色缓冲区中的颜色进行合并,或者说是混合

    
![模版测试和深度测试 简化流程图](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_15.png)

![混合模式 简化流程图](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_16.png)

![球和长方体的绘制](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_17.png)

    扩展
        GPU双重缓冲
            后置缓冲
            前置缓冲

## 2.4 容易困惑的地方:
### 2.4.1 什么是OpenGL/DirectX
![CPU OpenGL DirectX 显卡驱动 GPU关系](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_18.png)

    OpenGl/DirectX 是图像应用编程接口,用于渲染2维或3维图形,这些接口架起了上层应用程序和底层GPU的沟通桥梁

    概括来说,应用程序运行在CPU上,应用程序可以通过调用OpenGL或DirectX的图形接口将渲染所需的数据,如顶点数据,纹理数据,材质参数等数据存储在显存中的特定区域,随后,开发者可以通过图像编程接口发出渲染命令,这些渲染命令被称为DrawCall,他们将被显卡驱动翻译成GPU能够理解的代码,进行真正的控制

    扩展
        显卡 有图像处理GPU和显存
            
        显存中可以存储任何数据 比如屏幕显示的图像缓冲,深度缓冲等

### 2.4.2 什么是HLSL GLSL CG
    HLSL GLSL CG都是高级着色语言
    CG/GLSL 跨平台

### 2.4.3 什么是DrawCall
![命令缓冲区1](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_19.png)

    问题1:CPU和GPU是如何实现并行工作的?
        CPU 向 命令缓冲区 添加命令
        GPU 从 命令缓冲区 读取命令

![命令缓冲区2](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_20.png)

    问题2:为什么DrawCall多了会影响帧率?
        CPU需要向GPU 发送很多内容 包括数据,状态,命令等
        GPU渲染能力很强,渲染200或2000个通常没区别,因此,渲染速度往往快于CPU提交命令的速度
        
        如果DrawCall太多,CPU就会把大量时间花费在提交DrawCall上,造成CPU过载

![命令缓冲区3](https://github.com/zld126126/MyUnity/blob/main/MyUnityShader/Image/2_21.png)

    问题3:如何减少DrawCall?
        批处理(Batching)
        把很多小的DrawCall合并成一个大的DrawCall

        减少DrawCall需要注意:
            1避免使用大量很小的网格
            2避免使用过多的材质

### 2.4.4 什么是固定管线渲染
    固定管线是只可配置不可编程的管线

|3D API|***支持固定管线的版本|***个支持可编程管线的版本|
|:----:|:----:|:----:|
|OpenGL|1.5|2.0|
|OpenGL ES|1.1|2.0|
|DirectX|7.0|8.0|

    如果不需要对较旧的设备进行兼容,不建议继续使用固定管线的渲染方式

## 2.5 什么是Shader?
    1 GPU流水线上一些可高度编程的阶段 着色器编译出来的最终代码会在GPU上运行
    2 有一些特定类型的着色器 如顶点着色器,片元着色器等
    3 依靠着色器我们可以控制流水线中的渲染细节 例如顶点着色器来进行顶点变换以及传递数据 用片元着色器来进行逐像素的渲染

    Unity中的Shader 是 Unity Shader


    


