//
//  CatchVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/17.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage


var catchDic01 = NSDictionary()////在ThirdVC接了東西
var catchDic02 = NSDictionary()

class CatchVC: UIViewController {

    let mainImage = UIImageView()
    let productName = UILabel()
    

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        allUI()
        

    }


    func allUI()
    {
        self.view.backgroundColor = UIColor.whiteColor()
        
        mainImage.frame = CGRectMake(0, 0, 300, 300)
        mainImage.center = CGPointMake(self.view.frame.size.width/2,200)
        mainImage.backgroundColor = UIColor.grayColor()
        self.view.addSubview(mainImage)
        
        let imageURL = "http://magipea.com/admin/uploads/" + "\(catchDic02["image"] as! String)"
        Alamofire.request(.GET, imageURL).responseImage { response in
            
            if let jsonImage = response.result.value
            {
                dispatch_async(dispatch_get_main_queue())
                {
                    self.mainImage.image = jsonImage
                }
            }
        }

        
        
        productName.frame = CGRectMake(0, 0, 300, 30)
        productName.center = CGPointMake(150, 300)
        productName.textColor = UIColor.redColor()
        productName.alpha = 0
        productName.font = UIFont.boldSystemFontOfSize(15)
        mainImage.addSubview(productName)
        productName.text = catchDic01["name"] as? String
        
        UIView.animateWithDuration(0.5, delay: 0.7, options: .BeginFromCurrentState, animations: { () -> Void in
            
            self.productName.center = CGPointMake(150, 280)
            self.productName.alpha = 1
            
            }, completion: nil)
        
        
    }
    
    
    
    
    
    
    
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
