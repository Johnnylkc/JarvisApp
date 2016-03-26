//
//  LoginVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/18.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
////////

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
        self.view.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1)
        self.title = "登入"
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.scrollEnabled = false
        automaticallyAdjustsScrollViewInsets = false
        self.view.addSubview(tableView)
        
        emailTextField.frame = CGRectMake(15, 7,self.view.frame.size.width - 20, 30)
        emailTextField.placeholder = "電子郵件"
        emailTextField.borderStyle = .None
        emailTextField.keyboardType = .EmailAddress
        //emailTextField.backgroundColor = UIColor.yellowColor()
        
        passwordTextField.frame = emailTextField.frame
        passwordTextField.placeholder = "密碼"
        passwordTextField.secureTextEntry = true
        passwordTextField.borderStyle = .None
        //passwordTextField.backgroundColor = UIColor.yellowColor()
        
        loginButton.backgroundColor = UIColor(red: 46/255.0, green: 182/255.0, blue: 76/255.0, alpha: 1)
        loginButton.layer.cornerRadius = 5
        loginButton.clipsToBounds = true
        loginButton.setTitle("登入", forState: .Normal)
        loginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginButton.addTarget(self, action: #selector(LoginVC.login(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(loginButton)
        
        
    }
    
    
    func login()
    {
        let appDeltgate : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDeltgate.manageController.modalTransitionStyle = .CrossDissolve
        self.presentViewController(appDeltgate.manageController, animated: true, completion: nil)
      
    }
    
    func login(sender:UIButton)
    {
        print("你按了登入喔")
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
        cell.selectionStyle = .None

        
        switch indexPath.row
        {
        case 0:
            cell.addSubview(emailTextField)
            
        case 1:
            cell.addSubview(passwordTextField)
        
            
        default:
            break
       
        }
        
        
        return cell
     
    }
    
    
    func autoLayout()
    {
        tableView.translatesAutoresizingMaskIntoConstraints = (false)
        loginButton.translatesAutoresizingMaskIntoConstraints = (false)

        
        let dic = ["tableView":tableView,"loginButton":loginButton]
        
        
        /////tableView
        let tableView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|[tableView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(tableView_H)
        
        let tableView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-130-[tableView(87)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(tableView_V)////一個static cell 高度是 44
        
        ////loginButton
        let loginButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[loginButton]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(loginButton_H)
        
        let loginButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[tableView]-30-[loginButton(40)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(loginButton_V)
        
        
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
