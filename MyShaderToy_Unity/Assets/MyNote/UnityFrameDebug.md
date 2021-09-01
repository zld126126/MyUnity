### UnityFrameDebug
- [UnityFrameDebug](#unityframedebug)
  - [UpdateDepthTexture](#updatedepthtexture)
  - [Shadows.RenderShadowMap](#shadowsrendershadowmap)
  - [RenderForwardOpaque.CollectShadows](#renderforwardopaquecollectshadows)
  - [Camera.RenderSkyBox](#camerarenderskybox)
  - [Camera.ImageEffects](#cameraimageeffects)
  - [渲染状态指定](#渲染状态指定)

#### UpdateDepthTexture
    可能和想象中不同，Unity在渲染场景时，是先渲染物体的阴影，再渲染物体本身，而渲染阴影又分为两步，首先渲染得到Depth Texture，这也就是UpdateDepthTexture过程所做的事情，为后续的ShadowMap奠定基础。展开左侧UpdateDepthTexture过程，点击Draw Mesh Plane，再右侧细节中看到使用的是Standard Shader中的名字为ShadowCaster的通道
#### Shadows.RenderShadowMap
    展开Shadows.RenderShadowMap，有两个Draw Mesh Plane过程，这两个过程都是得到ShadowMap，因此，他们使用的仍然是Standard Shader中的ShadowCaster通道

    另外，这里的过程数是可以调节的，打开Edit->Project Settings->Quality，找到Shadows下的Shadow Cascades，就可以改变Draw mesh Plane的过程数，图5展示了不同过程数下的左侧过程。
#### RenderForwardOpaque.CollectShadows
    在这个过程中，Unity收集之前的ShadowMap，然后合并，将ShadowMap输出到屏幕空间中，具体使用的Shader没有弄清楚，在以后的学习中将继续关注。
#### Camera.RenderSkyBox
    这个过程是在渲染天空盒，展开Camera.RenderSkyBox，我们得到了其使用的Shader，这里不对此过多叙述。

    此外，我们可以通过设置Camera上的Clear Flags来取消这个过程，例如，我们将Camera上的Clear Flags改为Solid Color，那么这个过程就会消失。
#### Camera.ImageEffects
    最后，这个过程属于摄像机的图像特效，本文也不做讨论。
#### 渲染状态指定
    我们再回头来观察一下场景中Camera中的Rendering Path，没错，它是Forward，这就是CPU指定渲染状态的一个设置，这个设置会指定Camera中的物体使用符合前向渲染路径的通道渲染，正如表1，前向渲染路径中有三个Light Mode通道，分别是ForwardBase、ForwardAdd和ShadowCaster，对应到Standard Shader中的名字正好是FORWARD、FORWARD_Delta和ShadowCaster。

    对，确实是这样，通过指定Camera中的RenderPath标签，我们指定了使用前向渲染路径，也就指定了在渲染Plane时，需要使用其中的FORWARD、FORWARD_Delta和ShadowCaster通道。本场景中我们没有使用到FORWARD_Delta通道，这是因为场景中只有一个逐像素光源。至此，我们就明白在Unity Editor中设定Camera的Rendering Path，从而让CPU指定GPU的相应渲染状态了。