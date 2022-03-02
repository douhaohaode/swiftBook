
## Xcode简介:

Xcode 是苹果官方提供的IDE，是由一套工具组成。使用 Xcode 可以管理整个开发工作流程，从创建 app 开始，到测试和优化 app，再到将它提交到 App Store。


### Xcode 支持平台:
Xcode能够开发苹果的各个平台的app（iOS、iPadOS、macOS、Apple tvOS 和 watchOS）。

### Xcode 版本：
Xcode版本 : 当前最新版本 Xcode13.x

<img src="第2讲-xcode基本使用/style/xcode1.jpg">


##  Xcode中的工具

> Simulator(模拟器): 
使用模拟器可以快速测试你的应用程序，同时模拟器提供不同设置和和不同操作系统版本的iPhone、iPad、Apple Watch和Apple TV环境。
> 
> ***模拟器更多帮助(https://help.apple.com/simulator/mac/current/)***
> 
>  Instruments:  Xcode 内置常用工具之一，可以做性能分析、代码追踪、检查内存泄露等。
>
> ***Instruments更多帮助(https://help.apple.com/instruments/mac/current/)***
> 
>Create ML :可以为app创建和训练自定义机器学习模型。
>
> ***Create ML更多帮助(https://developer.apple.com/documentation/createml)***
> 
>Reality Composer :  可以打造3D组合和增强现实 (AR) 体验。
>
> ***Reality Composer更多帮助(https://developer.apple.com/documentation/realitykit/creating_3d_content_with_reality_composer)***
> 


## 创建第一个应用程序

打开xcode会弹出欢迎页面

<img width= 750 src="第2讲-xcode基本使用/style/3.jpg">

> Create a new XcodeProject
>  创建新项目
> 
> Clone an existing Project
> 通过git仓库下载项目
> 
> Open a project or file
> 打开存在的项目或者文件
> 

## 模板选择器

<img width= 750 src="第2讲-xcode基本使用/style/4.jpg">

> 可以选择创建不同OS平台
> Xcode为所有苹果平台上不同类型的应用程序提供模板。这些模板包括基本源文件、配置文件和构建设置。

<img width= 300  src="第2讲-xcode基本使用/style/15.jpg">

> 可以选择创建苹果提供好的模版应用以及Framework&Library
> 

## 库介绍

>Framework&Library两者都是静态库 后缀为.framework和 .a两种形式；
>还有动态库有.dylib 和 .framework 形式，后来.dylib动态库又被苹果替换成.tbd的形式
>

## 静态库与动态库的区别

>静态库和动态库是相对编译期和运行期的：静态库在程序编译时会被链接到目标代码中，程序运行时将不再需要改静态库；而动态库在程序编译时并不会被链接到目标代码中，只是在程序运行时才被载入，因为在程序运行期间还需要动态库的存在。
>

## 创建新项目面板

#### Product Name 
> <img width= 750 src="第2讲-xcode基本使用/style/5.jpg">
>

#### Team 
> <img width= 750 src="第2讲-xcode基本使用/style/6.jpg">
>

#### Organization identifier 
> <img width= 750 src="第2讲-xcode基本使用/style/7.jpg">
>

#### Bundle identifier 
> <img width= 750 src="第2讲-xcode基本使用/style/8.jpg">
>

#### Interface
> <img width= 750 src="第2讲-xcode基本使用/style/9.jpg">
>

#### Language
> <img width= 750 src="第2讲-xcode基本使用/style/12.jpg">
>

#### CoreData
> <img width= 750 src="第2讲-xcode基本使用/style/10.jpg">
>

#### Include Tests 
> <img width= 750 src="第2讲-xcode基本使用/style/11.jpg">
>


##  创建应用程序步骤

> 1. 双击打开Xcode ”--->  然后在启动窗口中单击“Create a new  Xcode project” 

> 2. 在模板选择器中，选择iOS平台和应用程序模板，点击App 。

> 3. 输入对应的内容--->  点击“Next”

> 4. 选择创建项目的存储位置 ---->  点击“Create”

> 5. 在打开的工程中点击“运行按钮”

##### 至此第一个应用程序完成，Xcode会启动一个iOS模拟器来运行程序,程序的运行结果如右图所示，白白一片,后面我们得往这空白界面上增添各种各样的控件元素。

 <img width = 300 src="第2讲-xcode基本使用/style/13.jpg">


## simulator 模拟器

我们在编写完代码需要验证的时候，就可以使用模拟器来查看运行效果，并且可以通过对模拟器的各种操作，来查看我们写的代码是否是我们想看到的结果。有时候同一段代码在不同机型或者不同系统版本的环境下，可能表现不一样。 这个时候我们需要不同iOS系统版本和不同的机型来进行测试 ， 苹果设备有很多，有时候公司提供的测试机器无法满足测试，模拟器它提供了不同平台的环境，总之它是苹果内置的工具之一，用起来非常好用和方便。


> 打开方式 Xcode -> Open Developer Tool -> Simulator

<img width = 350 src="第2讲-xcode基本使用/style/17.jpg">


#### 与模拟器互动
操作模拟器与操作手机差不多，模拟器运行在MAC上，是使用鼠标和键盘来和模拟器进行交互，下先面介绍一下它的基本操作。
> 轻点   点击

> 轻点两下 双击 

> 按住   点击并按住 

> 双指拖动  按下Shift和Option键时单击并拖动。

> 双指捏、缩放或旋转  按下Option键时单击并拖动。

> 拖放   按住Control键并松开鼠标，锁定拖动项上的第一指，导航到掉落目标，然后单击拖动项将其移动到目标。

#### 快捷功能

左侧“手机iOS型号”，“对应手机系统” 右侧三个图标分别是 "回到Home" 、" 截图" 、"旋转手机

#### 模拟器的工具栏

##### File

<img width = 350 src="第2讲-xcode基本使用/style/31.jpg">

> New Simulator  新建模拟器

> Open Simulator  打开模拟器

> Save Screen    保存场景

> Record Screen  场景录像

> GPU Selection


##### Edit
<img width = 350 src="第2讲-xcode基本使用/style/32.jpg">

> Automatically Sync Pasteboard  自动同步粘贴板，允许模拟器与Mac机进行复制粘贴内容共享

> Copy Screen 将屏幕复制到剪贴板上


##### Device
<img width = 350 src="第2讲-xcode基本使用/style/33.jpg">

> Restart 重启模拟器

> Erase All content and Settings   清空设置重启模拟器
       
> Rotate Right 向右旋转模拟设备  
      
> Rotate Left 向左旋转模拟设备  
      
> Orientation submenu 设置设备的方向 

> Rotate Device Automatically.  自动旋转设备,勾号表示设备自动旋转已打开,应用程序需要特定方向时，自动旋转设备。   

> Shake 模拟摇晃设备

> Home 回到Home

> Lock 锁

> Siri 打开Siri

> App Switcher  应用切换器

> Triger Screenshor 模拟器中截图


##### I/O
<img width = 350 src="第2讲-xcode基本使用/style/34.jpg">

> input   允许模拟器控件中的input可以用MAC键盘输入

> Keyboard  控制键盘控件
   
    Use the Same Keyboard Language as macOS   使用与macOS相同的键盘语言 
   
    Connect Hardware Keyboard  将Mac键盘连接到模拟设备。
   
    Toggle Software Keyboard 当硬件键盘连接到设备时，显示或隐藏屏幕键盘。

> Touch Pressure 接触压力

> Audio Input  音频输入设备

> Audio Output 音频输出设备

> Increase Volume 声音调节 +  快捷键 “command” + “+”

> Decrease Volume 声音调节 -   快捷键 “command” + “-”

> External Displays 模拟外置显示器


##### Features 特征
<img width = 350 src="第2讲-xcode基本使用/style/35.jpg">

> Face ID    使用模拟器在支持身份验证的设备上测试部分生物识别身份验证流程。

        Matching Face   出现身份验证对话框后，进行选择匹配触摸或面部。
        
        Non Matching Face  出现身份验证对话框后，进行选择不匹配的触摸或面部。

> Authorize Apple Pay   使用模拟器在iOS和watchOS应用程序中测试Apple Pay的流程。

> Toggle Appearance  设置切换 暗黑模式 普通模式

> Toggle In - call Status Bar   通话状态栏设置 测试你的布局

> Increase Preferred Text Size  调节模拟器文字变大

> Decrease Preferred Text Size  调节模拟器文字变小

> Toggle Increased Contrast     增加颜色对比度

> Triger iCloud Sync    触发iCloud同步 使用模拟器测试数据是否在iCloud和模拟设备之间同步

> Location  使用模拟器设置静态位置或路线。您还可以将位置和路线从Mac发送到模拟器。

      Custrom Location  自定义位置

      Apple 将位置设置为库比蒂诺的Apple Infinite Loop校园 

      City Bicycle Ride  模拟用户在库比蒂诺骑自行车。路线重复，直到位置更改。

      City Run 模拟用户在库比蒂诺跑步。路线重复，直到位置更改。

      Freeway Drive 模拟用户从库比蒂诺开车到旧金山。路线重复，直到位置更改。



##### Debug
<img width = 350 src="第2讲-xcode基本使用/style/36.jpg">

> Slow Animations  放慢动画速度，并检查它们是否有性能、渲染、跳帧和其他问题。
 
> Graphics Quality Override   可将模拟器图形质量调至默认或低质量。在大容量UITableView等场景下模拟器开启此选项流畅效果是较为明显的。



###### Color 相关设置信息来帮助调整性能,为可能导致渲染、滚动性能和内存问题的图像和屏幕区域着色.

> Color Blended Layers   颜色混合层：
也就是像素混合情况，这种情况GPU需要做像素混合的计算，是增加了GPU的工作，会对帧率等指标造成较大的影响。如果出现这种情况它会进行绿到红的显示，越红表示性能越差。
一般情况下红色通常是由于多个半透明图层叠加引起。
 
> Color Copied Images   颜色复制图像 
苹果的GPU只解析32bit的颜色格式。 如果一张图片，颜色格式不是32bit，那么CPU会先进行颜色格式转换，再让GPU渲染, 把这样的图片标为蓝色。蓝色越多，性能越差。 

> Color Misaligned Images   颜色未对齐的图像：这个选项检查了图片是否被缩放，以及像素是否对齐边界（也就是非整型坐标）。 被放缩的图片会被标记为黄色，像素不对齐则会标注为紫色。黄色、紫色越多，性能越差。

> Color Off-screen Rendered  颜色离屏渲染：GPU在当前屏幕缓冲区以外新开辟一个缓冲区进行渲染操作，会耗性能，这个时候会用黄色覆盖。

> Open System Log  打开系统日志，在控制台应用程序中打开模拟设备的系统日志。使用系统日志查找应用程序的错误、警告和其他问题。

> Simulate Memory Warning  模拟内存警告  系统会向您的应用程序发送任何低内存警告消息和通知。调用方法 didReceiveMemoryWarining()

> Show Parallel Testing Devices  显示并行测试设备


##### Window
<img width = 350 src="第2讲-xcode基本使用/style/37.jpg">

>  模拟器更改窗口的大小相关设置


## 命令行访问模拟器

可以使用 simctl 工具从命令行控制模拟器，simctl是模拟器和控制这两个词的组合。这是一个帮助提高生产力的绝佳工具。

比如使用simctl等命令行工具来帮助我们在开发环境中模拟推送通知。

首先创建一个 .json 文件, 文件内容包含：

```java
{
  "Simulator Target Bundle": "com.ovs.PPXibTableView",
  "aps": {
       "alert": {
           "title": "Push Notification",
           "subtitle": "New fruit smoothies are available",
           "body": "We know you'll love these delicious concoctions 🥰"
       }
   }
}
```

如果只开启一个模拟器的话，只需要替换对应的 bundleId替换，之后打开终端实现命令

```java

   xcrun simctl push booted （payload.json的文件路径）
  //  在json文件没有指定bundleId的情况下
  //  xcrun simctl push booted com.example.MyApp （payload.json的文件路径）

```
 /*注释*/ xcrun:command-line tool runner 命令行工具运行器


这里就是对模拟器的介绍， 前期不需要大家全部都会使用，但是大家尽量记住，模拟器能够模拟的功能，等以后慢慢熟悉，在用模拟器测试的时候，能够知道在什么地方设置就可以了。 下面连接是苹果模拟器文档与视频，有更多的详细的介绍:

####  差异
其实模拟器是一个在Mac上运行的应用程序，可以访问计算机的资源，包括CPU、内存和网络连接，
但是与真是设备还是有差异的，下面是它在硬件上的差异。

##### 硬件差异
不支持以下功能

1、环境光传感器  感应周边环境光线的强弱

2、音频输入，但通过选取“硬件”>“Siri”来使用 Siri 除外。

3、气压计  大气压，海拔测量

4、蓝牙

5、相机

6、运动支持（加速度计和陀螺仪） 感应设备的运动（摇一摇、计步器）感应设备的持握方式（赛车类游戏）

7、距离感应器 感应是否有其他物体靠近设备屏幕

 ***模拟器与真机差异(https://help.apple.com/simulator/mac/current/#/devb0244142d)***

 ***模拟器使用文档(https://help.apple.com/simulator/mac/current/)***

 ***模拟器视频讲解 成为模拟器专家(https://developer.apple.com/videos/play/wwdc2020/10647/)***

***模拟器视频讲解 充分利用模拟器 (https://developer.apple.com/videos/play/wwdc2019/418/)***

## Instruments 
  Instruments是一款强大的性能分析和测试工具，Xcode内置常用工具之一。Instruments可以帮助开发者在所有平台上（iOS、macOS、watchOS、tvOS）上分析应用程序，以便更好地了解和优化其行为和性能。

> 打开方式 Xcode -> Open Developer Tool -> Instruments


<img width = 650 src="第2讲-xcode基本使用/style/18.jpg">

#### Animation Hitches 动画故障(卡顿)

 Animation Hitches 是 Instrument 中的功能，可以在app中捕获并鉴别渲染卡顿, 我们在讲解它之前，需要先简单了解一下卡顿以及卡顿是如何产生的.

#### 卡顿的说明

`用户在使用App时候可能会轻点按钮、滑动或在层级视图结构中进行跳转，比如：点击动画(Animation)、滚动动画(Scroll)、转场动画(Transition)这些动画构建了一种用户和屏幕内容的视觉连接感，但是动画如果卡顿，会导致动画画面跳跃，打破这种连接感，使用户体验变得不好。`

#### 卡顿现象 

<img width= 750 src="第2讲-xcode基本使用/style/animaiton8.jpg">

 > 这张图可以看出 frame1和frame2是正常帧，但第三帧重复了，这个时候app不会随着你的手指移动，当四帧来的时候，列表会突然大跳回到你的手指 ，这样用户就看到了卡顿。


#### VSYNC

<img width= 550 src="第2讲-xcode基本使用/style/animation6.jpg">

  > iPhone，iPad 每秒60HZ，帧节奏16.67 ms。 意味着每 16.67毫秒，就可以显示一个新帧。
   
  > iPad Pro 每秒120HZ，帧节奏 8.67 ms。  意味着每 8.67毫秒，就可以显示一个新帧。

######  这种帧节奏我们用VSYNC来表示，当帧错过预期的（VSYNC）卡顿会出现。

 这个图表示第四帧超过了预期的VSYNC 16.67 ms

<img width= 750 src="第2讲-xcode基本使用/style/animaiton7.jpg">


#### 什么情况下会超过了预期的VSYNC？

 那我们需要知道iOS是使用RenderLoop（渲染循环）来显示视图。
 
 上面我们说过，`当帧错过预期的（VSYNC）卡顿会出现。`  也可以理解为  `在RenderLoop（渲染循环）中没能在VSYNC内完成一个帧以进行显示的时，卡顿会出现。`


#### RenderLoop（渲染循环）

> 渲染循环是一个连续的过程，通过用户手势等将事件传给 App，接着 App 向操作系统传递事件并最终响应事件，再将响应传递给用户的过程。


##### 渲染循环中每一帧的的表示，可以总体分为三个阶段, App、RenderServer 和 Display。

 <img width= 750 src="第2讲-xcode基本使用/style/animation1.jpg">

  > App 中主要进行一些用户事件的处理，造成用户界面的变化,这项工作必须在下一个 VSYNC 之前完成, 这样RenderServer阶段就能正常开始了

  > RenderServer 这个阶段用户界面才真正被渲染,这项工作也必须在下一个 VSYNC之前完成,这样一帧就能显示出来了。

  > Display 的过程实际上就是将缓冲的帧的内容交换到显示器上进行最终显示。
 
###### App与RenderServer 两个阶段都需要在下一个 VSNYC 到来前完成 ，如果没有卡顿会出现。


<img width= 750 src="第2讲-xcode基本使用/style/animation2.jpg">

####  iOS 将 卡顿分为两种: 提交卡顿 、渲染卡顿, 它们分别发生在 app 与 RenderServer中.

####  提交卡顿

  >  其中提交卡顿发生在App中,花费过长时间来处理或提交事件是可能会造成卡顿。

  >  App 分四个阶段 布局阶段(Layout)、显示阶段(Display)、筹备阶段(Prepare) 、提交阶段(Commit)
      
      1.布局阶段 Layout，将为每个需要布局的视图调用 layoutSubviews。通过更改视图位置、添加或删除视图,调用setNeedsLayout。
      
      2.显示阶段 Display，每个需要显示的视图都将调用drawRect。也可以通过重写drawRect视图层级结构来添加视图或setNeedsDisplay来指示需要显示 。

      3.筹备阶段 Prepare，  如果有还没有解码的图像，将会在这一步进行解码 。若某个图像的颜色格式图形处理器无法直接使用，将会进行转换，这样会消耗很多的内存。
      
      4.提交阶段 Commit，视图层次结构将被递归打包,并发送到渲染服务器

`至此 app提交阶段完成,过长时间来处理或提交事件是可能会造成卡顿,产生的卡顿叫做 提交卡顿`
        
      
#### 渲染卡顿

 > 渲染卡顿 发生在 RenderServer(渲染服务器)中 执行阶段 的离屏渲染, 离屏渲染会降低渲染速度 ，少量的渲染通道不会受太大印象,过多的渲染通道则会导致卡顿 。

 > 渲染卡顿 它有两个阶段渲染准备和渲染执行阶段,一般发生在离屏渲染渲染执行阶段

#### 什么是离屏渲染

 > 离屏渲染通道指的是 GPU 必须先在其它地方开辟一块内存进行图层渲染，然后再将离屏纹理复制回最终纹理.


####  离屏渲染举例

<img width= 750 src="第2讲-xcode基本使用/style/annimation11.jpg">

 
 > 这是一张带阴影效果的视图,在圆形和长条周围都有阴影,下面我们来讲解它的渲染过程以及离屏渲染如何产生的.



<img width= 750 src="第2讲-xcode基本使用/style/annimation12.jpg">


 > 我们从 app 提交到渲染服务器的图层树开始,渲染服务器会逐层编译一系列绘图命令,使图形处理器能从后向前绘制用户界面,
从根节点开始,渲染服务器从同级到同级,从父级到子级,直到涵盖层级中的每个图层.
最终,它有了GPU(图形处理器)可以在下一个执行阶段执行的整个管线,GPU (图形处理器)的工作是利用该管线,将每一步都绘制成中间的最终纹理.


<img width= 750 src="第2讲-xcode基本使用/style/annimation13.jpg">


  >  在显示阶段,会在屏幕上显示该纹理,从第一个蓝色的图层开始,它在指定的边界内绘制颜色,接下来较深的蓝色被绘制在其边界内,然后我们继续绘制下一个图层.

  > 这个时候图形处理器必须绘制阴影,阴影的形状由后面的两个层定义,因此图形处理器不知道,用什么形状来绘制阴影.
    如果我们先绘制圆形和长条,那么阴影会用黑色遮挡它们,看起来会不正确.这意味着图形处理器遇到了障碍,要继续它必须切换到不同的纹理以确定阴影的形状. 我们称之为“离屏渲染” 因为我们在最终纹理以外绘制,从这里它可以绘制圆形和长条,现在它将阴影形状隔离在离屏纹理内,通过先将图层变成黑色,然后将其模糊,它具备了绘制阴影形状所需的所有条件.然后 它可以将那个离屏纹理复制到最终纹理中,阴影图层就完成了.


#### 四种可优化的离屏渲染情况

  <img width= 750 src="第2讲-xcode基本使用/style/animation3.jpg">

  > 1. 阴影

  > 2. 图层蒙版 CALayer 有个属性 mask。 本身是个CALayer 类型，有和其他图层一样绘制和布局属性,类似于一个子图层，相对于父图层布局,mask 定义了父图层的部分可见区域。

 
  > 3. 圆角矩形

  
  > 4. 视觉效果 比如使用 UIBlurEffectView 控件用以支持模糊化和鲜亮化

#### 我们至此知道了卡顿的产生，和卡顿类型,接下我们来用 Animation Hitches 找出卡顿,但之前我们还要知道它是通过来什么指标鉴别卡顿.
 
>  在iOS之前是通过FPS （Frames Per Second）屏幕刷新率,也就是帧率鉴别卡顿 ,比如苹果的iPhone推荐的刷新率是60Hz，也就是说GPU每秒钟刷新屏幕60次,一般当低于45的时候卡顿会比较明显。 

>  但是现在 iPhone13 Pro(Max) 及 iPadPro 最高支持 可达到 120 帧 ，或在特殊场景中会设置刷新帧率，或没有刷新屏幕,所以每秒帧数看起来是一个不够准确的目标。 所以苹果推出了一个可比性强的指标 ->卡顿时间比(Hitch Time Ratio) 的概念用于替代 FPS。

    卡顿时间比率 =  总卡顿时间 / 持续时间


> 也就是当卡顿时间比(Hitch Time Ratio)达到一定的指标的情况下,卡顿将会出现.

<img width= 750 src="第2讲-xcode基本使用/style/animation9.jpg">

> 在Apple的官方建议中，使用卡顿时间比来衡量卡顿的严重等级的。

    1. 5毫秒每秒以下的卡顿 -> 不易被用户察觉到的

    2. 在5到10毫秒每秒的卡顿之间->用户就会察觉到一些中断

    3. 超过 10 毫秒每秒的卡顿 -> 这些卡顿就会严重影响用户体验 ,你应该立即研究如何优化渲染循环

#### 我们知道了这个衡量单位,下面我们开始使用 Animation Hitches


##### 1.打开instruments中Animation Hitches后,我们选择对应的设备以及要测试的应用程序,开始运行.

<img width= 750 src="第2讲-xcode基本使用/style/animation14.jpg">


##### 2.选择 Hitches 后 我们可以在下面看到各种参数,有了这些参数进行参考我们就知道了是否应该优化

   1. Hitch Duration      卡顿连续时间

   2. Acceptable latency  可接受的卡顿时间

   3. Severity    卡顿等级

   4. Hitch Type   卡顿类型

<img width= 750 src="第2讲-xcode基本使用/style/animation15.jpg">

##### 3.找到具体代码 instruments 中的 time profiler, 通过time profiler,我们找到App的主线程调用栈，查看其使用的时间占比

<img width= 750 src="第2讲-xcode基本使用/style/animation16.jpg">


##### 4. setStakVieww存在大量的耗时操作，在 提交阶段产生了延时，导致卡顿。可以使用此方法，依次查看每处卡顿的函数调用栈，来分析提交阶段的卡顿。

<img width= 750 src="第2讲-xcode基本使用/style/animation17.jpg">


#### 下面是避免和处理卡顿的方案

##### 提交卡顿方案:

第一原则   保持视图的轻量:

 >1. 尽可能地利用CALayer 上 GPU 加速的可用属性 .

 >2. 若非必要情况下不要重写 drawRect ，因为其会开辟额外的内存空间进行 CPU 绘制，并且在 CPU 上绘制会耗费更多的时间主线程。
  
 >3. 尽量复用视图,避免使用代价过高的视图层级结构操作(频繁的添加或移除视图) 如果不用尽量使用 hidden 属性。

第二原则  避免复杂布局:

 >1. 减少代价过高且重复的布局，在需要更新布局时尽量只使用 setNeedsLayout , layoutIfNeeded 会消耗当前事务的生命周期也会造成卡顿

 >2. 尝试使用最少的约束来完成布局。


 >3. 视图应该只能使自己或自己的子视图无效，而不能使其同级视图或父视图无效，避免递归布局

##### 渲染卡顿方案优化

处理渲染卡顿是对离屏渲染几种可优化的场景进行优化.

>1. 图层使用的是动态阴影 渲染的代价很高 如果可能的话 尝试设置 shadowPath 或将阴影预渲染到图像中 并将其置于图层下方
  
```java
      view.layer.shadowColor = UIColor.black.cgColor
      view.layer.shadowOpacity = 0.5
      view.layer.shadowPath = UIBezierPath(roundedRect: titleLabel.layer.bounds,
                                                 cornerRadius: titleLabel.layer.cornerRadius).cgPath
```

> 2.图层蒙版

masksToBounds 需要创建一个离屏通道 以确保视图被正确剪裁,如果已经确保子层无法超出 标签视图的边界 因此实际上我们根本不需要遮蔽 就可以删除这个 masksToBounds 调用 

```java
   image.layer.cornerRadius = 22
    // 设置图像视图的遮罩覆盖属性，进行边界裁切
   // image.layer.masksToBounds = true
  ```      

> 3.圆角

    1，在iOS13之后，可以使用系统的ApIcornerRadius和cornerCurve。

     ```java
       view.layer.cornerRadius = 22 
       view.layer.cornerCurve = .continous
     ```
    2，对于UILabel和UIButton，可以直接使用 cornerRadius。

     ```java
       label.layer.cornerRadius = 22
     ```
##### 渲染卡顿方案优化总结

 始终使用所提供的 API 在设置阴影时 确保设置 shadowPath 以减少大量离屏通道 在圆化矩形时 使用 cornerRadius 和 cornerCurve 属性 避免用蒙版或角内容来构成圆角矩形形状 这些会导致不必要的离屏,对于大多数图层 只需将图层边界舍入到其 cornerRadius 以创建 UIBezierPath 即可创建一个很棒的 shadowPath.
 第二步是优化整个 app 的遮蔽 使用 masksToBounds 遮蔽为矩形 圆角矩形或椭圆形 它的性能比自定义蒙版图层好得多 总之 确保遮蔽是必需的 如果子树中的内容不会超出边界 则完全禁用 masksToBounds.


####  Instruments-Leaks   

> 程序中已动态分配的堆内存由于某种原因程序未释放或无法释放，造成系统内存的浪费，导致程序运行速度减慢甚至系统崩溃等严重后果

> Leaks 可以动态分析内存泄漏，查看内存泄漏代码

> Xcode - product - Analyze  静态分析 能够在编码阶段，开发自行进行代码检查。早期发现代码隐患，但是静态分析有些时候不够准确

####  Instruments-Zombies  

> 已经被销毁的对象(不能再使用的对象)调用了不存在的对象

> Zombies 可以帮助检测僵尸,下面是几种僵尸对象产生

     对象已经销毁（或自动销毁），您的应用程序再次尝试销毁它。   
   
     对象本应保留时没有保留。
   
     其他一些调用是在对象销毁后对其进行的。

***Instruments 官方文档(https://help.apple.com/instruments/mac/current/)***

***Instruments 中文指南(https://pan.baidu.com/s/1y0mSYbPS2u8EKRIzzfEUvQ)***






## 项目文件介绍

<img width width= 750 src="第2讲-xcode基本使用/style/16.jpg">

 > 1.iOS13之后，Appdelegate的职责更改为 :

        1、处理 App 生命周期
 
        2、处理 新的 Scene Session 生命周期
 
        3、UISceneSession 对象管理场景的唯一运行时实例。 当用户向您的应用程序添加一个
        新场景时，或者当您以编程方式请求一个新场景时，系统会创建一个会话对象来跟踪该场
        景。 会话包含唯一标识符和场景的配置详细信息。UIKit 在场景本身的生命周期内维护会
        话信息，销毁会话以响应用户在应用切换器中关闭场景。

> 2.SceneDelegate.swift Scene Delegate处理UI的生命周期，也就是负责屏幕上显示的内容。

> 3.ViewController.swift:  （新建项目默认）在模版应用里加载的第一个视图对应的视图控制器，逻辑代码写在这里
> 
> 4.Main:  故事板可以使所有的视图控制器，以及它们之间的关系一目了然。故事板也是适配多个分辨率设备的利器。
> 
> 5.Assets.xcassets: 可以方便您集中管理项目中的图片、颜色、符号和数据。并且在读取图片时，不需要加上图片名的后缀。
> 
> 6.LaunchScreen: 启动场景故事版，可以设计和适配程序的启动页 
> 
> 7.info.plist:  每个程序都会使用信息属性列表文件,存储项目配置信息。例如程序的版本号、显示用的图标支持的设备方向等等。
> 
> 8.xxxTests: 性能测试
> 
> 9.xxxUITests: UI自动化测试
> 
> 10.带有数据库图表 Demo: CoreData
>


## AppDelegate 与  SceneDelegate

 1.AppDelegate.swift iOS13之前，Appdelegate的职责全权处理App生命周期和UI生命周期，并没有Scene Delegate；
 
 2.iOS13之前，Appdelegate App生命周期和UI生命周期，并没有Scene Delegate；


## iOS13以前APP具体的生命周期 

1.点击应用程序图标

2.程序入口：进入Main函数

3.通过UIApplicationMain函数

4.初始化UIApplication对象并且设置代理对象AppDelegate

5.程序完成加载：AppDelegate application:didFinishLaunchingWithOptions

6.创建Window窗口：UIWindow

7.程序被激活：AppDelegate applicationDidBecomeActive:

8.点击Home键

  （1）程序取消激活状态：AppDelegate applicationWillResignActive:

  （2）程序进入后台：AppDelegate applicationDidEnterBackground:
  
9.点击应用图标

  （1）程序进入前台：AppDelegate applicationWillEnterForeground:
  
  （2）程序被激活：AppDelegate applicationDidBecomeActive:

10.内存警告：AppDelegate applicationDidReceiveMemoryWarning

11.将要终止：AppDelegate applicationWillTerminate

### iOS13以前相关代理方法

```java
 
  // 启动过程快完成了，应用程序可以运行。
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true   
    }    
    //应用程序即将被挂起时执行
    func applicationWillResignActive(_ application: UIApplication) {
        print("app即将被挂起")
    }
    
    //应用程序已经被激活 时执行
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("app已经被激活")
    }
    
    //程序进入后台的执行
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("app已经进入后台")
    }
    
    //应用程序即将回到前台
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("app即将回到前台")
    }

    //当程序将要退出是被调用，一般用来数据的保存和退出前的整理工作
    func applicationWillTerminate(_ application: UIApplication) {
        print("app即将被杀死")
    }
```

#### 运行顺序

```java
//首次运行：
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: 
func applicationDidBecomeActive(_ application: UIApplication) 

//首次关闭（home）：
func applicationWillResignActive(_ application: UIApplication)
func applicationDidEnterBackground(_ application: UIApplication)

//再次运行：
  func applicationWillEnterForeground(_ application: UIApplication) 
  func applicationDidBecomeActive(_ application: UIApplication)

//再次关闭：
func applicationWillResignActive(_ application: UIApplication)
func applicationDidEnterBackground(_ application: UIApplication)
```


###  iOS13之后， 苹果多出一个 SceneDelegate 概念，具体生命周期：

1. 点击应用程序图标
2. 程序入口：进入Main函数
3. 通过UIApplicationMain函数
4. 初始化UIApplication对象并且设置代理对象AppDelegate
5. 程序完成加载：AppDelegate application:didFinishLaunchingWithOptions
6. 进入场景对象调用：SceneDelegate scene:willConnectToSession 
7. 程序将要进入场景：SceneDelegate sceneWillEnterForeground:
8. 场景已经激活：SceneDelegate sceneDidBecomeActive:
9. 点击Home键：

  （1）取消场景激活状态：SceneDelegate sceneWillResignActive:

  （2）程序进入后台：SceneDelegate sceneDidEnterBackground:

10. 点击应用程序图标

  （1）程序将要进入前台：SceneDelegate sceneWillEnterForeground:

  （2）程序已经被激活：SceneDelegate sceneDidBecomeActive:

11. 进入程序选择界面：SceneDelegate sceneWillResignActive:
12. 程序被杀死：SceneDelegate sceneDidDisconnect:



#### 1.iOS13  AppDelegate 的代理方法

```java

    // 启动过程快完成了，应用程序几乎可以运行。
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

   // 检索UIKit在创建新场景时使用的配置数据。
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role) }

    // 用户从应用程序切换器关闭了应用程序的一个或多个场景。
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {}

```

#### 2.iOS13  SceneDelegate 的代理方法

#####  1. SceneDelegate连接和断开场景

``` java
func scene(UIScene, willConnectTo: UISceneSession, options: UIScene.ConnectionOptions)
//在应用程序中添加场景。

func sceneDidDisconnect(UIScene)
//UIKit从您的应用程序中删除了场景。

class UIScene.ConnectionOptions
//一个数据对象，包含有关UIKit创建场景的原因的信息。

```

#####  2. SceneDelegate 向前台过渡

```java
func sceneWillEnterForeground(UIScene)
//场景即将开始在前景中运行，并成为用户可见的场景。

func sceneDidBecomeActive(UIScene)
//场景已激活，现在正在响应用户事件。

```
#####  3. SceneDelegate 向后台过渡

```java
func sceneWillResignActive(UIScene)
//场景即将退出活动状态并停止响应用户事件。

func sceneDidEnterBackground(UIScene)
//场景正在后台运行，不再出现在屏幕上。

```

***SceneDelegate 苹果官方连接(https://developer.apple.com/documentation/uikit/uiscenedelegate/)***



## 添加一张图片

首先将图片拖入到Assets文件中

<img width  = 750 src="第2讲-xcode基本使用/style/22.jpg">

然后项目目录 中找到 ViewController文件，在viewDidLoad()方法添加如下代码，再运行

```java 
        let image = UIImage(named:"image")
        let imageView = UIImageView(image:image)
        imageView.frame = CGRect(x:35 ,y:80, width:320, height:600)
        view.addSubview(imageView)
```

## 设置启动图 

项目目录 中找到 LaunchScreen.storyboard 选中并且设置Background选项

 <img width = 750 src="第2讲-xcode基本使用/style/20.jpg">


## 设置应用程序图标

  工程中找到“Assets.xcassets”文件 ---> 点击“AppIcon”--->  根据尺寸拖入到对应位置

<img width  = 750 src="第2讲-xcode基本使用/style/21.jpg">

## iOS开发 @1X @2X @3X 理解

<img width  = 900 src="第2讲-xcode基本使用/style/23.jpg">

以上我们启动运行项目，启动成功后，我们第一个项目就完成了.


## 导航图表面板

 <img width = 750 src="第2讲-xcode基本使用/style/24.jpg">

## 调试面板详解

#### CPU

<img width = 750 src="第2讲-xcode基本使用/style/26.jpg">

#### Memory

<img width = 750 src="第2讲-xcode基本使用/style/27.jpg">

#### Disk

<img width = 750 src="第2讲-xcode基本使用/style/28.jpg">

#### Network

<img width = 750 src="第2讲-xcode基本使用/style/29.jpg">


***诊断和解决正在运行的应用程序中的错误(https://developer.apple.com/documentation/xcode/diagnosing-and-resolving-bugs-in-your-running-app/)***



##  调试区域导航栏

<img src="第2讲-xcode基本使用/style/30.jpg">

##  LLDB调试 

LLDB (Lower Level Debugger)调试器是内置于 Xcode 的开源、轻量级的高性能调试器
LLDB 是新一代高性能调试器，熟练使用LLDB命令，可以大幅度提高您的开发和调试效率

命令： p  /// 可以查看变量的类型继承关系 、约束、动画、手势、 内存引用数量等更多细节内容

命令： po   /// 可以查看视图的结构信息( 比如 :视图位置 尺寸 透明度 交互属性和图层信息) 

命令:  expr   /// 全称expression，可以在调试时动态修改变量的值，同时打印出结果。使用expr命令动态修改变量的值，可以在调试的时候覆盖一些异常路径，对调试异常处理的代码很有用。

命令:  call  /// 命令用来动态调用函数，可以在不增加代码不重新编译的情况下动态调用一个方法。


 命令: bt  /// 命令可以查看线程的堆栈信息，该信息也可以在导航区的Debug Navigator看到.

> ***其他LLDB相关命令(https://juejin.cn/post/6844903523830726669)***
