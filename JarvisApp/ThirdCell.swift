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
    let discountLabel = UILabel()
    let salePriceLabel = UILabel()
    let oldPriceLabel = UILabel()
    let indicator = UIActivityIndicatorView()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        basicView.backgroundColor = UIColor.whiteColor()
        contentView.addSubview(basicView)
        
        bigImage.backgroundColor = UIColor.whiteColor()
        basicView.addSubview(bigImage)
        
        indicator.activityIndicatorViewStyle = .Gray
        //indicator.backgroundColor = UIColor.redColor()
        bigImage.addSubview(indicator)
        
        //titleTextView.backgroundColor = UIColor.redColor()
        titleTextView.scrollEnabled = false
        titleTextView.editable = false
        titleTextView.font = UIFont.boldSystemFontOfSize(15)
        titleTextView.textContainerInset = UIEdgeInsets(top: 5, left: 0, bottom: 3, right: 1)
        basicView.addSubview(titleTextView)
        
        //discountLabel.backgroundColor = UIColor.lightGrayColor()
        discountLabel.font = UIFont.systemFontOfSize(13)
        discountLabel.textColor = UIColor.blackColor()
        basicView.addSubview(discountLabel)
        
        //salePriceLabel.backgroundColor = UIColor.greenColor()
        salePriceLabel.font = UIFont.boldSystemFontOfSize(16)
        salePriceLabel.textColor = UIColor.blackColor()
        basicView.addSubview(salePriceLabel)
        
        //oldPriceLabel.backgroundColor = UIColor.yellowColor()
        oldPriceLabel.font = UIFont.systemFontOfSize(13)
        oldPriceLabel.textAlignment = .Center
        oldPriceLabel.textColor = UIColor.lightGrayColor()
        basicView.addSubview(oldPriceLabel)
        
        autoLayout()
    }
    
    
    func autoLayout()
    {
        basicView.translatesAutoresizingMaskIntoConstraints = (false)
        bigImage.translatesAutoresizingMaskIntoConstraints = (false)
        titleTextView.translatesAutoresizingMaskIntoConstraints = (false)
        discountLabel.translatesAutoresizingMaskIntoConstraints = (false)
        salePriceLabel.translatesAutoresizingMaskIntoConstraints = (false)
        oldPriceLabel.translatesAutoresizingMaskIntoConstraints = (false)
        indicator.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["basicView":basicView,"bigImage":bigImage,"titleTextView":titleTextView,"discountLabel":discountLabel,"salePriceLabel":salePriceLabel,"oldPriceLabel":oldPriceLabel,"indicator":indicator]
        
        
        ////basicView
        let basicViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[basicView]-10-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewH)
        
        let basicViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[basicView]-5-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        contentView.addConstraints(basicViewV)
        
        
        ////bigImage
        let bigImageH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage(180)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImageH)
        
        let bigImageV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[bigImage]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(bigImageV)
        
        
        ////indicator
        let indicatorH = NSLayoutConstraint.constraintsWithVisualFormat("H:|-60-[indicator(60)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        bigImage.addConstraints(indicatorH)
        
        let indicatorV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-60-[indicator(60)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        bigImage.addConstraints(indicatorV)
        
        
        
        ////titleTextView
        let titleTextViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:[bigImage][titleTextView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleTextViewH)
        
        let titleTextViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:|[titleTextView]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(titleTextViewV)
        
        
        ////discountLabel
        let discountLabelH = NSLayoutConstraint.constraintsWithVisualFormat("H:[bigImage][discountLabel]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(discountLabelH)
        
        let discountLabelV = NSLayoutConstraint.constraintsWithVisualFormat("V:[discountLabel(20)][salePriceLabel]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(discountLabelV)
        
        
        ////salePriceLabel oldPriceLabel 這兩個水平位置 和寬度
        let salePriceLabelH = NSLayoutConstraint.constraintsWithVisualFormat("[bigImage][salePriceLabel(==oldPriceLabel)][oldPriceLabel(==salePriceLabel)]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(salePriceLabelH)
        
        ////salePriceLabel的垂直位置和高度
        let salePriceLabelV = NSLayoutConstraint.constraintsWithVisualFormat("V:[salePriceLabel(20)]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(salePriceLabelV)
        
        
        ////oldPriceLabel
//        let oldPriceLabelH = NSLayoutConstraint.constraintsWithVisualFormat("H:[salePriceLabel][oldPriceLabel]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
//        basicView.addConstraints(oldPriceLabelH)
        
        let oldPriceLabelV = NSLayoutConstraint.constraintsWithVisualFormat("V:[oldPriceLabel(20)]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        basicView.addConstraints(oldPriceLabelV)
        
        
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

        //// Configure the view for the selected state
    }

}
