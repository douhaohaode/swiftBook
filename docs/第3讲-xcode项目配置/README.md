

##  Xcode配置 目录

> `PROJECT 与 TARGETS`
>
> `多环境配置开发 `
>
> `PROJECT的配置文件`
>
> `TARGETS的配置文件`
>
> `Xcode 其他设置`

## PROJECT 与 TARGETS

<img width = 550 src="第3讲-xcode项目配置/style/1.jpg">


> project就是一个项目，或者说工程，一个project可以对应多个target,其中一个target可以生成一个对应的product

> targets之间完全没有关系。但target和project有关系，target的setting会从project settings中继承一部分

> 针对整个Project的设置，分为Info和BuildSetting两个页签，其中有部分设置会被Target所继承或修改。注意：Project的Building Settings中已有的设置如果在Target中重新设置，那么Project的设置会被覆盖。

> 一个project 可以有很多target，target的编译设置可以不同，从而编译出不同的版本,根据项目需求有些时候会进行多环境，会创建多个target



## 多环境配置开发 

在做公司项目的时候，我们经常碰到多个开发环境的问题，比如内网环境，联调环境，外网环境等，这时候根据不同的环境，可能会设置不同的域名，，或者我们需要配置不同证书文件，但是每次切换起来比较麻烦。这时候，创建多个target，来达到切换环境的目的。

#####  1.创建新的Target
<img width = 750 src="第3讲-xcode项目配置/style/2.jpg">


#####  2.修改新的Target名称

<img width = 750 src="第3讲-xcode项目配置/style/3.jpg">


#####  3.选择ManageSchemes  修改对应的 scheme 
<img width = 750 src="第3讲-xcode项目配置/style/4.jpg">

<img width = 750 src="第3讲-xcode项目配置/style/7.jpg">


#####  4.修改项目目录的copy-info.plist文件名称 

<img width = 750 src="第3讲-xcode项目配置/style/5.jpg">


#####  5.选择 修改  Build Settings 下的 Packaging 的info.plist名称
<img width = 750 src="第3讲-xcode项目配置/style/6.jpg">


#####  6.选择 修改不同tagget中info.plist文件的key
<img width = 750 src="第3讲-xcode项目配置/style/8.jpg">


#####  7.验证不同环境下是否更换配置文

```java 

  let mainBundle = Bundle.main
        let identifier = mainBundle.bundleIdentifier
        let info = mainBundle.infoDictionary
        let bundleName = mainBundle.object(forInfoDictionaryKey: "CFBundleName")
        let verison = mainBundle.object(forInfoDictionaryKey: "CFBundleShortVersionString")
        let displayName = mainBundle.object(forInfoDictionaryKey: "CFBundleDisplayName")
        print("identifier:" + identifier!)
        print("bundleName: \(bundleName!)")
        print("displayName: \(displayName!)")
        print("verison: \(verison!)")
        print("info: \(info!)")

```


-  **[多环境配置开发](https://juejin.cn/post/6910117697317502983)** 



##  项目配置 PROJECT的配置文件

<img width = 750 src="第3讲-xcode项目配置/style/9.jpg">


####   Info
> Deployment Target  项目的minsdkversion(最低可运行的iOS版本)，Target内也有该设置并可以覆盖。
> Configurations  用来配置iOS项目的xcconfig文件，主要用于在几套不同的开发环境编译, xcconfig文件其实就是xcode里的config文件。
> Localizations    配置iOS的本地化功能。

#### BuildSettings

> 该页签下的所有设置都在Target中有，Project的BuildSettings页签设置只是给该Project下的Target提供默认设置，各选项在Target中介绍。

#### Package Depemdemcoes

> 三方库引用文件管理。



##  项目配置  TARGETS的配置文件
<img width = 750 src="第3讲-xcode项目配置/style/10.jpg">


>  General   ----通用选项 (标识,签名,部署,icon,添加库，二进制文件)


>   Signing & Capabilities  ---- Capabilities功能选项，设置对象支持的功能是对app进行一些权限和功能设置的开关，如推送通知、云存储、游戏中心、后台模式、地图、苹果账户登陆等等，这些开关和开发者证书是匹配的，调试证书无法打开这些开关。 Signing签名选项相关配置。


> Resource Tags  ----主要是为项目中的资源进行添加tag分类，方便控制资源的加载顺序和加载时机，一定程度实现lazyload。



>  info   ----自定义iOS目标属性,最重要的一项配置，该栏下的内容和工程目录下的Info.plist完全一致。 任何一处的修改 都会自动应用到所有地方，例如修改Bundle Diaplay Name键，会自动体现到Info.plist文件和General-Identity-DisplayName中。


>  BuildSettings  ----编译设置 (指令集,编译目录,编译选项,部署,链接,签名,内核模块,Headers,Packaging,versioning) 。BuildSetting下的很多选项也对应着其它地方的设置项，任何一处的修改都会自动应用到所有位置，如iOS Deployment Target对应着General中Deployment Target。


>  Build Phases   ----编译阶段 (依赖target,源代码文件,链接的库,拷贝的资源文件)
Target Dependencies
编译依赖关系，相当于该Target依赖的其它Target，这样执行构建之前会先构建其依赖的Target
Copy Bundle Resources
指定需要拷贝哪些文件作为资源打包进最后的输出文件(安装包)里
Copy Files
Compile Sources
编译所有的源文件.默认情况下,该编译列表会自动添加所有工程中的源文件，也可以在该选项中为任意源文件指定额外的编译参数Compiler Flags。
Link Binary With Libraries
编译之后链接静态库中的目标文件
Run Script
完成上述所有阶段后执行的后处理脚本

> Build Rule    ----编译规则 定义了对于某一个类型的文件，需要进行的特殊处理。比如，当需要对于.c文件用自定义的编译器编译时，那么就可以通过Build Rule来达到；如果一种文件类型需要转换成另一种文件类型，也可以使用Build Rule。Build Rule分位系统定义的Build Rule和自定义的Build Rule，自定义的Build Rule优先级总是大于系统定义的Build Rule。



-  **[配置文件来源连接](https://blog.csdn.net/aawoe/article/details/107758450)** 



## Xcode其他功能

##### Xcode拥有非常多的功能，也拥有非常多的设置，点击左上角的xcode->preference或者使用command+,即可进入设置


<img width = 750 src="第3讲-xcode项目配置/style/11.jpg">


### 1 General通用设置
Issues:定义Xcode处理问题的方式，show live issues显示当前问题，设置Xcode是否实时监测当前文件中存在的问题。continue building after errors出现错误后仍然继续编译，默认情况下，发生错误后，会停止编译。

locked files:默认情况下，Xcode会锁定用户正在编辑的文件，防止被其他工具修改，勾选后，会允许其他工具修改。

find navigator detail:搜索导航器细节，可以选择搜索到的项目可以占据多少行的显示空间。

issue navigator detail:问题导航器细节，可以选择当前问题占据多少行的显示空间。

dialog warnings:对话框警告，重置不要再询问我，让其再次弹出警告。

### 2 Accounts账户
用来管理苹果开发者账号以及Git相关的账户信息。


### 3 Behaviors行为
选项卡分为7部分，分别包括了编译、测试、运行、CUP帧捕获、搜索、自动集成、文件部分。
每个部分有各种阶段，包括开始、发现问题、成功、失败等阶段。对于每一阶段，我可以依次进行相关行为配置：


### 4 Navigation导航

配置了xcode导航区域的相关设置。

activation:当打开某个标签页或者窗口时，让其保持活动状态。

navigation:选择在使用导航区域的时候，是用的主编辑器primary还是辅助编focused辑器来打开新的导航文件

optional navigation:当使用optional键来进行导航的时候，是使用同一个助理编辑器打开，还是使用另一个助理编辑器打开，或者另一个标签页或另一个窗口。

double click navigation:双击导航时，使用另一个标签打开还是另一个窗口打开，或者让其和单击的操作相同。


### 5 Fonts & Colors字体和颜色

可以配置代码编辑器的样式。


### 6 Text Editing文本编辑 
 
 配置代码编辑器的行为


###  7 Key Bindings快捷键

配置xcode的快捷键。


### 8 Source Control 源代码管理
 源代码管理 

###  9 components组件

可以下载不同系统的模拟器SDK组件和参考文档


### 10 Locations位置

配置常用的路径

derived data:缓存文件路劲

archives:打包文件路径

command line tools:命令行工具，选择使用哪一个版本的命令行工具来执行程序

custom paths:定义一些路径的别名，方便使用。

