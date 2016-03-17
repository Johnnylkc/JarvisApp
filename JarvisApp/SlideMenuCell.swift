//
//  SlideMenuCell.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/18.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class SlideMenuCell: UITableViewCell {
    
    
    let menuButton = UIButton()
    let lineView = UIView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//        menuButton.frame = CGRectMake(10, 20, 260, 40)
//        menuButton.backgroundColor = UIColor.lightGrayColor()
//        menuButton.setTitle("會員設定 3", forState:.Normal)
//        menuButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
//        menuButton.titleLabel?.font = UIFont.systemFontOfSize(20)
//        menuButton.addTarget(self, action: "threeButtonClick:", forControlEvents: .TouchDown)
//        contentView.addSubview(menuButton)
        
        
        lineView.frame = CGRectMake(10, 0 , 260, 2)
        lineView.backgroundColor = UIColor.lightGrayColor()
        lineView.layer.cornerRadius = 2
        lineView.clipsToBounds = true
        contentView.addSubview(lineView)
        
    }

    
    
    
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
