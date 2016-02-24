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
    let cornerImage = UIImageView()
    let titleLabel = UILabel()
    let cancelButton = UIButton() //// 右上角的按鈕
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        basicView.backgroundColor = UIColor.whiteColor()
        contentView.addSubview(basicView)
        
        cornerImage.backgroundColor = UIColor.grayColor()
        contentView.addSubview(cornerImage)
        
        titleLabel.backgroundColor = UIColor.greenColor()
        titleLabel.text = "hello bitch"
        titleLabel.font = UIFont.systemFontOfSize(20)
        basicView.addSubview(titleLabel)
        
        cancelButton.setTitle("取消", forState: .Normal)
        cancelButton.addTarget(self, action:"cancel:", forControlEvents: .TouchUpInside)
        cancelButton.backgroundColor = UIColor.blueColor()
        cancelButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        basicView.addSubview(cancelButton)
        
        
        
        
        
        autoLayout()
    }
    
    
    func cancel(sender:UIButton)
    {
        print("按了")
    }
    
    

    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func autoLayout()
    {
        basicView.translatesAutoresizingMaskIntoConstraints = (false)
        cornerImage.translatesAutoresizingMaskIntoConstraints = (false)
        titleLabel.translatesAutoresizingMaskIntoConstraints = (false)
        cancelButton.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["basicView":basicView , "cornerImage":cornerImage , "titleLabel":titleLabel , "cancelButton":cancelButton]
        
        ////basicView
        let basicViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-15-[basicView]-15-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewH)
        
        let basicVirewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-15-[basicView]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicVirewV)
        
   
        ////cornerImage
        let cornerImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-5-[cornerImage(70)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(cornerImageH)
        
        let cornerImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[cornerImage(70)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(cornerImageV)
        
        
        ////titleLabel
        let titleLabelH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-70-[titleLabel]-5-[cancelButton]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleLabelH)
        
        let titleLabelV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[titleLabel(30)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleLabelV)
        
        ////cancelButton
        let cancelButtonH = NSLayoutConstraint.constraintsWithVisualFormat("H:[cancelButton(60)]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(cancelButtonH)
        
        let cancelButtonV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[cancelButton(30)]", options: NSLayoutFormatOptions(rawValue: 0), metrics:nil , views: dic)
        basicView.addConstraints(cancelButtonV)
        
        
        
        
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
