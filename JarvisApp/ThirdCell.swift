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
    let titleLabel = UILabel()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        basicView.backgroundColor = UIColor.whiteColor()
        contentView.addSubview(basicView)
        
        bigImage.backgroundColor = UIColor.lightGrayColor()
        basicView.addSubview(bigImage)
        
        titleLabel.backgroundColor = UIColor.redColor()
        basicView.addSubview(titleLabel)
        
        
        autoLayout()
    }
    
    
    func autoLayout()
    {
        basicView.translatesAutoresizingMaskIntoConstraints = (false)
        bigImage.translatesAutoresizingMaskIntoConstraints = (false)
        titleLabel.translatesAutoresizingMaskIntoConstraints = (false)
        
        
        let dict = ["basicView":basicView,"bigImage":bigImage,"titleLabel":titleLabel]
        
        
        ////basicView
        let basicViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[basicView]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dict)
        contentView.addConstraints(basicViewH)
        
        let basicViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[basicView]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dict)
        contentView.addConstraints(basicViewV)
        
        ////bigImage & titleLael 前著在左 後者在右 兩者的寬是相同的
        let bigImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage(==titleLabel)][titleLabel(==bigImage)]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dict)
        basicView.addConstraints(bigImageH)
        
        let bigImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[bigImage]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dict)
        basicView.addConstraints(bigImageV)
        
        let titleLabelV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[titleLabel(30)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dict)
        basicView.addConstraints(titleLabelV)
        
        
        
        
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
