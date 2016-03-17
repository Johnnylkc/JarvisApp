//
//  CatchVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/17.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class CatchVC: UIViewController {

    let mainImage = UIImageView()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        allUI()

    }


    func allUI()
    {
        self.view.backgroundColor = UIColor.whiteColor()
        
        mainImage.frame = CGRectMake(0, 0, 300, 200)
        mainImage.center = CGPointMake(self.view.frame.size.width/2,200)
        mainImage.backgroundColor = UIColor.grayColor()
        self.view.addSubview(mainImage)
        
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
