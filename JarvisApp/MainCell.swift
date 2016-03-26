//
//  MainCell.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/24.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {
    
    let basicView = UIView()
    let cornerImage = UIImageView() ////凸出去的圖
    let titleLabel = UILabel()
    let cancelButton = UIButton() //// 右上角的按鈕
    let bigImage = UIImageView()
    let textView = UITextView()
    let likeButton = UIButton()
    let messageButton = UIButton()
    let shareButton = UIButton()
    
    let separateView01 = UIView()
    let separateView02 = UIView()
    
    var clicked : Bool = false
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        basicView.backgroundColor = UIColor.blackColor()
        contentView.addSubview(basicView)
        
        cornerImage.backgroundColor = UIColor.grayColor()
        cornerImage.layer.cornerRadius = 30
        cornerImage.clipsToBounds = true
        cornerImage.layer.borderWidth = 2
        cornerImage.layer.borderColor = UIColor.whiteColor().CGColor
        contentView.addSubview(cornerImage)
        
        //titleLabel.backgroundColor = UIColor.greenColor()
        titleLabel.font = UIFont.systemFontOfSize(18)
        titleLabel.textColor = UIColor.whiteColor()
        basicView.addSubview(titleLabel)
        
        //cancelButton.backgroundColor = UIColor.redColor()
        cancelButton.setBackgroundImage(UIImage(named: "other"), forState: .Normal)
        cancelButton.addTarget(self, action: #selector(MainCell.upAndDown(_:)), forControlEvents: .TouchUpInside)
        basicView.addSubview(cancelButton)
        
        //textView.backgroundColor = UIColor.brownColor()
        textView.scrollEnabled = false
        textView.editable = false
        textView.font = UIFont.systemFontOfSize(14)
        textView.backgroundColor = UIColor.blackColor()
        textView.textColor  = UIColor.whiteColor()
        basicView.addSubview(textView)
        
        
        bigImage.backgroundColor = UIColor.redColor()
        basicView.addSubview(bigImage)
        
        //likeButton.backgroundColor = UIColor.lightGrayColor()
        likeButton.setTitleColor(UIColor.grayColor(), forState: .Normal)
        likeButton.setTitle("喜歡", forState: .Normal)
        basicView.addSubview(likeButton)
        
       // messageButton.backgroundColor = UIColor.lightGrayColor()
        messageButton.setTitle("留言", forState: .Normal)
        messageButton.setTitleColor(UIColor.grayColor(), forState: .Normal)
        basicView.addSubview(messageButton)
        
        //shareButton.backgroundColor = UIColor.lightGrayColor()
        shareButton.setTitle("分享", forState: .Normal)
        shareButton.setTitleColor(UIColor.grayColor(), forState: .Normal)
        basicView.addSubview(shareButton)
        
        separateView01.backgroundColor = UIColor.lightGrayColor()
        basicView.addSubview(separateView01)
        
        separateView02.backgroundColor = UIColor.lightGrayColor()
        basicView.addSubview(separateView02)
        
        
        autoLayout()
    }
    
    
    func upAndDown(sender:UIButton)
    {
        print("你按了這個三角形")
        
        
        
        if clicked == false
        {
            clicked = true
            UIView.animateWithDuration(0.3) { () -> Void in
                
                self.cancelButton.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
               
            }
            
        }
        else if clicked == true
        {
            clicked = false
            UIView.animateWithDuration(0.3) { () -> Void in
                
                self.cancelButton.transform = CGAffineTransformMakeRotation(CGFloat(M_PI * 2))
            }
            
        }
    }

    

    
    func autoLayout()
    {
        basicView.translatesAutoresizingMaskIntoConstraints = (false)
        cornerImage.translatesAutoresizingMaskIntoConstraints = (false)
        titleLabel.translatesAutoresizingMaskIntoConstraints = (false)
        cancelButton.translatesAutoresizingMaskIntoConstraints = (false)
        bigImage.translatesAutoresizingMaskIntoConstraints = (false)
        textView.translatesAutoresizingMaskIntoConstraints = (false)
        likeButton.translatesAutoresizingMaskIntoConstraints = (false)
        messageButton.translatesAutoresizingMaskIntoConstraints = (false)
        shareButton.translatesAutoresizingMaskIntoConstraints = (false)
        separateView01.translatesAutoresizingMaskIntoConstraints = (false)
        separateView02.translatesAutoresizingMaskIntoConstraints = (false)
        
        
        let dic = ["basicView":basicView,
                 "cornerImage":cornerImage ,
                  "titleLabel":titleLabel ,
                "cancelButton":cancelButton ,
                    "bigImage":bigImage ,
                    "textView":textView ,
                  "likeButton":likeButton ,
               "messageButton":messageButton ,
                 "shareButton":shareButton ,
              "separateView01":separateView01 ,
              "separateView02":separateView02]
        
        ////basicView
        let basicViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-15-[basicView]-15-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewH)
        
        let basicVirewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-15-[basicView]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicVirewV)
        
   
        ////cornerImage
        let cornerImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-5-[cornerImage(60)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(cornerImageH)
        
        let cornerImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[cornerImage(60)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(cornerImageV)
        
        
        ////titleLabel
        let titleLabelH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-60-[titleLabel]-5-[cancelButton]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleLabelH)
        
        let titleLabelV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[titleLabel(25)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleLabelV)
        
        ////cancelButton
        let cancelButtonH = NSLayoutConstraint.constraintsWithVisualFormat("H:[cancelButton(25)]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(cancelButtonH)
        
        let cancelButtonV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[cancelButton(25)]", options: NSLayoutFormatOptions(rawValue: 0), metrics:nil , views: dic)
        basicView.addConstraints(cancelButtonV)
        
        ////bigImage
        let bigImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImageH)
        
        let bigImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:[titleLabel][bigImage(215)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImageV)
     
        ////textView
        let textViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[textView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(textViewH)
        
        let textViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:[bigImage][textView(100)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(textViewV)
      
        
        
        ////likeButton - separateView01 - messageButton - separateView02 - shareButton
        let threeButtonsH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[likeButton(==messageButton)]-[separateView01(2)]-[messageButton(==likeButton)]-[separateView02(2)]-[shareButton(==messageButton)]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(threeButtonsH)
        
        ////loveButton的上下距離和高度
        let loveButtonV = NSLayoutConstraint.constraintsWithVisualFormat("V:[textView]-5-[likeButton]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(loveButtonV)
        
       ////messageButton的上下距離和高度
        let messageButtonV = NSLayoutConstraint.constraintsWithVisualFormat("V:[textView]-5-[messageButton]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(messageButtonV)
        
        ////shareButton的上下距離和高度
        let shareButtonV = NSLayoutConstraint.constraintsWithVisualFormat("V:[textView]-5-[shareButton]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(shareButtonV)
        
        
        let separateView01V = NSLayoutConstraint.constraintsWithVisualFormat("V:[textView]-8-[separateView01]-8-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(separateView01V)

       
        let separateView02V = NSLayoutConstraint.constraintsWithVisualFormat("V:[textView]-8-[separateView02]-8-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(separateView02V)
        
        
    }
    
    
    
    
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

////