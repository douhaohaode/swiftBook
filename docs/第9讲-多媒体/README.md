##  多媒体学习目录

> `音频播放`
>
> `音频录制`
>
> `视频播放`
>
> `视频录制`
>
> `SenceKit`
>
> `ARKit`
>

## iOS 音频输入和输出

<img src="第9讲-多媒体/style/audio1.jpg">

## AVFAudio

> 播放、录制和处理音频；配置应用程序的系统音频行为。
> 可用性 iOS 14.5+

## 系统音频

```python
   class AVAudioSession
```
>   一个对象，用于向系统通信您打算如何在应用程序中使用音频。

###  AVAudioSession的作用

> 设置自己的APP是否和其他APP音频同时存在，还是中断其他APP声音
>
> 在手机调到静音模式下，自己的APP音频是否可以播放出声音
>
> 电话或者其他APP中断自己APP的音频的事件处理
>
> 指定音频输入和输出的设备（比如是听筒输出声音，还是扬声器输出声音）
>
> 是否支持录音，录音同时是否支持音频播放
>

## 相关代码

```java
     let audioSession = AVAudioSession.sharedInstance()
        do{
            try audioSession.setCategory(.playback, mode: .moviePlayback, policy: .default , options: [])
        }catch{
            print("Failed to set audio session category.")
        }
```
### category 说明

音频会话类别是识别应用程序一组音频行为的密钥。通过设置类别，您可以向系统指示音频意图——例如，当翻转铃声开关时，音频是否应该继续。 

<img src="第9讲-多媒体/style/audio2.jpg">

### mode 说明
当类别(category)为您的应用程序设置基本行为时，您可以使用模式为音频会话类别分配专门行为。

<img height =450 src="第9讲-多媒体/style/audio3.jpg">

### policy 说明
 路由共享策略允许您指定，当有替代路由可用时，音频会话应将其输出路由到默认系统输出以外的其他地方。

### options  说明
 处理音频的其他选项的掩码。 

 ###  结论 我们可以通过  Category和合适的Modd、policy、Options的搭配我们可以调优出我们的效果

###   **[详细配置音频会话](https://developer.apple.com/library/archive/documentation/Audio/Conceptual/AudioSessionProgrammingGuide/AudioSessionBasics/AudioSessionBasics.html#//apple_ref/doc/uid/TP40007875-CH3-SW1)** 


## 基本播放和录音


> AVMIDIPlayer
>  通过系统声音模块播放MIDI数据的对象。
> 
> AVAudioPlayer
>  播放来自文件或缓冲区的音频数据的对象。
> 
> AVAudioRecorder
>  将音频数据记录到文件中的对象。
> 

### AVMIDIPlayer 使用

```java
   class AVMIDIPlayer
```
> 通过系统声音模块播放MIDI数据的对象。

### 首先获取两个文件RUL， 

>midiFileURL 要播放的文件的URL。 
>
>soundBankURL  声音库的URL。
>

```java
       guard let midiFileURL = Bundle.main.url(forResource: "asagamatakuru",  withExtension: "mid") else {
            fatalError("\"nightBaldMountain.mid\" file not found.")
        }
        
        guard let soundBankURL = Bundle.main.url(forResource: "1442", withExtension: "sf2")else {
            fatalError("\"1422\" file not found.")
        }
```

### 创建播放器 

>    contentsOf  要播放的文件的URL。
>
>  soundBankURL   声音库的URL。声音库必须采用SoundFont2或DLS格式。在macOS中，您可以为soundBankURL参数传递nil来 ,使用默认声音库。在iOS中，您必须始终传递有效的银行文件。
>
>


```java
       do{
            try  midiPlayer = AVMIDIPlayer.init(contentsOf: midiFileURL , soundBankURL: soundBank)
        }catch{
            print("error")
        }
```
### 播放
```java
      func play(){
        midiPlayer?.play({
        })
    }
```

### 暂停
```java
      func stopPlay(){
        if midiPlayer?.isPlaying == true{
            midiPlayer?.stop()
        }
    }
```

## AVAudioPlayer

```java
   class AVAudioPlayer
```
> 播放来自文件或缓冲区的音频数据的对象。
>

### 获取要播放的文件URL

>  orResource  文件名称
> 
>  withExtension 文件格式
> 

```java
    guard let fileURL = Bundle.main.url(forResource: "asagamatakuru", withExtension: "mp4") else {
            fatalError("\"nightBaldMountain.mid\" file not found.")
        }
```

### 创建播放器 AVAudioPlayer

>  volume  此属性支持从静音的0.0到全卷的1.0不等的值。
> 
>  pan 设置此属性值以在立体声字段中定位音频。使用-1的值表示全左，1.0表示全右，0.0表示中心。
> 
>  enableRate 一个布尔值，指示您是否可以调整音频播放器的播放速率。
> 
>  rate  音频播放器的播放速率。
        要设置音频播放器的播放速率，您必须首先通过将其enable属性设置为true来启用速率调整。
        此属性的默认值为1.0，表示音频播放以标准速度进行。此属性支持半速播放的0.5到双速播放的2.0值。
> 
>  numberOfLoops  音频重复播放的次数
> 
>  avAudioPlayer?.delegate 代理方法
> 

```java
    do{
        try  avAudioPlayer = AVAudioPlayer.init(contentsOf: fileURL)
             avAudioPlayer?.volume = 0.5 
             avAudioPlayer?.pan = 0
             avAudioPlayer?.enableRate  = true
             avAudioPlayer?.rate = 1.0
             avAudioPlayer?.numberOfLoops = 1
             avAudioPlayer?.delegate = self
        }catch{
            print("Playe Failed")
        }
        
```


### 创建播放器 代理方法

>  告诉委托音频播放完成后。
> 

```java
   func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
        print("结束");
    }
```
> 
>  当音频播放器在播放期间遇到解码错误时，告诉委托人。
> 

```java
   func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        print("错误")
    }
```

 
 
## AVAudioRecorder 

```java
   class AVAudioRecorder
```
> 将音频数据记录到文件中的对象。

### 配置音频会话

> 要在iOS或tvOS中录制音频，请将音频会话配置为使用record或playAndRecord类别。
>

```java
    
        let audioSession = AVAudioSession.sharedInstance()
        do{
            try audioSession.setCategory(.playAndRecord, mode: .default, policy: .default , options: [])
        }catch{
            print("Failed to set audio session category.")
        }
```

### 创建音频录制
```java
       let settings = [
            AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
            AVSampleRateKey: 44100,
            AVNumberOfChannelsKey: 2,
            AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
        ]
        do{
            avAudioRecorder =  try AVAudioRecorder(url: Bundle.main.bundleURL, settings: settings)
            avAudioRecorder?.delegate = self
            // 默认情况下，录音机不会生成音频级计量数据。由于计量使用计算资源，因此只有在您打算使用它时才启用它。
            avAudioRecorder?.isMeteringEnabled = true
            // 创建音频文件并准备系统进行录制。
            avAudioRecorder?.prepareToRecord()
        }catch{
            print("Error")
        }
```

### 开始录制

```java
    //  要在iOS或tvOS中录制音频，请将音频会话配置为使用record或playAndRecord类别。
       if(Int((avAudioRecorder?.currentTime)!) > 0) {
            avAudioRecorder?.record(atTime: (avAudioRecorder?.deviceCurrentTime)!)
        }
        else {
            avAudioRecorder?.record()
        }
```

### 暂停
    
```java
    func pauseRecord() {
        avAudioRecorder!.pause()
    }
```


### 停止

```java
    func pauseRecord() {
        avAudioRecorder!.pause()
    }
```

## 高级音频处理
> [Audio Engine]
> 执行高级实时和离线音频处理，实现3D空间化，并与MIDI和采样器合作。

### AVAudioEngine 对比 AVAudioPlayer

> AVAudioEngine 比 AVAudioPlayer 更加强大，当然使用上比起 AVAudioPlayer 繁琐。
> 
> AVAudioEngine 对于 Core Audio 作了一些使用上的封装简化，简便的做了一些音频信号的处理。
> 
> 使用 AVAudioPlayer ，是音频文件级别的处理，使用 AVAudioEngine，是音频数据流级别的处理。
> 
> AVAudioEngine 可以做到低时延的、实时音频处理。还可以做到音频的多输入，添加特殊的效果，例如三维空间音效。
> 
> AVAudioEngine 可以做出强大的音乐处理与混音 app,配合制作复杂的三维空间音效的游戏，本文来一个简单的变声应用。
> 



###  下面利用 Audio Engine 播放声音并且带有音频转文字功能


### Engine 相关定义

```java
    // 音频引擎
    let audioEngine = AVAudioEngine()
     // 创建播放节点
    let playerNode = AVAudioPlayerNode()

     //  语音识别请求
    var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    //  请求授权使用语音识别服务 指定识别过程中要使用的语言  启动新的语音识别任务
    let speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))!
    // 监控语音识别进度的任务对象
    var recognitionTask: SFSpeechRecognitionTask?

```

### SFSpeech框架
####  使用实时音频中识别文字，中用到了苹果的 SFSpeech框架，SFSpeech框架可以实现在现场或预录制的音频上执行语音识别，接收转录、替代解释和结果等相关功能。
 
> 
> 第一步 在使用SFSpeech，苹果要求应用必须在其Info.plist文件中添加 [Privacy - Speech Recognition Usage Description] key。
> 

<img src="第9讲-多媒体/style/8.jpg">

> 第二步 利用[SFSpeechRecognizer]请求权限 ,在请求同意后利用[AVAudioEngine]与[AVAudioPlayerNode] 播放音频文件。
> 
  
```java
    SFSpeechRecognizer.requestAuthorization { authStatus in
            OperationQueue.main.addOperation {
                switch authStatus {
                case .authorized:
                    // 播放音频
                    self.playAudio()
                    return
                case .denied:
                    return
                case .restricted:
                    return
                case .notDetermined:
                    return
                default:
                 return
                }
            }
        }

```


### 我们使用直接的方式实现播放视频和进行文字转换，在 playAudio 方法里的关键代码

#### playAudio方法中播放音频相关代码

```java
        // 获取播放的音频文件
        guard let speechURL = Bundle.main.url(forResource: "sampleVoice8kHz", withExtension: "wav") else {
            fatalError("audioFileNotFound")
        }
        // AVAudioFile 表示系统可以打开用于读取或写入的音频文件的对象。 
        var audioFile: AVAudioFile?
        do {
            try audioFile = AVAudioFile(forReading: speechURL)
        } catch {
            print("Could not load file: \(error)")
        }
        // 将播放器节点附加到音频引擎
        audioEngine.attach(playerNode)
        // 将播放器节点连接到输出节点。
        // node1源音频节点。
        // node2目标音频节点
        // format 如果不是NULL，引擎将此值用于源音频节点输出总线的格式。
        // 在任何情况下，引擎都将目标音频节点的输入总线的格式与源音频节点的输出总线匹配。
        audioEngine.connect(playerNode, to: audioEngine.outputNode, format: audioFile!.processingFormat)
        // 在播放音频之前，请启动引擎。
        do {
            try audioEngine.start()
            playerNode.play()
        } catch {
            /* Handle the error. */
        }
        // 用于实时语音
        playerNode.scheduleFile(audioFile!,
                                at: nil,
                                completionCallbackType: .dataPlayedBack) { _ in
            print("播完了")
            /* Handle any work that's necessary after playback. */
        }
        

```
#### playAudio方法中播放音频相关代码 音频识别相关代码
```java
         // installTap这个方法用于记录、监控和观察节点。
        let recordingFormat = playerNode.outputFormat(forBus: 0)
        playerNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer: AVAudioPCMBuffer, when: AVAudioTime) in
            //  获得的样本直接传递给请求对象的append(_:)方法，将音频样本交付到语音识别系统
            self.recognitionRequest?.append(buffer)

            // 更改 音频音效等相关配置

        }
        // 创建语音识别请求
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        guard let recognitionRequest = recognitionRequest else { fatalError("Unable to create a SFSpeechAudioBufferRecognitionRequest object") }
        recognitionRequest.shouldReportPartialResults = true
        //要开始语音识别过程，recognitionTask方法使用提供的请求对象中的信息来配置语音识别系统并开始异步处理音频。调用后不久，应用程序开始将音频样本附加到请求对象中。
        recognitionTask = speechRecognizer.recognitionTask(with: recognitionRequest) { result, error in
            var isFinal = false
            if let result = result {
                self.text.text = result.bestTranscription.formattedString
                isFinal = result.isFinal
                print("Text \(result.bestTranscription.formattedString)")
            }
            if error != nil || isFinal {
                self.audioEngine.stop()
                self.playerNode.removeTap(onBus: 0)
                self.recognitionRequest = nil
                self.recognitionTask = nil
                
            }
        }
```


## Audio Engine  高级设置

-  **[音频相关基本概念](http://zhangdongxuan.com/2018/09/08/音频基本概念/)** 

###  利用 AVAudioUnitTimePitch 做一个变声的功能，也就是音调变化 。  


####  AVAudioUnitTimePitch   一个独立提供高质量播放速率和音高移位的对象，会实时处理音频。
> 
>  pitch    输入信号的音高偏移量       范围  -2400 -> 2400   默认 0
>      
>  overlap  输入音频信号段之间的重叠量  范围   3.0 -> 32.0    默认 8.0
> 
>  rate     改变输入信号的播放速率      范围   0.5 -> 2.0     默认 1.0    值 2.0 会导致输出音频播放高一个八度音程。
         值为 0.5 会导致输出音频播放低一个八度音程。


### 核心代码

```java
        audioEngine.stop()
        playerNode.stop()
        audioEngine.reset()
        audioEngine.attach(playerNode)
        let pitchEffect = AVAudioUnitTimePitch()
        // 输入音频信号段之间的重叠量。
        //pitchEffect.overlap = 32
        // 输入信号的音高偏移量 。
        pitchEffect.pitch = -2400
        // 输入信号的播放速率。
        //pitchEffect.rate = 0.5
        audioEngine.attach(pitchEffect)
        audioEngine.connect(playerNode, to: pitchEffect, format: audioFile!.processingFormat)
        audioEngine.connect(pitchEffect, to: audioEngine.outputNode, format: audioFile!.processingFormat)
        playerNode.scheduleFile(audioFile!, at: nil, completionHandler: nil)
        do{
            try audioEngine.start()
            playerNode.play()

           } catch{
            print(error)
        }
```

###   其他音频效果 

>  音频效果 AVAudioUnitReverb  实现混响效果的对象
>        
>  音频效果 AVAudioUnitEffect   实时处理音频的对象。
> 
>   音频效果  AVAudioUnitEQ  实现多波段均衡器的对象
>       
>   音频效果 AVAudioUnitDistortion 实现多阶段失真效果的对象
>       
>   音频效果  AVAudioUnitDelay     实现延迟效果的对象。


####  利用 AVAudioUnitVarispeed 控制播放速度
> 
>  rate   音频播放速率。 范围：0.25 -> 4.0  默认值：1.0  即将速率更改为 2.0 会导致输出音频播放高一个八度。
         同样，将速率更改为 0.5，会导致输出音频播放低一个八度音程
>  



####  AVAudioUnitReverb 中 wetDryMix 的设定

>  混响模拟特定环境的声学特性。使用不同的预置来模拟特定空间，并使用wetDryMix属性将其与原始信号融合。
> 
>  wetDryMix   指定混合为百分比。范围为0%到100%。

#### AVAudioUnitReverb 中 AVAudioUnitReverbPreset 的设定

> smallRoom   表示具有小型房间环境声学特征的混响。
> 
> mediumRoom  表示具有中型房间环境声学特征的混响的预置。
> 
> largeRoom   表示具有大房间环境声学特征的混响。
> 
> mediumHall  代表具有中型大厅环境声学特征的混响的预置.
> 
> largeHall   代表具有大型大厅环境声学特征的混响的预置。
> 
***[其他设定](https://developer.apple.com/documentation/avfaudio/avaudiounitreverbpreset)***


#### AVAudioUnitDelay  实现延迟效果的对象

> delayTime  延迟输入信号到达输出所需的时间    范围：0 -> 2  默认值：1

> feedback: Float 反馈到延迟线的输出信号量。  范围：-100 -> 100  默认值：50

> lowPassCutoff: Float  高频内容滚动的截止频率，以赫兹为量。  范围：10 ->（采样率/2） 默认值：15000

> wetDryMix: Float  湿和干信号的混合。 范围：0（）-> 100

### 音效组合

•  变男声，AVAudioUnitTimePitch 的 pitch，将音调调低，设置负数参数即可；

•  变女声，AVAudioUnitTimePitch 的 pitch，将音调调高，设置正数即可；

•  机器人的音效是一个组合效果，AVAudioUnitTimePitch + AVAudioUnitDelay；

•  庄严宏大音效，一般都是自带回声，AVAudioUnitTimePitch + AVAudioUnitReverb ；

### 仿真变声
音调既声音频率高低,我们之前通过音调来调节声音从而 男声变女声，但是与实际的男声和女声还是差别的。

需要进行音色调整，才能达到仿真，音色指的是该声音的谐振频率或者说主频率以外的频率特性。
