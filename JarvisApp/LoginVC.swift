//
//  LoginVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/18.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    var manageController = MMDrawerController() ////側邊選單要用的content controller

    let loginButton = UIButton()
    let customButton = UIButton()

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        
        allUI()
        
    }

    
    
    func allUI()
    {
        self.view.backgroundColor = UIColor.whiteColor()
        
        loginButton.frame = CGRectMake(0, 0, 200, 40)
        loginButton.center = CGPointMake(self.view.frame.size.width/2, 200)
        loginButton.backgroundColor = UIColor.redColor()
        loginButton.setTitle("登入", forState: .Normal)
        loginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginButton.addTarget(self, action: "login", forControlEvents: .TouchDown)
        self.view.addSubview(loginButton)
        
        
        
//        
//        let onePage = SecondTVC()
//        let onePageNav = UINavigationController(rootViewController: onePage)
//        onePage.tabBarItem =
//            UITabBarItem(title: "新派對", image: UIImage(named: "001"), selectedImage: UIImage(named: "001"))
//        
//        let twoPage = SecondTwoTVC()
//        let twoPageNav = UINavigationController(rootViewController: twoPage)
//        twoPage.tabBarItem =
//            UITabBarItem(title: "知識寶", image:UIImage(named: "002") , selectedImage: UIImage(named: "002"))
//        
//        
//        let threePage = SecondThreeTVC()
//        let threePageNav = UINavigationController(rootViewController: threePage)
//        threePage.tabBarItem =
//            UITabBarItem(title: nil, image: UIImage(), selectedImage: UIImage())
//        
//        let fourPage = MainTVC()
//        let fourPageNav = UINavigationController(rootViewController: fourPage)
//        fourPage.tabBarItem =
//            UITabBarItem(title: "星寶寶", image: UIImage(named: "304"), selectedImage: UIImage(named: "304"))
//        
//        
//        let fivePage = ThirdVC()
//        let fivePageNav = UINavigationController(rootViewController: fivePage)
//        fivePage.tabBarItem =
//            UITabBarItem(title: "寶寶酷", image: UIImage(named: "305"), selectedImage: UIImage(named: "305"))
//        
//        
//        let controllers = [onePageNav,twoPageNav,threePageNav,fourPageNav,fivePageNav]
//        let tabBarController = UITabBarController()
//        tabBarController.viewControllers = controllers
//        tabBarController.tabBar.barTintColor = UIColor.blackColor()
//        UITabBar.appearance().tintColor = UIColor.yellowColor()
//        
//        
//        ////放在tabbar中間的按鈕
//        customButton.frame = CGRectMake(0, 0, 45, 45)
//        customButton.center =
//            CGPointMake(tabBarController.tabBar.frame.size.width/2, tabBarController.tabBar.frame.size.height/2)
//        customButton.setBackgroundImage(UIImage(named: "buttomImage"), forState: .Normal)
//        customButton.layer.cornerRadius = 5
//        customButton.clipsToBounds = true
//        tabBarController.tabBar.addSubview(customButton)
//        
//        
//        ////側邊選單的設定
//        let slidePage = SlideMenuTVC()
//        manageController =
//            MMDrawerController(centerViewController: tabBarController, leftDrawerViewController: slidePage)
//        
//        manageController.maximumLeftDrawerWidth = 280
//        manageController.openDrawerGestureModeMask = MMOpenDrawerGestureMode.PanningCenterView
//        manageController.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.TapCenterView
//        
        
        
        
        
    }
    
    
    func login()
    {
        let appDeltgate : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        

        appDeltgate.manageController.modalTransitionStyle = .CrossDissolve
        self.presentViewController(appDeltgate.manageController, animated: true, completion: nil)
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be re
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
