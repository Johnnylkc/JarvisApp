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
        titleTextView.font = UIFont.systemFontOfSize(18)
        basicView.addSubview(titleTextView)
        
        
        autoLayout()
    }
    
    
    func autoLayout()
    {
        
        basicView.translatesAutoresizingMaskIntoConstraints = (false)
        bigImage.translatesAutoresizingMaskIntoConstraints = (false)
        titleTextView.translatesAutoresizingMaskIntoConstraints = (false)
        
        
        let dic = ["basicView":basicView,"bigImage":bigImage,"titleTextView":titleTextView]
        
        
        ////basicView
        let basicViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[basicView]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewH)
        
        let basicViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[basicView]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewV)
        
        
        ////bigImage & titleTextView 水平位置和寬度
        let bigImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage(==titleTextView)][titleTextView(==bigImage)]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImageH)
        
        ////bigImage 垂直位置和高度
        let bigImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[bigImage]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImageV)
        
        ////titleTextView 垂直位置和高度
        let titleTextViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[titleTextView(30)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleTextViewV)
        
        
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
