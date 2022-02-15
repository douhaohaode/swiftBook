//
//  ViewController.swift
//  PPXibTableView
//
//  Created by pactera on 2022/1/26.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITableViewDataSourcePrefetching {
    
    var data = [
        ["image" : "4" , "title" : "APP Stort" , "subtitle" : "What’s New" ,  "content" : "Use the latest capabilities to improve the discovery of your app on the App Store, and deliver high-quality app and in-app purchase experiences.","buttons" : "5"],
        ["image" : "5" , "title" : "SharePlay" , "subtitle" : "SharePlay for Developers" ,  "content" :"Bring people together in an entirely new way by integrating your apps into FaceTime using SharePlay and the Group Activities API." ,"buttons" : "5"],
        ["image" : "7" , "title" : "Swift" , "subtitle" : "Learn to code with Swift Playgrounds" ,  "content" :"Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store. Engaging lessons and walkthroughs demonstrate the core concepts of coding and building apps as you write real Swift code in an interactive environment." ,"buttons" : "5"],
        ["image" : "4" , "title" : "Xcode 13" , "subtitle" : "Easy setup" ,  "content" :"Xcode 13 adds powerful new team development features, perfect for working with Xcode Cloud as well as with GitHub, Bitbucket, and GitLab collaboration features. Initiate, review, comment, and merge pull requests directly within Xcode. See your teammates’ comments right inside your code. And quickly compare any two versions of your code files." ,"buttons" : "5"],
        ["image" : "7" , "title" : "iOS 15" , "subtitle" : "Focus, connect, and explore." ,  "content" :"iOS is the world’s most advanced mobile operating system. With iOS 15, you can build apps that connect people in new ways with SharePlay, help them focus on the moment with new notification APIs, and provide new tools for exploring with augmented reality, Safari extensions, and nearby interactions. You can even improve the discovery of your app on the ","buttons" : "5"],
        ["image" : "4" , "title" : "APP Stort" , "subtitle" : "What’s New" ,  "content" : "Use the latest capabilities to improve the discovery of your app on the App Store, and deliver high-quality app and in-app purchase experiences.","buttons" : "5"],
        ["image" : "16" , "title" : "SharePlay" , "subtitle" : "SharePlay for Developers" ,  "content" :"Bring people together in an entirely new way by integrating your apps into FaceTime using SharePlay and the Group Activities API." ,"buttons" : "5"],
        ["image" : "3" , "title" : "Swift" , "subtitle" : "Learn to code with Swift Playgrounds" ,  "content" :"Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store. Engaging lessons and walkthroughs demonstrate the core concepts of coding and building apps as you write real Swift code in an interactive environment." ,"buttons" : "5"],
        ["image" : "4" , "title" : "Xcode 13" , "subtitle" : "Easy setup" ,  "content" :"Xcode 13 adds powerful new team development features, perfect for working with Xcode Cloud as well as with GitHub, Bitbucket, and GitLab collaboration features. Initiate, review, comment, and merge pull requests directly within Xcode. See your teammates’ comments right inside your code. And quickly compare any two versions of your code files." ,"buttons" : "5"],
        ["image" : "6" , "title" : "iOS 15" , "subtitle" : "Focus, connect, and explore." ,  "content" :"iOS is the world’s most advanced mobile operating system. With iOS 15, you can build apps that connect people in new ways with SharePlay, help them focus on the moment with new notification APIs, and provide new tools for exploring with augmented reality, Safari extensions, and nearby interactions. You can even improve the discovery of your app on the ","buttons" : "5"],
        ["image" : "4" , "title" : "APP Stort" , "subtitle" : "What’s New" ,  "content" : "Use the latest capabilities to improve the discovery of your app on the App Store, and deliver high-quality app and in-app purchase experiences.","buttons" : "5"],
        ["image" : "5" , "title" : "SharePlay" , "subtitle" : "SharePlay for Developers" ,  "content" :"Bring people together in an entirely new way by integrating your apps into FaceTime using SharePlay and the Group Activities API." ,"buttons" : "5"],
        ["image" : "3" , "title" : "Swift" , "subtitle" : "Learn to code with Swift Playgrounds" ,  "content" :"Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store. Engaging lessons and walkthroughs demonstrate the core concepts of coding and building apps as you write real Swift code in an interactive environment." ,"buttons" : "5"],
        ["image" : "4" , "title" : "Xcode 13" , "subtitle" : "Easy setup" ,  "content" :"Xcode 13 adds powerful new team development features, perfect for working with Xcode Cloud as well as with GitHub, Bitbucket, and GitLab collaboration features. Initiate, review, comment, and merge pull requests directly within Xcode. See your teammates’ comments right inside your code. And quickly compare any two versions of your code files." ,"buttons" : "5"],
        ["image" : "6" , "title" : "iOS 15" , "subtitle" : "Focus, connect, and explore." ,  "content" :"iOS is the world’s most advanced mobile operating system. With iOS 15, you can build apps that connect people in new ways with SharePlay, help them focus on the moment with new notification APIs, and provide new tools for exploring with augmented reality, Safari extensions, and nearby interactions. You can even improve the discovery of your app on the ","buttons" : "5"],
        ["image" : "4" , "title" : "APP Stort" , "subtitle" : "What’s New" ,  "content" : "Use the latest capabilities to improve the discovery of your app on the App Store, and deliver high-quality app and in-app purchase experiences.","buttons" : "5"],
        ["image" : "5" , "title" : "SharePlay" , "subtitle" : "SharePlay for Developers" ,  "content" :"Bring people together in an entirely new way by integrating your apps into FaceTime using SharePlay and the Group Activities API." ,"buttons" : "5"],
        ["image" : "3" , "title" : "Swift" , "subtitle" : "Learn to code with Swift Playgrounds" ,  "content" :"Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store. Engaging lessons and walkthroughs demonstrate the core concepts of coding and building apps as you write real Swift code in an interactive environment." ,"buttons" : "5"],
        ["image" : "4" , "title" : "Xcode 13" , "subtitle" : "Easy setup" ,  "content" :"Xcode 13 adds powerful new team development features, perfect for working with Xcode Cloud as well as with GitHub, Bitbucket, and GitLab collaboration features. Initiate, review, comment, and merge pull requests directly within Xcode. See your teammates’ comments right inside your code. And quickly compare any two versions of your code files." ,"buttons" : "5"],
        ["image" : "7" , "title" : "iOS 15" , "subtitle" : "Focus, connect, and explore." ,  "content" :"iOS is the world’s most advanced mobile operating system. With iOS 15, you can build apps that connect people in new ways with SharePlay, help them focus on the moment with new notification APIs, and provide new tools for exploring with augmented reality, Safari extensions, and nearby interactions. You can even improve the discovery of your app on the ","buttons" : "5"],
        ["image" : "4" , "title" : "APP Stort" , "subtitle" : "What’s New" ,  "content" : "Use the latest capabilities to improve the discovery of your app on the App Store, and deliver high-quality app and in-app purchase experiences.","buttons" : "5"],
        ["image" : "5" , "title" : "SharePlay" , "subtitle" : "SharePlay for Developers" ,  "content" :"Bring people together in an entirely new way by integrating your apps into FaceTime using SharePlay and the Group Activities API." ,"buttons" : "5"],
        ["image" : "3" , "title" : "Swift" , "subtitle" : "Learn to code with Swift Playgrounds" ,  "content" :"Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store. Engaging lessons and walkthroughs demonstrate the core concepts of coding and building apps as you write real Swift code in an interactive environment." ,"buttons" : "5"],
        ["image" : "4" , "title" : "Xcode 13" , "subtitle" : "Easy setup" ,  "content" :"Xcode 13 adds powerful new team development features, perfect for working with Xcode Cloud as well as with GitHub, Bitbucket, and GitLab collaboration features. Initiate, review, comment, and merge pull requests directly within Xcode. See your teammates’ comments right inside your code. And quickly compare any two versions of your code files." ,"buttons" : "5"],
        ["image" : "6" , "title" : "iOS 15" , "subtitle" : "Focus, connect, and explore." ,  "content" :"iOS is the world’s most advanced mobile operating system. With iOS 15, you can build apps that connect people in new ways with SharePlay, help them focus on the moment with new notification APIs, and provide new tools for exploring with augmented reality, Safari extensions, and nearby interactions. You can even improve the discovery of your app on the ","buttons" : "5"],
        ["image" : "4" , "title" : "APP Stort" , "subtitle" : "What’s New" ,  "content" : "Use the latest capabilities to improve the discovery of your app on the App Store, and deliver high-quality app and in-app purchase experiences.","buttons" : "5"],
        ["image" : "5" , "title" : "SharePlay" , "subtitle" : "SharePlay for Developers" ,  "content" :"Bring people together in an entirely new way by integrating your apps into FaceTime using SharePlay and the Group Activities API." ,"buttons" : "5"],
        ["image" : "3" , "title" : "Swift" , "subtitle" : "Learn to code with Swift Playgrounds" ,  "content" :"Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store. Engaging lessons and walkthroughs demonstrate the core concepts of coding and building apps as you write real Swift code in an interactive environment." ,"buttons" : "5"],
        ["image" : "4" , "title" : "Xcode 13" , "subtitle" : "Easy setup" ,  "content" :"Xcode 13 adds powerful new team development features, perfect for working with Xcode Cloud as well as with GitHub, Bitbucket, and GitLab collaboration features. Initiate, review, comment, and merge pull requests directly within Xcode. See your teammates’ comments right inside your code. And quickly compare any two versions of your code files." ,"buttons" : "5"],
        ["image" : "6" , "title" : "iOS 15" , "subtitle" : "Focus, connect, and explore." ,  "content" :"iOS is the world’s most advanced mobile operating system. With iOS 15, you can build apps that connect people in new ways with SharePlay, help them focus on the moment with new notification APIs, and provide new tools for exploring with augmented reality, Safari extensions, and nearby interactions. You can even improve the discovery of your app on the ","buttons" : "5"],
        ["image" : "4" , "title" : "APP Stort" , "subtitle" : "What’s New" ,  "content" : "Use the latest capabilities to improve the discovery of your app on the App Store, and deliver high-quality app and in-app purchase experiences.","buttons" : "5"],
        ["image" : "5" , "title" : "SharePlay" , "subtitle" : "SharePlay for Developers" ,  "content" :"Bring people together in an entirely new way by integrating your apps into FaceTime using SharePlay and the Group Activities API." ,"buttons" : "5"],
        ["image" : "3" , "title" : "Swift" , "subtitle" : "Learn to code with Swift Playgrounds" ,  "content" :"Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store. Engaging lessons and walkthroughs demonstrate the core concepts of coding and building apps as you write real Swift code in an interactive environment." ,"buttons" : "5"],
        ["image" : "4" , "title" : "Xcode 13" , "subtitle" : "Easy setup" ,  "content" :"Xcode 13 adds powerful new team development features, perfect for working with Xcode Cloud as well as with GitHub, Bitbucket, and GitLab collaboration features. Initiate, review, comment, and merge pull requests directly within Xcode. See your teammates’ comments right inside your code. And quickly compare any two versions of your code files." ,"buttons" : "5"],
        ["image" : "6" , "title" : "iOS 15" , "subtitle" : "Focus, connect, and explore." ,  "content" :"iOS is the world’s most advanced mobile operating system. With iOS 15, you can build apps that connect people in new ways with SharePlay, help them focus on the moment with new notification APIs, and provide new tools for exploring with augmented reality, Safari extensions, and nearby interactions. You can even improve the discovery of your app on the ","buttons" : "5"]
    ]
    
    
    let tempData  = [
        ["image" : "4" , "title" : "APP Stort" , "subtitle" : "What’s New" ,  "content" : "Use the latest capabilities to improve the discovery of your app on the App Store, and deliver high-quality app and in-app purchase experiences.","buttons" : "5"],
        ["image" : "5" , "title" : "SharePlay" , "subtitle" : "SharePlay for Developers" ,  "content" :"Bring people together in an entirely new way by integrating your apps into FaceTime using SharePlay and the Group Activities API." ,"buttons" : "5"],
        ["image" : "3" , "title" : "Swift" , "subtitle" : "Learn to code with Swift Playgrounds" ,  "content" :"Swift Playgrounds is a revolutionary app for iPad and Mac that helps you learn to code and build apps using Swift, the same powerful language used to create world-class apps for the App Store. Engaging lessons and walkthroughs demonstrate the core concepts of coding and building apps as you write real Swift code in an interactive environment." ,"buttons" : "5"],
        ["image" : "4" , "title" : "Xcode 13" , "subtitle" : "Easy setup" ,  "content" :"Xcode 13 adds powerful new team development features, perfect for working with Xcode Cloud as well as with GitHub, Bitbucket, and GitLab collaboration features. Initiate, review, comment, and merge pull requests directly within Xcode. See your teammates’ comments right inside your code. And quickly compare any two versions of your code files." ,"buttons" : "5"],
        ["image" : "7" , "title" : "iOS 15" , "subtitle" : "Focus, connect, and explore." ,  "content" :"iOS is the world’s most advanced mobile operating system. With iOS 15, you can build apps that connect people in new ways with SharePlay, help them focus on the moment with new notification APIs, and provide new tools for exploring with augmented reality, Safari extensions, and nearby interactions. You can even improve the discovery of your app on the ","buttons" : "5"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.badge, .sound, .alert, .carPlay]) { (success, error) in
                       print("授权" + (success ? "成功" : "失败"))
              }
        
        // Do any additional setup after loading the view.
        
        let tableView = UITableView(frame: .zero, style: UITableView.Style.plain)
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.prefetchDataSource = self
        // 获取nib
        let nib = UINib(nibName: "cell", bundle: nil)
        //注册cell
        tableView.register(nib, forCellReuseIdentifier: "tableViewCell")
        
        view = tableView
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as?  tableViewCell else { fatalError("Error") }
        cell.selectionStyle = .none
        
        cell.setTitleLable()
        
       // guard let buttons = Int(data[indexPath.row]["buttons"]!) else {fatalError("Error") }
        
        cell.setStackView()
        cell.picImageView.image = UIImage(named: data[indexPath.row]["image"]!)
        cell.setImageView()
        cell.titleLabel.text = data[indexPath.row]["title"]
        cell.subTitle.text = data[indexPath.row]["subtitle"]
        cell.contentLabel.backgroundColor = .white
        cell.contentLabel.text = data[indexPath.row]["content"]
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
 
   // 数据源预加载
    func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath]) {
        print(indexPaths[0].row)
        let needFetch = indexPaths.contains { _ in indexPaths.last!.row == self.data.count - 1 }
        if needFetch {
            print(indexPaths[0].row)
            print("添加了新数据")
            self.data.append(contentsOf: tempData)
            tableView.reloadData()
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        print("内存警告")
    }
    
}

