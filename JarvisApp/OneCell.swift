//
//  OneCell.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/4/10.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class OneCell: UITableViewCell {
    
    let basicView = UIView()
    let whiteView = UIView()
    let bigImage = UIImageView()
    let titleLabel = UILabel()
    let timeLabel = UILabel()
    let locationImage = UIImageView()
    let addressLabel = UILabel()
    let lineView = UIView()
    let articleTextView = UITextView()
    let likeButton = UIButton()
    let shareButton = UIButton()
    let likeNumLabel = UILabel()
    let shareNumLabel = UILabel()
    
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        basicView.backgroundColor = UIColor.yellowColor()
        contentView.addSubview(basicView)
        
        bigImage.backgroundColor = UIColor.orangeColor()
        basicView.addSubview(bigImage)
        
        whiteView.backgroundColor = UIColor.whiteColor()
        basicView.addSubview(whiteView)
        
        //titleLabel.backgroundColor = UIColor.greenColor()
        whiteView.addSubview(titleLabel)
        
        //timeLabel.backgroundColor = UIColor.redColor()
        timeLabel.font = UIFont.systemFontOfSize(13)
        whiteView.addSubview(timeLabel)
        
        locationImage.image = UIImage(named: "location")
        //locationImage.backgroundColor = UIColor.blackColor()
        whiteView.addSubview(locationImage)
        
        //addressLabel.backgroundColor = UIColor.blueColor()
        addressLabel.font = UIFont.systemFontOfSize(13)
        whiteView.addSubview(addressLabel)
        
        lineView.backgroundColor = UIColor.blackColor()
        lineView.layer.cornerRadius = 2
        lineView.clipsToBounds = true
        whiteView.addSubview(lineView)
        
        //articleTextView.backgroundColor = UIColor.cyanColor()
        articleTextView.scrollEnabled = false
        articleTextView.editable = false
        articleTextView.font = UIFont.systemFontOfSize(13)
        articleTextView.textContainerInset = UIEdgeInsetsMake(5, 3, 0, 3)
        whiteView.addSubview(articleTextView)
        
        //likeButton.backgroundColor = UIColor.redColor()
        likeButton.setBackgroundImage(UIImage(named: "like"), forState: .Normal)
        whiteView.addSubview(likeButton)
        
        //shareButton.backgroundColor = UIColor.redColor()
        shareButton.setBackgroundImage(UIImage(named: "share"), forState: .Normal)
        whiteView.addSubview(shareButton)
        
        likeNumLabel.font = UIFont.systemFontOfSize(10)
        //likeNumLabel.backgroundColor = UIColor.grayColor()
        likeNumLabel.textAlignment = .Center
        whiteView.addSubview(likeNumLabel)
        
        shareNumLabel.font = UIFont.systemFontOfSize(10)
        shareNumLabel.textAlignment = .Center
        //shareNumLabel.backgroundColor = UIColor.grayColor()
        whiteView.addSubview(shareNumLabel)
        
        
        autoLayout()
    }
    
    func autoLayout()
    {
        basicView.translatesAutoresizingMaskIntoConstraints = (false)
        bigImage.translatesAutoresizingMaskIntoConstraints = (false)
        whiteView.translatesAutoresizingMaskIntoConstraints = (false)
        titleLabel.translatesAutoresizingMaskIntoConstraints = (false)
        timeLabel.translatesAutoresizingMaskIntoConstraints = (false)
        locationImage.translatesAutoresizingMaskIntoConstraints = (false)
        addressLabel.translatesAutoresizingMaskIntoConstraints = (false)
        lineView.translatesAutoresizingMaskIntoConstraints = (false)
        articleTextView.translatesAutoresizingMaskIntoConstraints = (false)
        likeButton.translatesAutoresizingMaskIntoConstraints = (false)
        shareButton.translatesAutoresizingMaskIntoConstraints = (false)
        likeNumLabel.translatesAutoresizingMaskIntoConstraints = (false)
        shareNumLabel.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic =
            ["basicView":basicView
            ,"bigImage":bigImage
            ,"whiteView":whiteView
            ,"titleLabel":titleLabel
            ,"timeLabel":timeLabel
            ,"locationImage":locationImage
            ,"addressLabel":addressLabel
            ,"lineView":lineView
            ,"articleTextView":articleTextView
            ,"likeButton":likeButton
            ,"shareButton":shareButton,"likeNumLabel":likeNumLabel,"shareNumLabel":shareNumLabel]
        
        ////basicView
        let basicView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-5-[basicView]-5-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        contentView.addConstraints(basicView_H)
        
        let basicView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|[basicView]|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        contentView.addConstraints(basicView_V)
        
        ////bigImage
        let bigImage_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage]|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        basicView.addConstraints(bigImage_H)
        
        let bigImage_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[bigImage(200)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        basicView.addConstraints(bigImage_V)
        
        ////whiteView
        let whiteView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|[whiteView]|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        basicView.addConstraints(whiteView_H)
        
        let whiteView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[bigImage][whiteView]-5-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        basicView.addConstraints(whiteView_V)
        
        /////titleLabel
        let titleLabel_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-5-[titleLabel(285)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(titleLabel_H)
        
        let titleLabel_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|[titleLabel(20)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(titleLabel_V)
        
        ////timeLabel
        let timeLabel_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-5-[timeLabel(130)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(timeLabel_H)
        
        let timeLabel_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[titleLabel]-5-[timeLabel(15)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(timeLabel_V)
        
        ////locationImage
        let locationImage_H = NSLayoutConstraint.constraintsWithVisualFormat("H:[timeLabel]-5-[locationImage(16)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(locationImage_H)
        
        let locationImage_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[titleLabel]-5-[locationImage(16)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(locationImage_V)
        
        ////addressLabel
        let addressLabel_H = NSLayoutConstraint.constraintsWithVisualFormat("H:[locationImage][addressLabel(134)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(addressLabel_H)
        
        let addressLabel_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[titleLabel]-5-[addressLabel(15)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(addressLabel_V)
        
        /////lineView
        let lineView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-5-[lineView]-5-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(lineView_H)
        
        let lineView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[timeLabel]-5-[lineView(2)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(lineView_V)
        
        ////articleTextView
        let articleTextView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|[articleTextView]|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(articleTextView_H)
        
        let articleTextView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[lineView][articleTextView]|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(articleTextView_V)
        
        ////likeButton
        let likeButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:[titleLabel]-5-[likeButton(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(likeButton_H)
        
        let likeButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|[likeButton(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(likeButton_V)
        
        ////shareButton
        let shareButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:[likeButton]-5-[shareButton(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(shareButton_H)
        
        let shareButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|[shareButton(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(shareButton_V)
        
        ////likeNumLabel
        let likeNumLabel_H = NSLayoutConstraint.constraintsWithVisualFormat("H:[addressLabel]-5-[likeNumLabel(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(likeNumLabel_H)
        
        let likeNumLabel_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[likeButton][likeNumLabel(10)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(likeNumLabel_V)
        
        ////shareNumLabel
        let shareNumLabel_H = NSLayoutConstraint.constraintsWithVisualFormat("H:[likeNumLabel]-5-[shareNumLabel(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(shareNumLabel_H)
        
        let shareNumLabel_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[shareButton][shareNumLabel(10)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        whiteView.addConstraints(shareNumLabel_V)
        
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
