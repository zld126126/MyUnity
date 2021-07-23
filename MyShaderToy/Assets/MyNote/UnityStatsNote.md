### unity-stats 窗口:
> Stats窗口，全程叫做 Rendering Statistics Window , 即渲染数据统计窗口，它会实时统计数据。<br/>
> Audio 声音 && Graphics 图像 <br/>

- [unity-stats 窗口:](#unity-stats-窗口)
  - [FPS(Time Per Frame AndFPS)](#fpstime-per-frame-andfps)
  - [CPU](#cpu)
  - [Render thread](#render-thread)
  - [Batches](#batches)
  - [SetPass calls](#setpass-calls)
  - [Saved By Batching](#saved-by-batching)
  - [Dynamic Batches](#dynamic-batches)
  - [Static Batches](#static-batches)
  - [Tris 和 Verts](#tris-和-verts)
  - [Screen](#screen)
  - [Shadown casters](#shadown-casters)
  - [Visible skinned meshed](#visible-skinned-meshed)
  - [Animations](#animations)
  - [更多 Profiler](#更多-profiler)
- [unity 优化技术:](#unity-优化技术)

#### FPS(Time Per Frame AndFPS)
frames per seconds 表示引擎处理和渲染一个游戏帧所花费的时间，该数字主要受到场景中渲染物体数量和 GPU 性能的影响，FPS 数值越高，游戏场景的动画显示会更加平滑和流畅。
一般来说，超过 30FPS 的画面人眼不会感觉到卡，有视觉残留的特性，光在视网膜上停止用后人眼还会保持 1/24 秒左右的时间，因此游戏画面每秒帧数至少要保证在 30 以上。
另外，Unity 中的 FPS 数值仅包括此游戏 Scene 里更新和渲染的帧，编辑器中编辑的 Scene 和其它监视窗口的进程不包括在内。<br/>

#### CPU
获取到当前占用 CPU 进行计算的时间绝对值，或时间点，如果 Unity 主进程处于挂断或休眠状态时，CPU time将会保持不变。<br/>

#### Render thread
GPU 渲染进程处理图像所花费的时间，具体数值由 GPU 性能来决定。<br/>

#### Batches
即 Batched Draw Calls, 是 Unity 内置的 Draw Call Batching 技术。<br/>

> 什么是Draw Calls: <br/>
```
CPU每次通过GPU发出一个glDrawElements(OpenGL中的图元渲染函数)或者DrawIndexedPrimitive(DirectX的顶点绘制方式)的过程为一次 Draw Call.

一般引擎每对一个物体进行一次 DrawCall,就会产生一个Batch.

Batch里包含该物体的所有网格和顶点数据,当渲染另一个相同的物体时,引擎会直接调用Batch信息,将相关顶点数据直接送到GPU,从而让渲染过程更高效.

Batching 技术是将所有材质相近的物体进行合并渲染.
```
>对于一个有不同Shader和Material的物体,渲染是比较耗时的,因为会产生多个Batch.每次的修改材质和贴图都会影响Batches的数据集的构成.<br/>

```
优化方案:
    通过手动方式合并材质接近物体;
    尽量不修改Batches物体的Scale,会生成新的Batch;
    为提升GPU渲染效率,尽可能在一个物体上使用较少的材质,减少Batches过多的开销;
    不会运动的物体,考虑设置static,static 声明的物体会自动进行内部批处理
```

#### SetPass calls
一个游戏物体显示特殊效果,它的的Material上带有许多特定的Shader,为实现相应的效果,Shader会包含很多Pass,每当GPU运行一个Pass之前,会产生一个 SetPass call.<br/>
Batches and DrawCall 是绘制图像的重要指标,作为衡量场景绘制的首要参考.
一个Draw Call = 呼叫一次 DrawlndexedPrimitive(DX) or glDrawElements(OGL) = Batch.<br/>
25k bath/sec 的渲染会使 1GHz的CPU使用率达到100%
因此公式: 25Kn(GHZ)Percentage/Framerate = Batch/Frame<br/>

> 获取 SetPass calls API: UnityStats.setPassCalls<br/>
```
注: 面板中看到Batches是渲染总Batch = DrawCall,
但是 Unity可以获取未批次处理之前的DrawCall.
```

#### Saved By Batching
由于Batch减少DrawCall,可以间接的看到场景优化的效果.
有两个部分组成: Static Batching 和 Dynamic Batching<br/>
Unity 内建自动合并,缺点: 静态合并会引发内存和存储的额外开销,动态合并会增加CPU的负担<br>
材质贴图不同,可以贴图合并; 使用ShawodCaster时,材质相同,贴图不同也可合并渲染.<br/>

#### Dynamic Batches
> 动态合并满足条件:
```
    模型总顶点树小于900
    不包含镜像transform改变,不改变Scale,
    不适用多Pass的Shader.
```
由于需要合并时通过CPU计算转为世界坐标,这只在CPU消耗比DrawCall 消耗"便宜"才值得.这标准根据平台有差异.
如:在苹果平台上DrawCall消耗便宜,不该使用该技术.<br/>
设置此功能: Editor->Project Setting ->Player 设置<br/>
Unity Dynamic Batches API: UnityStats.dynamicBatches<br/><br/>

#### Static Batches
场景中不能移动物体使用静态合并,是不受定点数的限制,可以大幅度降低DrawCall.但为了将元素合并到一个大模型中,这项技术需要额外的内存.主要内存消耗在与共享多边形会在内存中重复创建.有时候就需要牺牲渲染效率来避免静态合并,保证内存够小.<br/>

#### Tris 和 Verts
> 获取 Verts API: UnityStats.vertices<br/>
> 获取 Verts API: UnityStats.triangles<br/>

Verts : 摄像机事视野 (field of view) 内渲染的定点数.<br/>

Tris : 摄像机视野 (field of view) 内渲染的三角面总数量.<br/>

Camera的渲染性能受到Draw Calls 影响.生成一个Draw Calls,它处理一个Draw Calls 的时间是有上边的Tris和Certs数量决定.<br/>

Unity Stats 视图中Tris 和Verts 不仅仅是视维中的梯形内的Tris和Verts,而是 Camera 中 field of view 所有取值下的tris和verts.(假设Game视图看不到这个Cube,如果当你把 field of view 设定到179 过程中都看不到cube,stats面板才不会统计,GPU才不会渲染,否则都是会渲染,而且Unity不会把模型拆分,所有哪怕只有一个顶点需要渲染,Unity 都会把整个模型都渲染出来)<br/>

#### Screen
获取当前Game屏幕的分辨率的大小,后面的值表是总内存使用<br/>
> 获取 Screen API: UnityStats.screenRes<br/>

#### Shadown casters
表示场景中有多少个可以投射阴影的物体,一般这些物体作为场景中的光源<br/>
> 获取 Screen API: UnityStats.shadowCasters<br/>

#### Visible skinned meshed
渲染皮肤网格的数量<br/>
> 获取 Screen API: UnityStats.visibleSkinnedMeshes<br/>

#### Animations
正在播放动画的数量<br/>
> 获取 Animations API: UnityStats.visibleAnimations<br/>

#### 更多 Profiler
如果想了解更多关于渲染的信息,打开Unity的Profiler窗口<br/>
> 快捷键 Ctrl + 7<br/>
> Window --- Profiler<br/>
> 右键 -- AddTab -- Profiler<br/>

### unity 优化技术:
https://blog.csdn.net/candycat1992/article/details/42127811#t4<br/>