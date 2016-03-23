//
//  LoginVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/18.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class LoginVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let tableView = UITableView()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let forgetButton = UIButton()
    let loginButton = UIButton()

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        
        allUI()
        autoLayout()
        
    }

    
    
    func allUI()
    {
        self.view.backgroundColor = UIColor(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1)
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.scrollEnabled = false
        
        self.view.addSubview(tableView)
        
        
        
        
    }
    
    
    func login()
    {
        let appDeltgate : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDeltgate.manageController.modalTransitionStyle = .CrossDissolve
        self.presentViewController(appDeltgate.manageController, animated: true, completion: nil)
      
    }
    

   
    
    /////tableview datasource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: .Value1, reuseIdentifier: "cell")
        
//        switch indexPath.row
//        {
//        
//            
//        
//            
//       
//        }
        
        
        return cell
     
    }
    
    
    func autoLayout()
    {
        tableView.translatesAutoresizingMaskIntoConstraints = (false)

        
        let dic = ["tableView":tableView]
        
        
        /////tableView
        let tableView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|[tableView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(tableView_H)
        
        let tableView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-130-[tableView(87)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(tableView_V)////一個static cell 高度是 44
        
        
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
