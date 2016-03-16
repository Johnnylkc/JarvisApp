//
//  SecondCell.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/25.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class SecondCell: UITableViewCell  {
    
    let basicView = UIView()
    let bigImage = UIImageView()
    let textView = UITextView()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        basicView.backgroundColor = UIColor.blackColor()
        basicView.layer.cornerRadius = 5
        basicView.clipsToBounds = true
        contentView.addSubview(basicView)
        
        bigImage.backgroundColor = UIColor.grayColor()
        basicView.addSubview(bigImage)
        
        //textView.backgroundColor = UIColor.redColor()
        textView.scrollEnabled = false
        textView.editable = false
        textView.font = UIFont.systemFontOfSize(13)
        textView.textColor = UIColor.whiteColor()
        textView.backgroundColor = UIColor.clearColor()
        
        basicView.addSubview(textView)
        
        autuLayout()
    }
    
  
    
    
    
    func autuLayout()
    {
        basicView.translatesAutoresizingMaskIntoConstraints = (false)
        bigImage.translatesAutoresizingMaskIntoConstraints = (false)
        textView.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["basicView":basicView,
                    "bigImage":bigImage,
                    "textView":textView,]
        
        ////basicView
        let basicViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[basicView]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewH)
        
        let basicViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[basicView]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewV)
        
        ////bigIamge
        let bigIamgeH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage]|", options:NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigIamgeH)
        
        let bigIamgeV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[bigImage(160)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigIamgeV)
        
        ////textView
        let textViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[textView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(textViewH)
        
        let textViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:[bigImage][textView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(textViewV)
        
        
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
