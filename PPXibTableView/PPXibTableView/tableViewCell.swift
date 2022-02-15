//
//  tableViewCell.swift
//  PPXibTableView
//
//  Created by pactera on 2022/1/26.
//

import UIKit

class tableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subTitle: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var picImageView: UIImageView!
    
    @IBOutlet weak var stackView: UIStackView!
    
    
    var saveLable : UILabel?
    
    let data = ["Swift","Simlut","Xcode","Instur","Anima"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // 设置阴影
        subTitle.shadowColor = UIColor.lightGray
        subTitle.shadowOffset = CGSize(width: 3, height: 3)
        
        stackView.axis = .horizontal
        stackView.alignment = .leading
        
        saveLable = UILabel()
        saveLable?.text = "Save"
        saveLable?.textAlignment = .center
        saveLable?.frame = CGRect(x: UIScreen.main.bounds.width - 100,  y:40 , width: 40, height: 40)
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("layoutSubviews")
        
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print("draw")
        
    }
    
    
    func setTitleLable(){
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.layer.cornerRadius = 22
        titleLabel.layer.shadowColor = UIColor.black.cgColor
        titleLabel.layer.shadowOpacity = 0.5
        
        
        let maskPath = UIBezierPath(roundedRect: titleLabel.bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: 40, height: 40))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = titleLabel.bounds
        maskLayer.path = maskPath.cgPath
        titleLabel.layer.mask = maskLayer
        
        //titleLabel.layer.masksToBounds = true
        //view.layer.cornerCurve = .continous
        // Setup shadow properties
        // Set a shadow path on a basic layer
        // titleLabel.layer.shadowPath = UIBezierPath(roundedRect: titleLabel.layer.bounds,
        //                                            cornerRadius: titleLabel.layer.cornerRadius).cgPath
    }
    
    
    func setStackView(){
        let count = stackView.subviews.count
        if count > 0 {
            for i in 0..<count{
                stackView.subviews[count - 1 - i].removeFromSuperview()
            }
        }
        
        for i in 1...5 { //正序
            let view = UIView()
            let lable = UILabel()
            lable.text = data[i - 1]
            lable.font = UIFont.systemFont(ofSize: 9)
            let lable1 = UILabel()
            lable1.text = data[5 - i]
            // lable1.textAlignment = .center
            lable1.font = UIFont.systemFont(ofSize: 9)
            let image = UIImageView(image: UIImage(named: String(i)))
            /// 设置半径大小等于图像现图宽度的一半
            //image.layer.cornerRadius = 7
            /// 设置图像视图的遮罩覆盖属性，进行边界裁切
           // image.layer.masksToBounds = true
            //image.layer.shadowColor = UIColor.blue.cgColor
            //image.layer.shadowOpacity = 0.5
            //image.alpha = 0.3
            image.frame =  CGRect(x:0,  y: 11 , width: 28  , height: 28 )
            lable.frame = CGRect(x: 30,  y:11 , width: 35, height: 15)
            lable1.frame = CGRect(x: 30,  y:26 , width: 35, height: 15)
            
            view.addSubview(image)
            view.addSubview(lable)
            view.addSubview(lable1)
            
            stackView.addArrangedSubview(view)
            UIView.animate(withDuration: 1) {
                self.stackView.layoutIfNeeded()
            }
        }
        stackView.layer.shadowColor = UIColor.purple.cgColor
        stackView.layer.shadowOpacity = 0.3
    }
    
    
    func setImageView(){
        stackView.layer.shadowColor = UIColor.purple.cgColor
        stackView.layer.shadowOpacity = 0.3
    }
    
    
    //    override func setSelected(_ selected: Bool, animated: Bool) {
    //        super.setSelected(selected, animated: animated)
    //
    //        // Configure the view for the selected state
    //    }
    
}
