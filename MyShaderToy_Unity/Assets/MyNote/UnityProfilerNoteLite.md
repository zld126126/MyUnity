## unity profiler
Unity3D为我们提供了一个强大的性能分析工具Profiler。<br/>

```
XXX属性


优化建议:
```

### Other
比较主要的几项:<br/>
```
System.ExecutableAndDlls
系统可执行程序和DLL，是只读的内存，用来执行所有的脚本和DLL引用。不同平台和不同硬件得到的值会不一样，可以通过修改Player Setting的Stripping Level来调节大小。

优化建议:我试着修改了一下Stripping Level似乎没什么改变，感觉虽占用内存大但不会影响游戏运行。我们暂时忽略它吧(- -)!
```

```
GfxClientDevice
GFX（图形加速\图形加速器\显卡 (GraphicsForce Express)）客户端设备。

优化建议:虽占用较大内存，但这也是必备项，没办法优化。继续忽略吧(- -)!!
```

```
ManagedHeap.UsedSize
托管堆使用大小。

优化建议:不要让它超过20MB，否则可能会有性能问题！
```

```
ShaderLab
Unity自带的着色器语言工具相关资源。

优化建议:这个东西大家都比较熟悉了，忽略它吧。
```

```
SerializedFile
序列化文件，把显示中的Prefab、Atlas和metadata等资源加载进内存。

优化建议:这里就是你要监控的哪些预设在序列化中在内存中占用大小，根据需求进行优化。
```

```
PersistentManager.Remapper
持久化数据重映射管理相关

优化建议:与持久化数据相关，比如AssetBundle之类的。注意监控相关的文件。
```

```
ManagedHeap.ReservedUnusedSize
托管堆预留不使用内存大小，只由Mono使用。

优化建议:无法优化。
```

```
Assets.Texture2D 
2D贴图及纹理。
    
优化建议:
    许多贴图采用的Format格式是ARGB 32 bit所以保真度很高但占用的内存也很大。在不失真的前提下，适当压缩贴图，使用ARGB 16 bit就会减少一倍，如果继续Android采用RGBA Compressed ETC2 8 bits（iOS采用RGBA Compressed PVRTC 4 bits），又可以再减少一倍。把不需要透贴但有alpha通道的贴图，全都转换格式Android：RGB Compressed ETC 4 bits，iOS：RGB Compressed PVRTC 4 bits。
    
    当加载一个新的Prefab或贴图，不及时回收，它就会永驻在内存中，就算切换场景也不会销毁。应该确定物体不再使用或长时间不使用就先把物体制空(null)，然后调用Resources.UnloadUnusedAssets()，才能真正释放内存。
    
    有大量空白的图集贴图，可以用TexturePacker等工具进行优化或考虑合并到其他图集中。
```

```
Assets.AudioManager
音频管理器

优化建议:随着音频文件的增多而增大。
```

```
Assets.AudioClip
音效及声音文件

优化建议:
```

```
Assets.Cubemap
立方图纹理

优化建议:这个一般在天空盒中比较常见，我也不知道如何优化这个。。。
```

```
Assets.Mesh
模型网格

优化建议:主要检查是否有重复的资源，还有尽量减少点面数。
```

```
Scene Memory
场景中使用的网格模型

优化建议:注意网格模型的点面数，能合并的mesh尽量合并。
```

```
Builtin Resources
这些都是Unity的一些内部资源，对于项目内存没有什么分析价值，所以我就暂时不对其进行分析了。

优化建议:不需处理.
```

### Profiler内存重点关注优化项目<br/>
> 1）ManagedHeap.UsedSize: 移动游戏建议不要超过20MB.<br/>
> 2）SerializedFile: 通过异步加载(LoadFromCache、WWW等)的时候留下的序列化文件,可监视是否被卸载.<br/>
> 3）WebStream: 通过异步WWW下载的资源文件在内存中的解压版本，比SerializedFile大几倍或几十倍，不过我们现在项目中展示没有。<br/>
> 4）Texture2D: 重点检查是否有重复资源和超大Memory是否需要压缩等.<br/>
> 5）AnimationClip: 重点检查是否有重复资源.<br/>
> 6）Mesh： 重点检查是否有重复资源.<br/>

### 项目中可能遇到的问题<br/>
1.Device.Present:<br/>
> 1）GPU的presentdevice确实非常耗时，一般出现在使用了非常复杂的shader.<br/>
> 2）GPU运行的非常快，而由于Vsync的原因，使得它需要等待较长的时间.<br/>
> 3）同样是Vsync的原因，但其他线程非常耗时，所以导致该等待时间很长，比如：过量AssetBundle加载时容易出现该问题.<br/>
> 4）Shader.CreateGPUProgram:Shader在runtime阶段（非预加载）会出现卡顿(华为K3V2芯片).<br/>
> 5）StackTraceUtility.PostprocessStacktrace()和StackTraceUtility.ExtractStackTrace(): 一般是由Debug.Log或类似API造成，游戏发布后需将Debug API进行屏蔽。<br/>

2.Overhead:<br/>
> 1）一般情况为Vsync所致.<br/>
> 2）通常出现在Android设备上.<br/>

3.GC.Collect:<br/>
原因：<br/>
> 1）代码分配内存过量(恶性的)<br/>
> 2）一定时间间隔由系统调用(良性的).<br/>
占用时间：<br/>
> 1）与现有Garbage size相关<br/>
> 2）与剩余内存使用颗粒相关（比如场景物件过多，利用率低的情况下，GC释放后需要做内存重排)<br/>

4.GarbageCollectAssetsProfile:<br/>
> 1）引擎在执行UnloadUnusedAssets操作（该操作是比较耗时的,建议在切场景的时候进行）。<br/>
> 2）尽可能地避免使用Unity内建GUI，避免GUI.Repaint过渡GCAllow.<br/>
> 3）if(other.tag == a.tag)改为other.CompareTag(a.tag).因为other.tag为产生180B的GC Allow.<br/>
> 4）少用foreach，因为每次foreach为产生一个enumerator(约16B的内存分配)，尽量改为for.<br/>
> 5）Lambda表达式，使用不当会产生内存泄漏.<br/>

5.尽量少用LINQ：<br/>
> 1）部分功能无法在某些平台使用.<br/>
> 2）会分配大量GC Allow.<br/>

6.控制StartCoroutine的次数：<br/>
> 1）开启一个Coroutine(协程)，至少分配37B的内存.<br/>
> 2）Coroutine类的实例 -> 21B.<br/>
> 3）Enumerator -> 16B.<br/>

7.使用StringBuilder替代字符串直接连接.<br/>

8.缓存组件:<br/>
> 1）每次GetComponent均会分配一定的GC Allow.<br/>
> 2）每次Object.name都会分配39B的堆内存.<br/>