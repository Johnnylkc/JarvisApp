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
    let loveButton = UIButton()
    let messageButton = UIButton()
    let shareButton = UIButton()
    
    let separateView01 = UIView()
    let separateView02 = UIView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        basicView.backgroundColor = UIColor.whiteColor()
        contentView.addSubview(basicView)
        
        cornerImage.backgroundColor = UIColor.grayColor()
        cornerImage.layer.cornerRadius = 30
        cornerImage.clipsToBounds = true
        contentView.addSubview(cornerImage)
        
        //titleLabel.backgroundColor = UIColor.greenColor()
        titleLabel.font = UIFont.systemFontOfSize(20)
        basicView.addSubview(titleLabel)
        
        cancelButton.setTitle("取消", forState: .Normal)
        cancelButton.addTarget(self, action:"cancel:", forControlEvents: .TouchUpInside)
        cancelButton.backgroundColor = UIColor.blueColor()
        cancelButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        basicView.addSubview(cancelButton)
        
        //textView.backgroundColor = UIColor.brownColor()
        textView.scrollEnabled = false
        textView.editable = false
        textView.font = UIFont.systemFontOfSize(14)
        basicView.addSubview(textView)
        
        
        bigImage.backgroundColor = UIColor.redColor()
        basicView.addSubview(bigImage)
        
        //loveButton.backgroundColor = UIColor.lightGrayColor()
        loveButton.setTitleColor(UIColor.grayColor(), forState: .Normal)
        loveButton.setTitle("喜歡", forState: .Normal)
        loveButton.addTarget(self, action: "likeIt:", forControlEvents: .TouchUpInside)
        basicView.addSubview(loveButton)
        
       // messageButton.backgroundColor = UIColor.lightGrayColor()
        messageButton.setTitle("留言", forState: .Normal)
        messageButton.setTitleColor(UIColor.grayColor(), forState: .Normal)
        messageButton.addTarget(self, action: "saySome:", forControlEvents: .TouchUpInside)
        basicView.addSubview(messageButton)
        
        //shareButton.backgroundColor = UIColor.lightGrayColor()
        shareButton.setTitle("分享", forState: .Normal)
        shareButton.setTitleColor(UIColor.grayColor(), forState: .Normal)
        shareButton.addTarget(self, action: "share:", forControlEvents: .TouchUpInside)
        basicView.addSubview(shareButton)
        
        separateView01.backgroundColor = UIColor.lightGrayColor()
        basicView.addSubview(separateView01)
        
        separateView02.backgroundColor = UIColor.lightGrayColor()
        basicView.addSubview(separateView02)
        
        
        autoLayout()
    }
    
    
    func cancel(sender:UIButton)
    {
        print("按了")
    }
    
    func likeIt(sender:UIButton)
    {
        print("你按了喜歡")
    }
 
    func saySome(sender:UIButton)
    {
        print("你按了留言")
    }
    
    func share(sender:UIButton)
    {
        print("你按了分享")
    }
    
    func autoLayout()
    {
        basicView.translatesAutoresizingMaskIntoConstraints = (false)
        cornerImage.translatesAutoresizingMaskIntoConstraints = (false)
        titleLabel.translatesAutoresizingMaskIntoConstraints = (false)
        cancelButton.translatesAutoresizingMaskIntoConstraints = (false)
        bigImage.translatesAutoresizingMaskIntoConstraints = (false)
        textView.translatesAutoresizingMaskIntoConstraints = (false)
        loveButton.translatesAutoresizingMaskIntoConstraints = (false)
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
                  "loveButton":loveButton ,
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
        let titleLabelH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-55-[titleLabel]-5-[cancelButton]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleLabelH)
        
        let titleLabelV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[titleLabel(30)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleLabelV)
        
        ////cancelButton
        let cancelButtonH = NSLayoutConstraint.constraintsWithVisualFormat("H:[cancelButton(60)]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(cancelButtonH)
        
        let cancelButtonV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[cancelButton(30)]", options: NSLayoutFormatOptions(rawValue: 0), metrics:nil , views: dic)
        basicView.addConstraints(cancelButtonV)
        
        ////bigImage
        let bigImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImageH)
        
        let bigImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:[titleLabel]-5-[bigImage(200)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImageV)
     
        ////textView
        let textViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[textView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(textViewH)
        
        let textViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:[bigImage][textView(100)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(textViewV)
      
        
        
        ////loveButton - separateView01 - messageButton - separateView02 - shareButton
        let threeButtonsH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[loveButton(==messageButton)]-[separateView01(2)]-[messageButton(==loveButton)]-[separateView02(2)]-[shareButton(==messageButton)]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(threeButtonsH)
        
        ////loveButton的上下距離和高度
        let loveButtonV = NSLayoutConstraint.constraintsWithVisualFormat("V:[textView]-5-[loveButton]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
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
