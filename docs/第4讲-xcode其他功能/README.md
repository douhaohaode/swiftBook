## Xcode其他功能

##### Xcode拥有非常多的功能，也拥有非常多的设置，点击左上角的xcode->preference或者使用command+,即可进入设置


<img width = 750 src="第4讲-xcode其他功能/style/1.jpg">


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


### 10 10 Locations位置

配置常用的路径

derived data:缓存文件路劲

archives:打包文件路径

command line tools:命令行工具，选择使用哪一个版本的命令行工具来执行程序

custom paths:定义一些路径的别名，方便使用。

