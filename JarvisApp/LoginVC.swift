//
//  LoginVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/16.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    let fbButton = UIButton()

    override func viewDidLoad()
    {
        super.viewDidLoad()


    
    
    
    }
    
    func allUI()
    {
        fbButton.frame = CGRectMake(self.view.frame.size.width/4, 300, self.view.frame.size.width/4, 50)
        fbButton.setTitle("Facebook登入", forState: .Normal)
        
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
