//
//  ThirdCell.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/29.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class ThirdCell: UITableViewCell {

    
    let basicView = UIView()
    let bigImage = UIImageView()
    let titleTextView = UITextView()
    let subTextView = UITextView()
    let contentTextView = UITextView()
    let littleImage = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        basicView.backgroundColor = UIColor.whiteColor()
        contentView.addSubview(basicView)
        bigImage.backgroundColor = UIColor.lightGrayColor()
        basicView.addSubview(bigImage)
        
        
        titleTextView.backgroundColor = UIColor.redColor()
        titleTextView.scrollEnabled = false
        titleTextView.editable = false

        titleTextView.font = UIFont.boldSystemFontOfSize(15)
        basicView.addSubview(titleTextView)
        
        subTextView.backgroundColor = UIColor.blueColor()
        subTextView.scrollEnabled = false
        subTextView.editable = false
        subTextView.font = UIFont.systemFontOfSize(13)
        basicView.addSubview(subTextView)
        
        contentTextView.backgroundColor = UIColor.greenColor()
        contentTextView.scrollEnabled = false
        contentTextView.editable = false
        contentTextView.font = UIFont.systemFontOfSize(10)
        basicView.addSubview(contentTextView)
        
        littleImage.backgroundColor = UIColor.yellowColor()
        basicView.addSubview(littleImage)
        
        autoLayout()
    }
    
    
    func autoLayout()
    {
        
        basicView.translatesAutoresizingMaskIntoConstraints = (false)
        bigImage.translatesAutoresizingMaskIntoConstraints = (false)
        titleTextView.translatesAutoresizingMaskIntoConstraints = (false)
        subTextView.translatesAutoresizingMaskIntoConstraints = (false)
        contentTextView.translatesAutoresizingMaskIntoConstraints = (false)
        littleImage.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["basicView":basicView,
                    "bigImage":bigImage,
               "titleTextView":titleTextView,
                 "subTextView":subTextView,
             "contentTextView":contentTextView,"littleImage":littleImage]
        
        
        ////basicView
        let basicViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[basicView]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewH)
        
        let basicViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[basicView]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewV)
        
        
        ////bigImage & titleTextView 水平位置和寬度
        let bigImage_titleTextViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage(==titleTextView)][titleTextView(==bigImage)]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImage_titleTextViewH)
        
        ////bigImage 垂直位置和高度
        let bigImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[bigImage]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImageV)
        
        ////titleTextView 垂直位置和高度 我沒給titleTextView設高度 他自己會自適應內文的高度做調整
        let titleTextViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[titleTextView]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleTextViewV)
        
        ////subTextView
        let subTextViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage][subTextView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(subTextViewH)
        
        let subTextViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:[titleTextView][subTextView]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(subTextViewV)
        
        ////contentTextView
        let contentTextViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage][contentTextView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(contentTextViewH)
        
        let contentTextViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:[subTextView][contentTextView]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(contentTextViewV)
        
        ////littleImage
        let littleImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[littleImage(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(littleImageH)
        
        let littleImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[littleImage(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(littleImageV)
        
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
