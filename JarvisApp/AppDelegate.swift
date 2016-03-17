//
//  AppDelegate.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/24.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var manageController = MMDrawerController() ////側邊選單要用的content controller
    
    var tabIcon = UIImageView()
    var selectedIcon = UIImageView()
    var tabBarController = UITabBarController()


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        
        let onePage = SecondTVC()
        let onePageNav = UINavigationController(rootViewController: onePage)
        //onePageNav.navigationBar.barTintColor = UIColor.blackColor()
        onePage.tabBarItem = UITabBarItem(title: "新派對", image: UIImage(named: "001"), selectedImage: UIImage(named: "001"))
        
        let twoPage = SecondTwoTVC()
        let twoPageNav = UINavigationController(rootViewController: twoPage)
        twoPage.tabBarItem = UITabBarItem(title: "知識寶", image:UIImage(named: "002") , selectedImage: UIImage(named: "002"))
    
       
        let threePage = SecondThreeTVC()
        let threePageNav = UINavigationController(rootViewController: threePage)
        threePage.tabBarItem = UITabBarItem(title: "第三頁", image: UIImage(named: "009"), selectedImage: UIImage(named: "009"))
        
        let fourPage = MainTVC()
        let fourPageNav = UINavigationController(rootViewController: fourPage)
        fourPage.tabBarItem = UITabBarItem(title: "星寶寶", image: UIImage(named: "304"), selectedImage: UIImage(named: "304"))
        
        
        
        let fivePage = ThirdVC()
        let fivePageNav = UINavigationController(rootViewController: fivePage)
        fivePage.tabBarItem = UITabBarItem(title: "寶寶酷", image: UIImage(named: "305"), selectedImage: UIImage(named: "305"))
        
        
        
        let controllers = [onePageNav,twoPageNav,threePageNav,fourPageNav,fivePageNav]
        tabBarController.viewControllers = controllers
        tabBarController.tabBar.barTintColor = UIColor.blackColor()
        UITabBar.appearance().tintColor = UIColor.yellowColor()

        
        ////側邊選單的設定
        let slidePage = SlideMenuTVC()
        manageController = MMDrawerController(centerViewController: tabBarController, leftDrawerViewController: slidePage)

        manageController.maximumLeftDrawerWidth = 280
        manageController.openDrawerGestureModeMask = MMOpenDrawerGestureMode.PanningCenterView
        manageController.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.TapCenterView
        
        
        
        
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.rootViewController = manageController
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

