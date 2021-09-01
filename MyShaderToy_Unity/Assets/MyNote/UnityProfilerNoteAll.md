## unity profiler
Unity3D为我们提供了一个强大的性能分析工具Profiler。<br/>
> Window->Analysis->Profiler<br/>

参考文章:
    
    https://blog.csdn.net/Tokyo_2024/article/details/105388523

- [unity profiler](#unity-profiler)
  - [Profiler Window Layout<br/>](#profiler-window-layout)
  - [Profiler Controls](#profiler-controls)
    - [1. AttachToPlay：](#1-attachtoplay)
    - [2. Record：](#2-record)
    - [3. Back Arrow](#3-back-arrow)
    - [4. Forward Arrow](#4-forward-arrow)
    - [5. Current](#5-current)
    - [6. Frame Number](#6-frame-number)
    - [7. Clear](#7-clear)
    - [8. Clear On Play](#8-clear-on-play)
    - [9. Deep Profile](#9-deep-profile)
    - [10. Call Stack](#10-call-stack)
    - [11. Load](#11-load)
    - [12. Context Menu](#12-context-menu)
  - [Deep Profilling](#deep-profilling)
  - [Profiler Modules](#profiler-modules)
  - [Profiler Module Overhead分析器模块开销](#profiler-module-overhead分析器模块开销)
  - [Command Line Arguments](#command-line-arguments)
  - [Profile Application](#profile-application)
    - [构建](#构建)
    - [连接](#连接)
    - [重新连接](#重新连接)
  - [Audio Profiler module](#audio-profiler-module)
  - [Simple细节面板](#simple细节面板)
  - [Audio Clip.LoadType](#audio-cliploadtype)
  - [Detailed View](#detailed-view)
  - [CPU Usege Module](#cpu-usege-module)
  - [导航和选择条目](#导航和选择条目)
  - [Hierarchy and 和Hierarchy view](#hierarchy-and-和hierarchy-view)
  - [Show Related Objects面板](#show-related-objects面板)
  - [Performance warnings](#performance-warnings)
  - [Allocation call stacks](#allocation-call-stacks)
  - [Editor only samples](#editor-only-samples)
  - [Global Illumination](#global-illumination)
  - [GPU Usage Profiler](#gpu-usage-profiler)
  - [Momory Profiler Module](#momory-profiler-module)
  - [Momory Profiler概述](#momory-profiler概述)
  - [Module details pane](#module-details-pane)
  - [Simple view](#simple-view)
  - [Detail View](#detail-view)
  - [Rendering Profiler](#rendering-profiler)
  - [Video Profiler Module](#video-profiler-module)
  - [Module Details Pane](#module-details-pane-1)
  - [Physics Profiler Module](#physics-profiler-module)
  - [使用物理分析器来理解性能问题](#使用物理分析器来理解性能问题)
  - [2D Physics Profiler Module](#2d-physics-profiler-module)

```
XXX属性


优化建议:
```
### Profiler Window Layout<br/>
    A：Profiler模块。这是可以在应用程序中配置的所有模块的列表。使用该区域顶部的下拉菜单从窗口中添加和删除模块。
    B：Profiler控件。使用这些控件来设置从哪个设备进行配置，以及应该执行哪种类型的配置Unity，在帧之间导航，并开始记录数据。
    C: 帧图表。这个区域包含了每个模块的图表。
    D：细节面板模块。窗口这个区域的信息会根据您选择的模块而变化。

### Profiler Controls
#### 1. AttachToPlay：
    选择要对应用程序进行概要分析的目标。
    默认情况下，这个设置为Playmode。还可以选择编辑器来配置Unity编辑器，并显示编辑器当前使用的资源。
    Unity还可以自动检测任何运行在网络上或通过USB连接的设备，并在下拉菜单中显示它们。在下拉列表中单击Enter IP，手动输入要对应用程序进行概要分析的设备的IP地址；
#### 2. Record：
    启用此设置以在运行应用程序时记录活动模块的分析信息。
    如果没有启用此按钮，则分析器在运行应用程序时不会收集任何数据。
#### 3. Back Arrow
    向后导航一帧。
#### 4. Forward Arrow
    向前导航一帧。
#### 5. Current
    跳转到最后记录的帧，使分析器实时显示收集到的数据。
#### 6. Frame Number
    指示当前在分析器中查看的帧号。
#### 7. Clear
    清除Profiler窗口中的所有数据。
#### 8. Clear On Play
    当下次在“Player Windows”中单击“播放”或连接到新目标设备时，启用此设置可从“分析器”窗口中删除所有数据。
#### 9. Deep Profile
    启用此设置来配置所有c#方法。
    当启用此设置时，Unity将检测添加到所有mono调用中，这样就可以对的脚本进行更详细的调查。
#### 10. Call Stack
    若要记录用于脚本化内存分配的调用堆栈，需要单击此切换。
    启用此选项时分析器记录的帧在GC中有信息。
    在完整调用堆栈上的Alloc示例将导致托管脚本分配，即使在Deep Profile没有激活时也是如此。
#### 11. Load
    将保存的分析器数据加载到分析器窗口。
    也可以通过分析器加载Player通过Profiler.logFile API写出的已经写出到文件的数据。
    按住Shift键，然后单击Load按钮，可以将文件内容附加到当前Profile 帧序列中。
#### 12. Context Menu
    (1) ColorBindMode：启用此设置可使分析器在其图形中使用更高的对比度颜色。这增强了红绿色盲用户的可见性。
    (2) Show Stat for "Current Frame" : 在记录过程中一直显示当前帧的对应的图表上的数据。
    (3) Preference：
        打开Preferences菜单以调整特定于分析器的属性。
    
    为了保持较低的开销，Unity只会每隔五帧重绘一次编辑器UI，这将导致一个稍微有些不太平滑的更新。
### Deep Profilling
    1. 通常，分析器只分析在profilermarker中显式包装的Code Timings。这包括从引擎的本地代码到脚本代码的第一次调用堆栈深度，例如MonoBehaviour的启动、Update或类似的方法。
   
    2. 如果没有向您自己的代码中添加更显式的ProfilerMarker插装，那么只能看到作为脚本代码子样例的其他样例是那些回调到Unity的API(如果该API已插装)的样例。大多数带有性能开销的API调用都是插装的Instumented。例如：通过Camera.main API获取主相机作为“FindMainCamera”Sample。

    3. 当启用Deep Profile设置，Profiler会剖析脚本代码的每一部分并且记录所有的函数调用，包括至少第一次调用堆栈到任何UnityAPI的深度。Unity将分析器工具注入到你所有的脚本方法中来记录所有的函数调用。这对于理解应用程序代码在什么地方花费的时间最多很有用。 

    4. 深度剖析是资源密集型的，并且会使用大量的内存。因此，在进行概要分析时，应用程序的运行速度会明显变慢。深度剖析更适合使用简单脚本的小型游戏。如果正在使用复杂的脚本代码，应用程序可能根本无法使用深度剖析，而对于许多较大的应用程序，深度剖析可能会使Unity耗尽内存。

    5. 要增加Profiler环缓冲区的大小，可以调整分析器。可以调整正在分析的播放器的maxUsedMemory属性。如果Deep Profile导致应用程序的帧率下降到无法运行的程度，那么可以手动地剖析脚本代码块，这比深度剖析的开销要小。
            使用profilermarker手动添加标记脚本块所需的工具。
            标记内容将出现在CPU使用率分析器模块中。
        
    6. 如果想找出哪些调用堆栈会导致GC。没有深度剖析的Alloc示例，可以打开分配调用堆栈的集合。在Profiler控件中启用调用堆栈设置，然后可以选择GC。在时间轴视图中Alloc样例，或者使用Hierarchy视图中的Show Related Objects面板来查找这些样例的调用堆栈。
### Profiler Modules
1.CPU Usage:

    显示应用程序在物理、脚本、动画和垃圾收集等领域花费最多时间的概述。
    此模块包含关于应用程序的广泛概要信息，您可以使用它来决定使用哪些模块来进一步研究应用程序中更具体的问题。
    此模块始终处于活动状态，即使您关闭它。

2.GPU Usage:

    GPU Usage显示与图形处理相关的信息。
    默认情况下，这个模块没有被激活，因为它有很高的开销。

3.Rendering:

    显示Unity在应用程序中渲染图形的信息，包括静态和动态批处理、SetPass和Draw调用、三角形和顶点。

4.Memory：

    显示有关Unity如何在应用程序中分配内存的信息。
    这对于了解脚本分配(GC.Alloc)如何导致垃圾收集，或者了解应用程序的Asset内存使用随时间的变化趋势特别有用。

5.Audio：

    显示与应用程序中的音频相关的信息，例如什么时候播放多少音频源，音频系统需要多少CPU占用，以及分配给它多少内存。

6.Video:
    
    显示应用程序中与视频相关的信息。

7.Physics/Physics 2D：
    
    显示物理引擎处理过的应用程序中的物理信息。

8.Network Message，Network Operation
    
    两个模块已经被弃用。

9.UI：

    显示关于Unity如何处理应用程序的UI批处理的信息，包括为什么以及如何批处理项目。

10.UI Details：

    与UI模块类似，此模块的图表添加了有关批处理和顶点计数的数据，以及包含触发UI更改的用户输入事件信息的标记。

11.Global Illumination：

    显示关于Unity在应用程序中的全局照明子系统上花费了多少CPU资源的信息。

### Profiler Module Overhead分析器模块开销
    1. 一些分析器模块有很大的数据收集开销，比如GPU、UI和音频分析器模块。为了防止这些模块影响应用程序的性能，可以通过在Profiler模块下拉菜单中取消对它们的选择来禁用它们。这将从窗口中删除模块，停止分析器收集模块的数据，并降低分析器的开销。

    2. 这不适用于CPU使用模块，因为其他模块依赖于CPU使用模块，所以CPU使用模块即使在不活动时也会收集数据。

    3. 若要添加模块，选择Profiler模块下拉菜单并选择要激活的Profiler。当您从下拉菜单中选择Profiler模块时，它将开始收集数据，但是不会显示它不活动期间的任何数据。

    4. 为了避免GPU Profiler模块的开销，它在默认情况下是不活动的。图形分析器模块必须在应用程序启动时激活，以连接到图形驱动程序。如果你稍后添加它，它对大多数平台没有影响，并且剖析器显示消息“图形卡驱动程序不支持GPU剖析(或它被禁用，因为驱动程序bug)”。

    5. 如果指示分析器收集数据并通过分析器将数据发送到磁盘。可以通过Profiler. setareaenabled()关闭Profiler模块，而不是通过Profiler窗口。

    6. 一些通过外部IDE调试脚本的设置也可能产生开销。为了避免这种开销和获得更准确的测量，禁用编辑器附加设置(Edit->首选项->外部工具)。类似地，在配置构建播放器时，打开构建设置并禁用脚本调试以避免这种开销。

### Command Line Arguments
   如果从命令行（例如Windows上的命令提示符，MacOS上的终端，LinuxShell或者Android adb）启动构建的播放器或Unity编辑器，可以传递命令行参数来配置一些Profile设置。
> -profile-maxusedmemory

### Profile Application
#### 构建
    1. 构建时必须选中：Development Build以及AutoconnectProfiler，其他选项可选。
    2. Deep Profiling Support对于深入分析应用程序的启动时间非常有用，这将为构建增加少量开销。
#### 连接
    1. IOS和Android都支持通过网络的远端profiling。如果使用了防火墙，需要在出站规则中打开端口：54998-55511。
    2. iOS远端Profiling
    3. Android远端Profiling
#### 重新连接
    1. 当选择“Build & Run”时，Unity Editor自动为应用程序创建了一个ADB通道。如果想要分析另外的应用，或者重启Adb服务，需要手动配置此通道。

    2. 配置方式：打开终端并输入如下内容。
> adb forward tcp:34999 locallabstract:Unity-{insert bundle identifier here}<br/> 

    3. 为了开启Android中Deep Profile，需要如下配置：
        (1) 开启Mono Scripting后端。Edit->ProjectSettings->Player->Android->OtherSetting。
        
        (2) 输入如下命令行：
> adb shell am start -n {insert bundle identifier here}/com.unity3d.player.UnityPlayerActivity -e 'unity' '-deepprofiling' <br/>        

### Audio Profiler module
    1. 音频主模块分类：
    Playing Audio Sources
    Audio Voices
    Total Audio CPU
    Total Audio Memory

    2.音频主模块各个部分的含义：
    Playing Audio Sources -- 选中在场景播放的数量
    Audio Voices -- 在选中Frame中Audio的数量
    Total Audio CPU -- 播放音频CPU占比
    Total Audio Memory -- 播放音频内存占比

### Simple细节面板
AudioClip是一个声音片段，如：按钮点击，相当于是一首音乐；AudioSource是一个源，包含AudioClip，还有其它一些属性，如：是否静音等，相当于是一个音乐播放器。<br/>

       1. TotalAudioSources：场景中AudioSource的数量。
       2. PlayingAudioSources：场景中正在破防的Audio Source的数量。
       3. PausedAudioSources：场景中暂停播放的Audio Source的数量。
       4. Audio Clip Count：场景中Audio Clips的总数量。
       5. Audio Voices：项目中使用的Audio Channels（FMOD Channels）的数量。
       6. Total Audio CPU：Audio使用的CPU的数量（百分比）。
       7. DSP CPU：
           （数字信号处理）项目中通过Mixing, Audio Effects，解压缩非流送的在内存中压缩类型的声音使用的CPU的数量（百分比）。
           这并不包含CPU所需的Unity在背后解码的加载类型是解压并且有负载在背景标志中检查的声音。
       8. Streaming CPU：应用中CPU在项目中使用流送Audio的耗费的百分比。
       9. Other CPU：不被上面CPU包含的一般的CPU耗费（百分比）。
       10. Total Audio Memory：在应用中使用的Audio的内存数量（M）。
       11. Streaming File Memory：
           加载类型为流式的音频文件在从磁盘逐步读取压缩音频数据时用于短期缓冲的内存数量。
       12. Streaming Decode Memory:
           加载类型为流送的Audio文件用来缓存解码后的采样流耗费的内存的数量。
       13. Sample Sound Memory：
           加载类型为解压加载的音频文件用于解压采样数据的内存量。
           Unity会把音频系统分配的内存集中起来，并且它会一直增长，直到应用程序的运行时间达到饱和。
           音频系统在内部重用分配的内存，这些内存在运行时无法压缩。
       14. Other Memory：音频系统中各子系统引起的内存开销。 
### Audio Clip.LoadType
    1. Decompress On Load：
        音频文件将在加载后立即解压缩。
        将此选项用于较小的压缩声音，以避免动态解压缩的性能开销。
        将vorbis编码的声音解压到负载上要比压缩它们多占用大约10倍的内存(对于ADPCM编码，大约是3.5倍)，因此不要将此选项用于大型文件。

    2. Compressed In Memory：
        保持声音压缩在内存中，当播放时才解压。
        这个选项有轻微的性能开销(特别是对于Ogg/Vorbis压缩文件)，所以只在较大的文件中使用它，因为在加载时解压缩会占用大量的内存。
        解压是发生在mixer线程，可以在“DSP CPU”部分的音频窗格的剖析器窗口中监视。

    3. Streaming：
        动态解码声音。该方法使用最少的内存来缓冲从磁盘中增量读取并动态解码的压缩数据。
        注意：解压发生在单独的流线程上，可以在profiler窗口的音频窗格的“ Steaming CPU”部分监视它的CPU使用情况。
        Streaming clips即使没有加载音频数据也有一个大约200KB的重载。

### Detailed View
    Channels
    Groups
    Channels And Groups

    1. Group显示了音频mixer中总线的层次结构。
    2. 通道和组视图将显示此信息以及有关播放声音的信息。
    3.Reset Play Count On Play：在下次单击Player窗口中的play或连接到新目标设备时重置plays列中的数字。

    各个属性值:
    1. Object：包含AudioSource播放Audio的GameObject。
    2. Asset:  对应的GameObject中Audio Source正在播放的音频Asset。
    3. Volume：Audio Source应用到Audio上的音量。这是它整体音量特征和动态音量特征的的结合。动态音量适用于与距离相关的衰减曲线。
    4. Audibility：Audio播放的实际级别。这是Audio Source的音频和另外的mixer通道对其施加的其他衰减的总和。
    5. Players：Unity播放此音频的数量。这个信息对调试逻辑错误可能很有用，因为Unity可能不会使用一些音频文件。
    6. 3D： 如果Audio使用动态距离想啊滚衰减和方向平移，则显示Yes。
    7. Paused：如果音频在此帧中是暂停的，则显示YES。
    8. Muted：如果音频在此帧中是静音的，则显示YES。
    9. Virtual:
        如果Audio由于Max Real Voice Count被挂起，则显示为YES。可以在Project Settings中的Audio中进行设置。
        Max Real Voice Count设置Unity同时播放的最大AudioSources的数量。
        如果这显示为True，则Unity有优先级更高的或Audibility的Audio在这一帧被播放。
    10. OneShot：
        如果AudioSource.PlayOneShot()播放这个音频，则显示YES。
        其中第一个参数为AudioClip，第二个参数为音量缩放值（0-1）。
    11. Looped：如果AudioSource.Play()播放音频，则显示YES。
    12. Distance：AudioSource到AudioListener之间的距离。
    13. MinDist：
        在AudioSource曲线编辑器上定义的最小距离。
        这定义了音频周围的一个球形区域，小于其值时音量保持在一个恒定的水平。
    14. MaxDist：
        音频源曲线编辑器上定义的最大距离。
        这定义了音频周围的一个球形区域，大于其值时音量保持在一个恒定的水平。
    15. Time：Audio回放的当前相关时间，当音频回放暂停时，时间不会往前走。
    16. Duration：Audio以秒为单位的长度。

### CPU Usege Module 
CPU使用情况探查器模块的图表跟踪在应用程序主线程上花费的时间。<br/>

    Rendering
    应用程序花费多少时间来渲染图形。

    Scripts	
    应用程序在运行脚本上花费了多少时间。

    Physics	
    应用程序在物理引擎上花费了多少时间。

    Animation
    应用程序花了多少时间来动画SkinnedMeshRenderers，GameObject和其他组件。这还包括花在计算Animation和Animator组件的系统上使用的时间
    GarbageCollector	应用程序花了多少时间运行垃圾回收器。

    VSync垂直同步
    应用程序每帧花费多少时间等待targetFrameRate或下一个VBlank与之同步。这取决于QualitySetting.vSyncCount值，目标帧速率或VSync设置，该设置是运行应用程序的平台的默认或强制最大值。

    Global Illunimation
    应用程序在光照上花费了多少时间。

    UI
    应用程序花费多少时间来显示其UI。

    Other
    应用程序花在不属于任何其他类别的代码上的时间。这包括整个EditorLoop或在Profile中配置播放模式时的性能分析开销等区域。

模块详细信息窗
    
        当选择“ CPU Usage”模块时，其下方的详细信息窗格将显示应用程序在选定框架中花费时间的细分。可以将时序数据显示为时间轴或层次表；要更改显示，使用详细信息窗格中的左上方下拉菜单（默认设置为时间轴）。可用的三个视图是：
    
    TimeLine	
    显示特定帧的时间细分，以及该帧长度的时间轴。这是唯一可用于查看除主线程以外的线程上的时序并关联各个线程之间的时序的视图模式。

    Hierarchy
    按时序数据的内部层次结构对其进行分组。此选项以降序列表格显示应用程序调用的元素，默认情况下，这些元素按花费的时间排序。您还可以按分配的脚本内存量（GC Alloc）或调用次数来排序信息。要更改排序表的列，请单击表列的标题。
    
    RawHierarchy
    以类似于发生计时的调用堆栈的分层结构显示计时数据。Unity在这种模式下单独列出每个调用堆栈，而不是像在“ 层次结构”视图中那样合并它们。

TimeLine视图
    
    1. 时间轴视图是用于CPU Usage模块的默认视图。它概述了应用程序中的时间以及时间之间的关系。

    2. TimeLine视图在其各自的子段中沿同一时间轴显示所有线程的概要分析数据。这与Hierarchy视图不同，后者仅显示来自主线程的概要分析数据。

    3. 可以使用时间轴视图来查看不同线程上的活动在并行执行中如何相互关联。可以查看正在使用不同线程的多少，例如JobSystem的工作线程，如何对这些线程进行排队，是否有任何线程处于空闲状态或正在等待另一个线程或一个Job来完成（Wait for X Sample）。

### 导航和选择条目
    1. 使用鼠标上的滚轮或者Alt+鼠标右键来缩放时间轴上的区域。

    2. 使用“A”键来重置缩放，这样整个帧时间都可以看到。

    3. 使用鼠标中键或者Alt+鼠标左键来平移时间轴上的区域。

    4. 在下面窗口中选中timeline上某个小项，Profiler将会突出显示其对CPU图表的贡献，使得其余部分变暗；若要取消该条目，直接点击视图中其余地方即可。另外，按F键将聚焦选择的当前样本。

    5. 单击并水平拖动到任何地方，以在时间轴的某个部分上显示覆盖，时间标尺在顶部显示的时间所涵盖的覆盖。

### Hierarchy and 和Hierarchy view
    1. Hierarchy视图列出了分析的所有样本，并根据它们的共享调用堆栈和profilermarker的层次结构将它们分组在一起。

    2. 原始的Hierarchy视图没有将样本分组在一起，这使得它非常适合在粒度级别上查看样本。

    3. 还可以使用Thread下拉菜单选择一个特定的线程，如MainThread或RenderThread，以便在这些视图中进行检查。

    4. 这两个视图都在每一行旁边显示了层次结构中每个项目的以下详细信息:
        (1) Total：
            Unity在一个特定函数上花费的总时间，以百分比表示。

        (2) Self：
            Unity在一个特定函数上花费的总时间百分比，不包括Unity调用子函数的时间。

        (3) Calls：
            在这一帧中对这个函数的调用次数。
            在Raw层次结构视图中，此列中的值始终为1，因为分析器不会合并样本的层次结构。

        (4) GC Alloc:
            当前帧中分配了多少脚本堆内存?
            脚本堆内存由垃圾收集器管理。
            每当Unity调用GC.Collect()或者有一个脚本堆内存分配不适合当前堆内存的大小，垃圾收集器将会被触发，它标记所有的不再引用它们的分配并收集它们。
            当在堆上分配更多内存时，Unity会更频繁地运行垃圾收集器。随着托管堆的增长，Unity需要更长的时间来标记和收集内存。因此，在应用程序运行时，应该将GC Alloc值保持为0，以防止垃圾收集器影响帧速率，并保持总体堆大小较小。

        (5) Time(ms)：
            Unity花费在一个特定函数上的时间。
            如果应用程序使用作业系统或者多线程呈现，则此消息可能会导致误导，因为它只包含Unity花费在当前选择的线程上的时间。
            如果要更改线程，选择“层次结构”窗格顶部的“Thread”下拉列表。

        (6) Self(ms)：
            Unity花费在一个特定函数上的总时间(以毫秒为单位)，不包括Unity调用子函数的时间。

        (7) Warning：
            由警告图标指示，这将显示应用程序在当前帧中触发警告的次数。

    5. 要获取关于应用程序在何处调用和使用pfofilerd函数，选择“模块详细信息”窗格右上角的“详细信息”下拉菜单，然后选择“显示相关对象”或“显示调用视图”。

### Show Related Objects面板
    Show Calls panel
    1. Show Calls 视图显示所选择的Samples是从哪里被调用的，以及它调用的其他函数。

    2. 另外，可以在详细信息模块右上角顶部启用或者禁用Collapse Editor Only Samples。这个Collapses All Samples在Player循环中仅仅在安全检查时发生。当Samples被折叠时，它们的GC.Alloc值对附加的Samples的GC.Alloc值没有影响。

    Common samples
    除了脚本代码生成的样例之外，Unity还提供了大量的样例，这些样例可以了解应用程序中哪些部分占用了时间。下表解释了一些更常见的样例的作用。

    1. Main thread基本样例：主线程基本示例明确区分了花在应用程序上的时间和花在编辑器和分析器活动上的时间。记录器还可以使用这些样本来获取主线程上帧的计时。

    (1) PlayerLoop：

        来自应用程序主循环的任何示例的根。

        当玩家在编辑器中以活动播放模式运行时，目标是编辑器而不是Playmode，此示例将嵌套在EditorLoop下。

    (2) EditorLoop：

        来自编辑器主循环的任何示例的根。
        这仅在编辑器中配置一个播放器时出现。
        当使用剖析器定位Playmode时，这个例子显示了渲染和运行包含播放器的编辑器花费了多少帧时间。
        如果希望看到编辑器在这段时间内做了什么，将目标切换到编辑器。

    (3) Profiler.CollectEditorStats

        与为不同的活动分析器模块收集统计信息相关的任何示例的根。
        要关闭特定模块，请关闭它们的图表或调用Profiler.SetAreaEnabled()

    2. Script update示例：除非使用的是作业系统，否则大部分脚本代码是嵌套在下面的示例中:
        Sample	Function
        Update.ScriptRunBehaviourUpdate	This sample includes calls to MonoBehaviour.Update and processing of coroutines.
        BehaviourUpdate	This sample processes all Update() methods.
        CoroutinesDelayedCalls	Contains coroutine samples after their first yield.
        PreLateUpdate.ScriptRunBehaviourLateUpdate	This sample processes all LateUpdate() methods.
        FixedBehaviourUpdate	This sample processes all FixedUpdate() methods.

    3. Rendering and VSync 示例：

        这些示例显示了CPU在哪些地方花费时间为GPU处理数据，或者它可能在哪些地方等待GPU完成。如果GPU分析器不可用，或者它增加了太多的开销，工具栏不会显示这些信息。这些示例可以让您了解应用程序是cpu受限还是GPU受限。
        Sample	Function
        WaitForTargetFPS	The time your application spends waiting for the targeted FPS that Application.targetFrameRate specifies.

        If this sample is a sub-sample of Gfx.WaitForPresent, it represents the amount of time your application spends waiting for the VSync configured in QualitySettings.vSyncCount.

        Note: The Editor doesn’t VSync on the GPU and instead uses WaitForTargetFPS to simulate the delay for VSync. Some platforms, in particular Android and iOS, enforce VSync or have a default frame rate cap of 30 or 60.
        Gfx.ProcessCommands	Contains all processing of the rendering commands on the render thread. Some of that time might be spent waiting for VSync or new commands from the main thread, which you can see from it’s child sample Gfx.WaitForPresent.
        Gfx.WaitForCommands	Indicates that the render thread is ready for new commands and might indicate a bottle neck on the main thread.
        Gfx.PresentFrame	Indicates the time your application spends waiting for the GPU to render and present the frame, which might include waiting for VSync.

        A WaitForTargetFPS sample on the main thread shows how much of that time is spent waiting for VSync.
        Gfx.WaitForPresent	Indicates that the main thread is ready to start rendering the next frame, but the render thread has not finished waiting on the GPU to present the frame. This might indicate that your application is GPU-bound. To see what the render thread is simultaneously spending time on, check the Timeline view.

        If the render thread spends time in Camera.Render, your application is CPU-bound and might be spending too much time sending draw calls or textures to the GPU.

        If the render thread spends time in Gfx.PresentFrame, your game is GPU-bound or it might be waiting for VSync on the GPU. A WaitForTargetFPS sub-sample of GFX.WaitForPresent indicates the portion of the Present phase that your application spends waiting for VSync. The Present phase is the portion of time between Unity instructing the graphics API to swap the buffers, to the time that this operation is completed
        Gfx.WaitForRenderThread	Indicates that the main thread is waiting for the render thread to process all the commands currently in its command stream. This sample only occurs in multithreaded rendering.

    4. Multi threading示例：

        These samples do not consume CPU cycles but instead highlight information that relates to threading and the JobSystem. When you see these samples, use the Timeline view to check what’s happening on other threads at the same time.
        Sample	Function
        Idle	Any time that the JobSystem does not utilize a Worker Thread, it emits an Idle sample. Small gaps between Idle samples usually happen when the JobSystem wakes them up, for example to schedule new Jobs. Longer gaps indicate a native Job that has not been instrumented.
        Semaphore.WaitForSignal	This thread is waiting for something to finish on another thread. To find the thread it is waiting for, check the Timeline view for any samples that ended shortly before this one.
        WaitForJobGroupID	A Sync Fence on a JobHandle was triggered. This might lead to work stealing, which happens when a worker finishes its work and then looks at other workers’ jobs to complete. These show up as job samples executed under this sample. Jobs that were “stolen” are not necessarily the jobs that were being waited on.

    5. Physics示例：

        The following table outlines some of the high-level physics Profiler samples. FixedUpdate() calls all of these samples.
        Sample	Function
        Physics.Simulate	Updates the state of the current physics by instructing the physics engine to run its simulation.
        Physics.Processing	Processes all non-cloth physics jobs. Expand this sample to show the low-level detail of the work done internally in the physics engine.
        Physics.ProcessingCloth	Processes all cloth physics jobs. Expand this sample to show the low-level detail of the work done internally in the physics engine.
        Physics.FetchResults	Collects the results of the physics simulation from the physics engine.
        Physics.UpdateBodies	Updates all the physics bodies’ positions and rotations. This sample also contains messages that communicate when these updates are sent.
        Physics.ProcessReports	Runs once the physics FixedUpdate ends. Processes the various stages of responding to the results of the simulation. Contacts, joint
        breaks and triggers update and message in this sample. There are four distinct sub stages:
            Physics.TriggerEnterExits	Processes OnTriggerEnter and OnTriggerExit events.
            Physics.TriggerStays	Processes OnTriggerStay events.
            Physics.Contacts	Processes OnCollisionEnter, OnCollisionExit, and OnCollisionStay events.
            Physics.JointBreaks	Processes updates and messages relating to broken joints.
        Physics.UpdateCloth	Contains updates relating to cloth and their Skinned Meshes.
        Physics.Interpolation	Manages the interpolation of positions and rotations for all the physics objects.
### Performance warnings
    Profiler可以检测一些在性能关键的上下文中应该避免的特定调用：
        Rigidbody.SetKinematic: 为供给重建非凸网格对撞机。
        Animation.DestroyAnimationClip: 触发重建内部状态。
        Animation.AddClip: triggers RebuildInternalState
        Animation.RemoveClip: triggers RebuildInternalState
        Animation.Clone: triggers RebuildInternalState
        Animation.Deactivate: triggers RebuildInternalState
### Allocation call stacks
    1. 默认情况下，在GC.Alloc Samples上分配调用堆栈是禁用的，因为他们会导致多帧延迟扰乱应用程序。

    2. 启用方法：导航到Profiler窗口的工具栏，并选择Call stack按钮。

    3. 无论是在编辑器中配置文件还是在正在运行的播放器中配置文件，都可以使用此功能。在打开这个选项后的帧中，GC.Alloc Samples包含它们的callstack。在层次结构视图和时间轴视图中，每个脚本堆分配都显示为一个GC.Alloc Samples。在时间轴视图中，它的颜色为明亮的洋红色。

    4. 或者，可以在层次结构或原始层次结构视图中查看调用堆栈。设置Details视图以显示相关对象。因为GC.Alloc样本没有名字，它们在这个面板中显示为N/A。当您选择一个N/A对象时，分析器会在details视图的下半部分显示调用堆栈。
### Editor only samples
    一些Samples只有在编辑器中进行概要分析时才会出现。这包括安全检查，校验一致性，验证对象设置，销毁检查和Prefab-related激活，所有上述这些Samples都不存在于播放器中。

    默认情况下，只编辑的示例在Hierarchy视图中折叠，并命名为EditorOnly [SampleName]。虽然它们可能会导致垃圾收集分配，但如果他们被折叠，将不会对GC.Alloc造成影响。

    要更改默认行为，单击“模块详细信息”窗格右上角的上下文菜单，并禁用“Collapse EditorOnly样例”设置。当您这样做时，您可以扩展Samples并贡献它的GC.Alloc值。

### Global Illumination
    ...略

### GPU Usage Profiler
    模块显示应用程序在GPU中花费的时间。你只能在播放模式中使用GPU分析器，或者在应用程序的构建中使用。不能使用它来配置编辑器。

### Momory Profiler Module
    有两种内存分析方法：
        (1) Memory Profiler Module：
            这是Profiler窗口中的一个内置模块，它为您提供关于应用程序在何处使用内存的基本信息。
        (2) Memory Profiler Package：
            这是一个单独的包，可以将其添加到项目中。
            它为Unity编辑器增加了一个额外的内存分析器窗口，你可以用它来更详细地分析你的应用程序的内存使用情况。
            可以存储和比较快照来更容易地找到内存泄漏，或者查看内存布局来找到内存碎片问题。
            https://docs.unity3d.com/Packages/com.unity.memoryprofiler@0.2/manual/index.html

### Momory Profiler概述
    1. 内存分析器模块可视化表示应用程序中分配的总内存的计数器。可以使用内存模块查看诸如加载对象的数量以及它们在每个类别中占用的总内存等信息。还可以看到每个Profiler帧的GC分配数量。

    2. 要获得更精确的数字和应用程序的内存使用情况，请通过“附加到播放器”菜单将分析器连接到正在运行的播放器。这允许您查看目标设备上的实际使用情况。

### Module details pane
    略...

### Simple view
    Simple View显示了在每一帧上Unity实时有多少内存被使用的概述。Unity为分配预留了内存池，以避免过于频繁地向操作系统请求内存。这将显示为一个保留的数量，以及它使用的数量。

    1. Total：下面区域的所有累计值。
    2. Unity:
        Unity本地代码中的内存分配量
        由本地内存管理器系统跟踪，并根据它们的类型、源和平台特定的分配模式在内存池中分配。
    3. Mono：
        托管代码使用的总堆大小和使用的堆大小。这个内存被垃圾回收。
    4. Gfx Driver：
        驱动程序在纹理、渲染目标、着色器和网格数据上使用的估计内存量。
    5. Audio：音频系统的估计内存使用量
    6. Video：视频系统的估计内存使用量
    7. Profiler：分析器使用的总内存
    8. 分析器还列出了一些最常见的Assets和游戏对象类型的内存统计信息。这些统计数据包括计数(在正斜杠之前)和使用的内存。在这个列表中，Total Object Count显示应用程序创建的本地游戏对象的总数。如果这个数字随着时间的推移而增加，你的应用程序将创建游戏对象，而不会销毁它们。

### Detail View
    可以使用详细视图获取应用程序当前状态的快照。单击Take Sample按钮以捕获当前目标的详细内存使用情况。分析器需要花费大量的时间来获取这些数据，因此详细视图不会提供实时的详细信息。Profiler获取样本后，Profiler窗口将显示一个树视图，可以在其中更详细地查看应用程序的内存使用情况。

    1. 开启“Gather Object references”设置将会手机关于在快照时引用对象的内容的信息，信息显示在窗口的右侧窗格中。

    2. 在树视图中，使用内存的对象分为以下几类：
        Other: Objects that are neither assets, GameObjects, or components. Information such as used memory Unity uses for different systems can be found here.
        Not Saved: Objects marked as DontSave
        Builtin Resources: Unity Editor resources or Unity default resources, such as Shaders you have added to the Always Included Shaders list of the Graphics settings.
        Assets: Assets referenced from user or native code
        SceneMemory: Objects and attached components

    Note: In the Other category, memory reported under System.ExecutableAndDlls is read-only memory. The operating system might discard these pages as needed and later reload them from the file system. This generates lower memory usage, and usually does not directly contribute to the operating system’s decision to close your application if it uses too much memory. Some of these pages might also be shared with other applications that are using the same frameworks.

### Rendering Profiler
    1. 渲染分析器显示渲染统计数据。
    2. 与Game创口的Static数据很相近。

### Video Profiler Module
    Video Profiler模块显示关于应用程序中视频使用的资源的信息，如内存、缓冲和视频剪辑的数量。可以使用它来确定应用程序在选定平台上回放和缓冲视频的效率。也可以使用CPU使用率分析器模块来评估Unity在视频上花费的时间。

    1. UI和UI Detail模块提供关于Unity花费多少时间和资源在应用程序中布局和呈现用户界面的信息。

    2. 可以使用这个模块理解Unity如何处理应用程序中的UI批处理，包括为什么以及如何批处理对象。

    3. 还可以使用此模块来查找UI的哪个部分导致了缓慢的性能，或者在清除时间轴时预览UI。

### Module Details Pane
    1. Object：应用程序在分析期间使用的UI画布列表。双击一行以突出显示场景中匹配的对象。
    2. Self Batch Count：Unity为canvas生成了多个个batches。
    3. Cumulative Batch Count：累积的Batch数目。Unity为Canves和所有它嵌套的Canvase生成了多少个Batches。
    4. Self Vertex Count：Canvas渲染了多少个顶点。
    5. Cumulative Batch Count：Canvas乐基渲染了多少个顶点。
    6. Batch Breaking Reason：
        为什么Unity割裂批处理batch。有些时候Unity可能无法将对象批处理在一起。常见原因如下：
        没有与Canvas共面。批处理需要对象的rect变换和Canvas共面。
        CanvasInjectionIndex：存在一个CanvasGroup组件，并强制执行一个新的批处理，比如在其他的组件上显示一个组合框的下拉列表。
        不同的材质实例，矩形裁剪，纹理或A8TexrtureUsage。其中Unity只能批量使用相同的材质，masking，纹理和纹理通道使用的对象。

    7. GameObjectCount：Batch中有多少个GameObject。
    8. GameObjects：批处理中的GameObject列表。当您从列表中选择一个UI对象时，它的预览将出现在窗格的右侧。在预览上方，工具栏中有以下选项：
    (1) Detach：选择此按钮可在单独的窗口中打开UI画布。要重新安装窗口，请关闭它。
    (2) Preview Background：使用下拉菜单改变预览背景的颜色。你可以从棋盘格、黑色或白色中选择。如果你的UI有一个特别亮或暗的配色方案，这是非常有用的。
    (3) 预览类型：使用下拉菜单从标准、透支或复合透支中进行选择

### Physics Profiler Module
    1.Active Dynamic：
    激活的非运动学刚体部件的数量。一个激活的刚体是不休眠的。

    2.Active Kinematic：
        激活的动力学刚体组件的的数量

        当在一帧中调用MovePosition或MoveRotation时，运动学刚体处于激活状态，并在下一帧中保持活动状态。

        Unity可能每帧处理具有joints的运动学刚体组件多次，这有助于值的呈现。

    3.Static Colliders：
        没有刚体组件附加到的GameObject或者它们的父GameObject的GameObject上面的Collider组件的数量。
        具有Rigidbody组件的GameObjects或parent GameObjects上的碰撞器组件不算作静态碰撞器。这些被称为复合碰撞器。
        复合碰撞器以一种方便的方式来安排一个物体的多个碰撞器，而不是将所有的碰撞器都放在与刚体组件相同的GameObject上。

    4.Rigidbody：
        由物理引擎处理的刚体组件的数量，与组件的休眠状态无关。

    5.Trigger Overlaps：
        重叠触发器的数量(成对计数)。

    6.Active Constraints：
        物理引擎处理的原始约束的数量。约束被用作关节和碰撞响应的构件。
        例如，限制一个可配置关节的线性或旋转自由度涉及到每个约束的基本约束。

    7.Contacts：
        场景中所有碰撞器之间的接触对的总数，包括触发重叠对的数量。
        触点是一对相互接触或重叠的碰撞体。
        当它们之间的距离低于某个用户可配置的限制时，Unity为每一对碰撞器创建接触对。因此，您可能会看到为刚体组件生成的接触，这些组件还没有接触或重叠。

    注意：剖析器中显示的数字可能与场景中包含物理组件的GameObjects的确切数量不一致。这是因为Unity以不同的速率处理一些物理组件，这取决于其他组件对它的影响(例如，一个附加的联合组件)。要计算带有特定物理组件的GameObjects的确切数量，必须使用FindObjectsOfType函数编写一个自定义脚本。物理分析器模块不显示睡眠刚体组件的数量。这些组件不参与物理引擎，因此不被分析器处理。

### 使用物理分析器来理解性能问题
物理模拟运行在从主逻辑更新循环的一个独立的固定评率更新周期，并只能通过Time.fixedDeltaTime每次调用来向前。这和Update和FixedUpdate之间的不同很相似。

### 2D Physics Profiler Module
    略