
## 前言

  我们前几章的内容讲述了Xcode相关工具的使用和项目文件配置内容，接下来的章节我们来学习UI相关知识。

##  UIKit 目录

> `UIKit简介`
>
> `UIKit中几个基本界面元素`
>
> `基础控件之 UILabel`
>
> `基础控件之 UIImageView`
>
> `基础控件之 UIButton`
>
> `基础控件之 UITextField`
>
> `加法计算功能`



## UIKit 简介

UIKit是苹果平台的必修框架，为iOS应用程序提供了所需的基础设施，学习使用UIKit可以开发功能齐全的应用程序。

>  具有广泛的API覆盖范围——在其框架中提供广泛的项目库，包括构建原生应用程序所需的核心对象、视图和控制控制器。

>  包括Interface Builder——您可以直观地设计复杂的视图及其关系。通过Interface Builder和Auto Layout，您可以确保您的用户界面在所有设备和方向上看起来和工作都很棒。

>  支持丰富的遗产——在iOS 13之前，开发人员在UIKit上构建了所有应用程序。如果您在iOS、watchOS或tvOS上维护或扩展传统应用程序，您将需要在UIKit中有一个良好的基础。

>  社区采用率很高——您可以访问许多UIKit文章和社区支持选项

>  可与SwiftUI互操作——您可以轻松集成UIKit和SwiftUI，并使用两个框架中最好的。

 
##  UIKit 中几个基本界面元素

### 1.UIWindow : 为应用程序的内容显示提供背景平台。

> 作用: 是应用程序用户界面的背景和将事件发送到视图（View)的对象。

> UIWindow对象不提供自己的可见内容。Window 的所有可见内容均由其在应用程序故事板中配置的根视图控制器提供

> 该Window的作用是接收来自UIKit的事件，并将任何相关事件转发到根视图控制器和相关视图。

 <img width = 450 src="第5讲-UIKit/style/1.jpg">


###  2.UIScreen : iOS设备需要有一个主屏幕和附加屏幕

> 同时管理应用程序用户界面的多个实例，并将资源定向到用户界面的适当实例。

> UIKit使用UIWindow对象管理应用程序UI的每个实例,Screen包含用于显示用户界面实例的窗口和视图控制器。

> 每个Screen还有一个相应的UIWindow对象，用于协调UIKit和应用程序之间的交互。

>场景并发运行，共享相同的内存和应用程序进程空间。因此，单个应用程序可能同时激活多个场景和场景委托对象。

 <img width = 450 src="第5讲-UIKit/style/4.jpg">

### 3.UIView：负责绝大部分的内容描述，并负责响应用户的交互。

> UIView 一般翻译叫做：视图\控件\组件

> 视图是应用程序用户界面的基本构建块，UIView类定义了所有视图通用的行为。

> 屏幕上能看得见摸得着的东西就是UIView

> 视图可以承载其他视图，将一个视图嵌入到另一个视图中时，会在主视图 (称为父视图) 和嵌入视图 (称为子视图) 之间创建一种包含关系。

> UIButton、UILabel、UITextField、UIControl都继承自UIView

<img width = 750 src="第5讲-UIKit/style/3.jpg">


## UIKit 常用组件预览

下面这张图展示的全部控件都属于UIKik框架，

<img width = 750 src="第5讲-UIKit/style/2.jpg">

## UIKit 常用组件与非常用组件

<img  src="第5讲-UIKit/style/5.jpg">


## 基础控件之 UILabel

<img src="第5讲-UIKit/style/6.jpg">

###  UILabel 常用属性
 
 ```java

//设置背景颜色
backgroundColor=UIColor.red; 

//设置文本字
text="test"  

//设置字体颜色
textColor=UIColor.red                         

//设置字体样式和大小
font=UIFont(name:"Zapfino",size:15)  

//设置字体居中
textAlignment= .center   

//文本多行显示
numberOfLines=0 

//设置阴影
shadowColor=UIColor.gray
shadowOffset=CGSize(width:1.5,height:1.5)   

//隐藏尾部并显示省略号
lineBreakMode= .byTruncatingTail   
//隐藏中间部分并显示省略号       
lineBreakMode= .byTruncatingMiddle  
//隐藏头部并显示省略号    
lineBreakMode= .byTruncatingHead  
//截去多余部分也不显示省略号     
lineBreakMode= .byClipping      
           
```
### 可以通过SDK或者文档查看控件其他可用属性
>  按住“command”键，然后点击要查询的控件，选择 "Jump to Definttion" 在iOS SDK中查看

>  按住“command”键，然后点击要查询的控件，选择 "Show Quick Help" 选择 Open in Developer Documentation 在苹果文档查看

>    在 https://developer.apple.com/documentation/uikit/uilabel/ 苹果开发这网站中查看 苹果文档


### 基本使用
#### 1、创建普通文本标签

```java
        let label = UILabel()
        label.text = "Hello,Xcode and Swift"
        label.font = UIFont(name: "Arial", size: 24);
        label.shadowColor = UIColor.lightGray
        label.shadowOffset = CGSize(width: 2, height: 2)
        label.textAlignment = NSTextAlignment.right
        label.textColor = UIColor.purple
        label.backgroundColor = UIColor.yellow
        label.frame = CGRect(x: 20, y: 20, width: 150, height: 40)
        self.view.addSubview(label)
```


#### 2、创建换行文本标签

```java
       let label = UILabel()
        label.frame = CGRect(x: 20, y: 80, width: 300, height: 200)
        label.text = "The methods in the UIContainerViewControllerProtectedMethods and the UIContainerViewControllerCallbackscategories typically should only be called by subclasses which are implementing new container view controllers. They may be overridden but must call super."
        let font = UIFont(name: "Arial", size: 11)
        label.font = font;
        label.textAlignment = NSTextAlignment.center
        // 设置标签文字的换行方式为：以空格为界，并保留正个单词
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        // 设置不限制行数
        label.numberOfLines = 0
        self.view.addSubview(label)
```


#### 3、创建自适应文字高度标签

> 自适应文字高度 方式1: 使用sizeThatFits方法求出一个CGSize 值, 取出其中的 height.

```java
       //  我们可以看出 设置了换行文字如果高度设置为40的话后面的文字是无法显示的
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.text = "The methods in the UIContainerViewControllerProtectedMethods and the UIContainerViewControllerCallbackscategories typically should only be called by subclasses which are implementing new container view controllers. They may be overridden but must call super."
        
        // label中已经设置了文字, 使用 sizeThatFits 方法求出一个 CGSize 值, 取出其中的 height.
        let size = label.sizeThatFits(CGSize(width: view.frame.size.width, height: CGFloat(MAXFLOAT)))
        label.frame = CGRect(x: 0, y: 100, width: 300, height: size.height)
        let font = UIFont(name: "Arial", size: 14)
        label.font = font
        label.backgroundColor = .red;
        view.addSubview(label)
```

> 自适应文字高度 方式2: 使用原声代码自动布局添加约束这种方式,代码太多不建议使用.可以使用IB提供的自动布局方式，或者使用第三方库提供的自动布局方式.

```java
 let label = UILabel()
        label.text = "The methods in the UIContainerViewControllerProtectedMethods and the UIContainerViewControllerCallbackscategories typically should only be called by subclasses which are implementing new container view controllers. They may be overridden but must call super."
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        let font = UIFont(name: "Arial", size: 14)
        label.font = font
        label.backgroundColor = .red;
        view.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        // @param item 指定需要添加约束的视图一
        // @param attribute 指定视图一需要约束的属性
        // @param relatedBy 指定视图一和视图二添加约束的关系
        // @param toItem 指定视图一依赖关系的视图二；可为nil
        // @param attribute 指定视图一所依赖的视图二的属性，若view2=nil，该属性设置 NSLayoutAttributeNotAnAttribute
        // @param multiplier 系数   情况一和二为亲测
        // constant 距离父类控件的间距
        let leftC = NSLayoutConstraint.init(item: label, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading,multiplier: 1, constant: 100) as NSLayoutConstraint
        let topC = NSLayoutConstraint.init(item: label, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 100) as NSLayoutConstraint
        let rightC = NSLayoutConstraint.init(item: label, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -100) as NSLayoutConstraint
        self.view.addConstraints([leftC,topC,rightC])
```


#### 4、创建自定义文样式

> 首先我们创建一个MyLable类继承自UILable，重写 override func draw(_ rect: CGRect) 方法

```java

    override func draw(_ rect: CGRect) {
        // 获取当前图形环境的上下文
        let context = UIGraphicsGetCurrentContext()
        // 设置在上下文中,文字的渲染模型为 描边模式
        context?.setTextDrawingMode(CGTextDrawingMode.stroke)
        // 设置文字描边的边框宽度为 2
        context?.setLineWidth(2)
        // 设置文字描边的顶点连接方式为圆角方式
        context?.setLineJoin(CGLineJoin.round)
        // 设置文字的表秒颜色为白色
        self.textColor = UIColor.white
        // 将文字描边信息，绘制在指定的区域内
        super.drawText(in: rect)
        // 设置在上下文中，文字渲染模式为填充
        context?.setTextDrawingMode(CGTextDrawingMode.fill)
        //创建个颜色
        let  textColor = UIColor.black
        self.textColor = textColor
        super.drawText(in: rect)
    }
```

> 在创建并设置相关属性，添加到当前视图控制器的View上。

```java
      let label = MyLabel()
      label.frame = CGRect(x: 120, y: 180, width: 240, height: 120)
      label.text = "Enter >"
      label.font = UIFont(name: "Georgia", size: 56)
      self.view.addSubview(label)
      self.view.backgroundColor = UIColor.purple
```


## 基础控件之 UIImageView

<img src="第5讲-UIKit/style/7.jpg">

###  UIImageView 常用属性 

```java
       // contentMode
       let targetImageView = UIImageView()
       
       // 缩放内容以填充视图大小(不变形)
       targetImageView.contentMode = .scaleAspectFill
       targetImageView.layer.masksToBounds = true
```

下面是 contentMode 属性各种类型设置后的差异

<img src="第5讲-UIKit/style/10.jpg">


### 基本使用
#### 1、在Assets中获取图片

```java
       let imageView1 = UIImageView()
        imageView1.frame = CGRect(x: 100, y: 20, width: 100, height: 100)
        imageView1.image = UIImage(named:"calculator")
        //图片显示填充样式1
        imageView1.backgroundColor = UIColor.red
        imageView1.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.addSubview(imageView1)
```


####  2、从文件目录中获取图片

```java

       let imageView2 = UIImageView()
        imageView2.frame = CGRect(x: 100, y: 130, width: 100, height: 100)
        let path = Bundle.main.path(forResource: "pic", ofType: "jpg")
        let newImage = UIImage(contentsOfFile: path!)
        imageView2.image = newImage
        //图片显示填充样式
        imageView2.backgroundColor = UIColor.red
        imageView2.contentMode = UIView.ContentMode.scaleAspectFit
        self.view.addSubview(imageView2)

```


#### 3、网络地址获取图片
```java
        let imageView3 = UIImageView()
        imageView3.frame = CGRect(x: 100, y: 250, width: 100, height: 100)
        let url = URL(string:"http://image.cnpp.cn/upload/images/20160905/09380421552_400x300.jpg")
        let data = try! Data(contentsOf: url!)
        let smallImage = UIImage(data: data)
        imageView3.image = smallImage
        //图片显示填充样式
        imageView3.contentMode = UIView.ContentMode.scaleToFill
        self.view.addSubview(imageView3)

```

#### 4、多张图片预览模式

```java
        let imageView4 = UIImageView()
        imageView4.frame = CGRect(x: 0, y: 100, width: 100, height: 300)
        let path1 = Bundle.main.path(forResource: "pic", ofType: "jpg")
        let newImage1 = UIImage(contentsOfFile: path1!)
        let path2 = Bundle.main.path(forResource: "9", ofType: "jpg")
        let newImage2 = UIImage(contentsOfFile: path2!)
        let path3 = Bundle.main.path(forResource: "8", ofType: "jpg")
        let newImage3 = UIImage(contentsOfFile: path3!)
        imageView4.animationImages = [newImage1!,newImage2!,newImage3!]
        //所有图片展示完一遍的总时长
        imageView4.animationDuration = 4
        self.view.addSubview(imageView4)   
        imageView4.startAnimating()
```


## 基础控件之 UIButton

<img src="第5讲-UIKit/style/11.jpg">

接下来将演示按钮控件的使用，按钮是用户界面中最常见的交互控件。


### 使用
#### 1、创建一个有背景的按钮
> 1、首先创建按钮

```java
 /// 1.创建控件
        let btn1 = UIButton(type: UIButton.ButtonType.roundedRect)
        /// 2.设置位置
        btn1.frame = CGRect(x: 130, y: 80, width: 140, height: 40)
        let image = UIImage(named: "button")
        /// 设置按钮背景颜色
        btn1.setBackgroundImage(image, for: UIControl.State.normal)
        btn1.setTitle("Tap Me", for: UIControl.State())
        /// 设置默认状态文字颜色
        btn1.setTitleColor(UIColor.white, for: UIControl.State.normal)
        /// 设置字体和文字大小
        btn1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        ///设置按钮点击
        btn1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControl.Event.touchUpInside)
        /// 添加
        self.view.addSubview(btn1)
```

> 2、实现按钮的对应方法

```java
    @objc func buttonTap(_ button:UIButton){
        /// 创建一个警告弹出窗口,按钮被点击时 弹出此窗口
        let alert = UIAlertController(title: "information", message: "UIButton Event.", preferredStyle: UIAlertController.Style.alert)
        /// 创建一个按钮，作为提示窗口中【确定】按钮。当用户点击该按钮时，将关闭提示窗口
        let OKAction  = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(OKAction)
        self.present(alert, animated: true, completion: nil)
    }

```
#### 1、创建一个圆角按钮
> 1、首先创建按钮
```java
  /// 创建一个圆角按钮
        let btn3 = UIButton(type: UIButton.ButtonType.roundedRect)
        /// 2.设置位置
        btn3.frame = CGRect(x: 80, y: 280, width: 140, height: 40)
        /// 3. 设置属性
        /// 背景颜色
        btn3.backgroundColor = UIColor.brown
        /// 设置按钮前景颜色为黄色
        btn3.tintColor = UIColor.white
        /// 按钮标题文字
        btn3.setTitle("Tap Me", for: UIControl.State())
        /// 按钮添加边框
        btn3.layer.masksToBounds = true
        /// 设置圆角半径为10
        btn3.layer.cornerRadius = 10
        /// 设置边框宽度
        btn3.layer.borderWidth = 4
        /// 设置边框颜色
        btn3.layer.borderColor = UIColor.lightGray.cgColor

        /// 4.绑定点击事件
        btn3.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControl.Event.touchUpInside)
        /// 5.添加到界面
        self.view.addSubview(btn3)
```

> 2、实现按钮的对应方法

```java
    @objc func buttonTap(_ button:UIButton){
        /// 创建一个警告弹出窗口,按钮被点击时 弹出此窗口
        let alert = UIAlertController(title: "information", message: "UIButton Event.", preferredStyle: UIAlertController.Style.alert)
        /// 创建一个按钮，作为提示窗口中【确定】按钮。当用户点击该按钮时，将关闭提示窗口
        let OKAction  = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(OKAction)
        self.present(alert, animated: true, completion: nil)
    }

```

## 基础控件之 UITextField

<img src="第5讲-UIKit/style/12.jpg">

### 常用属性 
#### 键盘属性

```java
  // 一般情况下，点击textfield控件后键盘会自动弹起，关闭键盘可以使用 resignResponder() 方法来要求系统关闭键盘
  resignFirstResponder()

```
#### 代理方法

>  1.使用UITextField代理方法需要先遵循代理。

```java
 class ViewController: UIViewController,UITextFieldDelegate {

 }
```

>  2.设置代理属性。  

```java
   textField.delegate = self
```

>  3.然后实现代理方法。

```java

// 在指定的文本字段中开始编辑时告诉委托。
 func textFieldDidBeginEditing(UITextField)

// 告诉委托在指定文本字段的编辑停止时。
func textFieldDidEndEditing(UITextField)

// 告诉委托在指定文本字段的编辑停止时。
func textFieldDidChangeSelection(UITextField)

```

### 基本使用 
#### 1.创建以及设置属性 
```java
       // 创建第一个输入框
       let input1  = UITextField()
        // 设置第一个输入框
        input1.frame = CGRect(x: 50, y: 200, width: 60, height: 50);
        // TextFiled 样式
        input1.borderStyle = .line
        // 设置文字居中
        input1.textAlignment = .center
        // 文字颜色
        input1.textColor = UIColor.white
        // 键盘类型
        input1.keyboardType = UIKeyboardType.numberPad
        view.addSubview(input1)

        // 使用完成收起键盘 input1.resignFirstResponder()
```

#### 2.设置代理实现代理方法 
```java
   class ViewController: UIViewController,UITextFieldDelegate { }
```

```java
       textField.delegate = self
```

```java
       // 实时监听输入内容
    func textFieldDidChangeSelection(_ textField: UITextField) {
      print(textField.text ?? "")
    }
```

## 计算机小功能

我们已经学习了几个基本的常用控件，接下来用这几个控件做一个“加法”计算的功能

如图:

<img width = 350 src="第5讲-UIKit/style/13.jpg">

### 编码之前考虑的事情

> 1.看到UI页面先分析页面的组成部分

> 2.UI应该都用什么控件，功能用什么方式，是否能实现

> 3.开始编码

### 1.声明当前控制器的全局控件

```java
    // 创建第一个输入框
    let input1  = UITextField()
    // 创建第一个输入框
    let input2 = UITextField()
    // 创建最后相加后显示在内的控件
    let valueLabel = UILabel()
```

### 2.设置背景图片

```java
        let image = UIImageView(image: UIImage(named: "calculator"))
        image.frame = view.frame
        view.addSubview(image)
```

### 3.添加其他控件

```java
 // 设置第一个输入框
        input1.frame = CGRect(x: 50, y: 200, width: 60, height: 50);
        // TextFiled 样式
        input1.borderStyle = .line
        // 设置文字居中
        input1.textAlignment = .center
        // 文字颜色
        input1.textColor = UIColor.white
        // 键盘类型
        input1.keyboardType = UIKeyboardType.numberPad
        view.addSubview(input1)
        
        // 创建和设置  " + "
        let label = UILabel()
        label.frame = CGRect(x: 120, y: 200, width: 20, height: 50)
        label.text = "+"
        label.textColor = UIColor.white
        // 文字水平方向显示位置
        label.textAlignment = .center
        view.addSubview(label)
        
        // 第二个输入框
        input2.frame = CGRect(x: 150, y: 200, width: 60, height: 50);
        input2.textAlignment = .center
        input2.borderStyle = .line
        input2.textColor = UIColor.white
        input2.keyboardType = UIKeyboardType.numberPad
        view.addSubview(input2)
        
        // 创建和设置 "="
        let label1 = UILabel()
        label1.frame = CGRect(x: 220, y: 200, width: 20, height: 50)
        label1.text = "="
        label1.font = UIFont.init(name: "", size: 17)
        label1.textColor = UIColor.white
        label1.textAlignment = .center
        view.addSubview(label1)
        
        // 设置 显示最后结果控件的属性
        valueLabel.frame = CGRect(x: 250, y: 200, width: 60, height: 50)
        valueLabel.textColor = UIColor.white
        view.addSubview(valueLabel)
        
        let button = UIButton(type: .custom)
        button.frame.origin = CGPoint(x: 200, y: 300)
        button.frame.size = CGSize(width: 80, height: 30)
        button.setTitle("计算" ,for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.purple
        // “_”是代表函数调用时，可以忽略参数名称。
        // 添加响应事件
        button.addTarget(self, action: #selector(add(_:)), for: .touchDown)
        view.addSubview(button)
```

### 4.实现点击事件，并且隐藏键盘
```java
   @objc func add(_ button:UIButton){
        //input1.text! UITextFlied中的 text 数据是一个可空属性
        let input1Value = Int(input1.text!) ?? 0
        let input2Value = Int(input2.text!) ?? 0
        valueLabel.text = String(input1Value + input2Value)
        input1.resignFirstResponder()
        input2.resignFirstResponder()
    }
```


## 基础控件之 UITextView
> [!WARNING|label:Important]
> Write `!WARNING|label:Important` in`[]`
>
> The same goes for `Danger`，`TIP`，`NOTE`，` label:xxx `Implement customization



## 基础控件之 UIDatePicker
> [!WARNING|label:Important]
> Write `!WARNING|label:Important` in`[]`
>
> The same goes for `Danger`，`TIP`，`NOTE`，` label:xxx `Implement customization


## 基础控件之 UISwitch
> [!WARNING|label:Important]
> Write `!WARNING|label:Important` in`[]`
>
> The same goes for `Danger`，`TIP`，`NOTE`，` label:xxx `Implement customization


## 基础控件之 UIPickerView
> [!WARNING|label:Important]
> Write `!WARNING|label:Important` in`[]`
>
> The same goes for `Danger`，`TIP`，`NOTE`，` label:xxx `Implement customization


## UIView 与 CALayer
> [!WARNING|label:Important]
> Write `!WARNING|label:Important` in`[]`
>
> The same goes for `Danger`，`TIP`，`NOTE`，` label:xxx `Implement customization


### 提交信息 画面功能
