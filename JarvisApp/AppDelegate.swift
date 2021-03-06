//
//  AppDelegate.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/24.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
////////

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var manageController = MMDrawerController() ////側邊選單要用的content controller
    
    var tabIcon = UIImageView()
    var selectedIcon = UIImageView()
    var tabBarController = UITabBarController()
    
    let customButton = UIButton()


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        
        let onePage = OneVC()
        let onePageNav = UINavigationController(rootViewController: onePage)
        onePage.tabBarItem = UITabBarItem(title: "新派對", image: UIImage(named: "001"), selectedImage: UIImage(named: "001"))
        
        let twoPage = TwoVC()
        let twoPageNav = UINavigationController(rootViewController: twoPage)
        twoPage.tabBarItem = UITabBarItem(title: "知識寶", image:UIImage(named: "002") , selectedImage: UIImage(named: "002"))
    
       
        let threePage = SecondThreeTVC()
        let threePageNav = UINavigationController(rootViewController: threePage)
        threePage.tabBarItem = UITabBarItem(title: nil, image: UIImage(), selectedImage: UIImage())
        
        let fourPage = MainTVC()
        let fourPageNav = UINavigationController(rootViewController: fourPage)
        fourPage.tabBarItem = UITabBarItem(title: "星寶寶", image: UIImage(named: "304"), selectedImage: UIImage(named: "304"))
        
        
        let fivePage = ThirdVC()
        let fivePageNav = UINavigationController(rootViewController: fivePage)
        fivePage.tabBarItem = UITabBarItem(title: "寶寶酷", image: UIImage(named: "305"), selectedImage: UIImage(named: "305"))
        
        
        ////放在tabbar中間的按鈕
        customButton.frame = CGRectMake(0, 0, 45, 45)
        customButton.center =
            CGPointMake(tabBarController.tabBar.frame.size.width/2, tabBarController.tabBar.frame.size.height/2)
        customButton.setBackgroundImage(UIImage(named: "buttomImage"), forState: .Normal)
        customButton.layer.cornerRadius = 5
        customButton.clipsToBounds = true
        tabBarController.tabBar.addSubview(customButton)
        
        
        let controllers = [onePageNav,twoPageNav,threePageNav,fourPageNav,fivePageNav]
        tabBarController.viewControllers = controllers
        ////tabbar color
        tabBarController.tabBar.barTintColor = UIColor.blackColor()
        UITabBar.appearance().tintColor = UIColor.yellowColor()

        
        ////側邊選單的設定
        let slidePage = SlideMenuTVC()
        manageController = MMDrawerController(centerViewController: tabBarController, leftDrawerViewController: slidePage)

        manageController.maximumLeftDrawerWidth = 280
        manageController.openDrawerGestureModeMask = MMOpenDrawerGestureMode.None
        manageController.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.TapCenterView
        
        ////重點重點 後來我知道為什麼了 其實可以在appDelegate把UITabBarController的設定先做好 反正到最後tabBarController都是要接到MMDrawerController的 所以之後的接口就是MMDrawerController！！
        
        let startPage = manageController
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.rootViewController = startPage
        self.window?.makeKeyAndVisible()
        
        
        
        return true
    }


    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

