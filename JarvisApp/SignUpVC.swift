//
//  SignUpVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/23.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
////

import UIKit

class SignUpVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let tableView  = UITableView()
    let userNameTextfield = UITextField()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let signUpButton = UIButton()
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
        self.title = "註冊"
        
        let cancelButton = UIButton(frame: CGRectMake(0,0,27,27))
        cancelButton.setBackgroundImage(UIImage(named: "cancel"), forState: .Normal)
        cancelButton.addTarget(self, action: "cancel:", forControlEvents: .TouchUpInside)
        let left = UIBarButtonItem(customView: cancelButton)
        self.navigationItem.leftBarButtonItem = left
            
        
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.scrollEnabled = false
        
        automaticallyAdjustsScrollViewInsets = false
        self.view.addSubview(tableView)
        
        userNameTextfield.frame = CGRectMake(15, 7,self.view.frame.size.width - 20, 30)
        userNameTextfield.placeholder = "使用者名稱"
        userNameTextfield.borderStyle = .None

   
        
        
        emailTextField.frame = userNameTextfield.frame
        emailTextField.placeholder = "電子郵件"
        emailTextField.borderStyle = .None
        
        passwordTextField.frame = userNameTextfield.frame
        passwordTextField.placeholder = "密碼"
        passwordTextField.secureTextEntry = true
        passwordTextField.borderStyle = .None
        
        signUpButton.backgroundColor = UIColor.redColor()
        signUpButton.layer.cornerRadius = 5
        signUpButton.clipsToBounds = true
        signUpButton.setTitle("註冊", forState: .Normal)
        signUpButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        signUpButton.addTarget(self, action: "signUp:", forControlEvents: .TouchUpInside)
        self.view.addSubview(signUpButton)

        loginButton.backgroundColor = UIColor(red: 46/255.0, green: 182/255.0, blue: 76/255.0, alpha: 1)
        loginButton.layer.cornerRadius = 5
        loginButton.clipsToBounds = true
        loginButton.setTitle("登入", forState: .Normal)
        loginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginButton.addTarget(self, action: "login:", forControlEvents: .TouchUpInside)
        self.view.addSubview(loginButton)
        
        
    }
    
    func signUp(sender:UIButton)
    {
        print("你按了註冊按鈕")
    }
    
    func login(sender:UIButton)
    {
        print("你按了登入按鈕 前往登入頁")
        let controller = LoginVC()
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    func cancel(sender:UIButton)
    {
        self.view.endEditing(true)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: .Value1, reuseIdentifier: "cell")
        cell.selectionStyle = .None
        
        switch indexPath.row
        {
        case 0:
            cell.addSubview(userNameTextfield)
            
        case 1:
            cell.addSubview(emailTextField)
            
        case 2:
            cell.addSubview(passwordTextField)
            
            
        default:
            break
            
        }
        
        
        return cell
        
    }
    

    
    
    
    func autoLayout()
    {
        tableView.translatesAutoresizingMaskIntoConstraints = (false)
        signUpButton.translatesAutoresizingMaskIntoConstraints = (false)
        loginButton.translatesAutoresizingMaskIntoConstraints = (false)

        let dic = ["tableView":tableView,"signUpButton":signUpButton,"loginButton":loginButton]
        
        ////tableView
        let tableView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|[tableView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(tableView_H)
        
        let tableView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-130-[tableView(131)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(tableView_V)////一個static cell 高度是 44
        
        ////signUpButton & loginButton 水平位置與寬度
        let signUpButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[signUpButton(==loginButton)]-100-[loginButton(==signUpButton)]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(signUpButton_H)
        
        ////signUpButton 垂直位置與高度
        let signUpButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[tableView]-30-[signUpButton(40)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(signUpButton_V)
        
        ////loginButton 垂直位置與高度
        let loginButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[tableView]-30-[loginButton(40)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(loginButton_V)
        
    }
    
    
    
    
    
//    override func didReceiveMemoryWarning()
//    {
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
