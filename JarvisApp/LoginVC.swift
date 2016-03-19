//
//  LoginVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/18.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let forgetButton = UIButton()
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
        self.view.backgroundColor = UIColor.whiteColor()
        
       
        emailTextField.placeholder = "email"
        emailTextField.borderStyle = .RoundedRect
        self.view.addSubview(emailTextField)
        
        passwordTextField.placeholder = "password"
        passwordTextField.borderStyle = .RoundedRect
        self.view.addSubview(passwordTextField)
        
        //forgetButton.backgroundColor = UIColor.redColor()
        forgetButton.setTitle("忘記密碼", forState: .Normal)
        forgetButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        forgetButton.contentHorizontalAlignment = .Left
        forgetButton.titleLabel?.font = UIFont.systemFontOfSize(15)
        forgetButton.addTarget(self, action: "forget", forControlEvents: .TouchUpInside)
        self.view.addSubview(forgetButton)
        
        signUpButton.backgroundColor = UIColor.redColor()
        signUpButton.setTitle("註冊", forState: .Normal)
        signUpButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        signUpButton.addTarget(self, action: "signUp", forControlEvents: .TouchUpInside)
        self.view.addSubview(signUpButton)
        
        loginButton.backgroundColor = UIColor.blueColor()
        loginButton.setTitle("登入", forState: .Normal)
        loginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginButton.addTarget(self, action: "login", forControlEvents: .TouchUpInside)
        self.view.addSubview(loginButton)
        
        
        
        
        
        
        
    }
    
    
    func login()
    {
        let appDeltgate : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDeltgate.manageController.modalTransitionStyle = .CrossDissolve
        self.presentViewController(appDeltgate.manageController, animated: true, completion: nil)
      
    }
    
    func forget()
    {
        print("你按了忘記密碼")
    }
    
    func signUp()
    {
        print("註冊 你按了註冊")
    }
    
    func autoLayout()
    {
        emailTextField.translatesAutoresizingMaskIntoConstraints = (false)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = (false)
        forgetButton.translatesAutoresizingMaskIntoConstraints = (false)
        signUpButton.translatesAutoresizingMaskIntoConstraints = (false)
        loginButton.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["emailTextField":emailTextField,"passwordTextField":passwordTextField,"forgetButton":forgetButton,"signUpButton":signUpButton,"loginButton":loginButton]
        
        ////emailTextField
        let emailTextField_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[emailTextField]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(emailTextField_H)
        
        let emailTextField_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-150-[emailTextField(30)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(emailTextField_V)
        
        ////passwordTextField
        let passwordTextField_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[passwordTextField]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(passwordTextField_H)
        
        let passwordTextField_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[emailTextField]-20-[passwordTextField(30)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(passwordTextField_V)
        
        ////forgetButton
        let forgetButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[forgetButton(100)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(forgetButton_H)
        
        let forgetButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[passwordTextField]-5-[forgetButton(20)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(forgetButton_V)
        
        ////signUpButton
        let signUpButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[signUpButton(120)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(signUpButton_H)
        
        let signUpButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[passwordTextField]-100-[signUpButton(40)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(signUpButton_V)
        
        ////loginButton
        let loginButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:[loginButton(120)]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(loginButton_H)
        
        let loginButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[passwordTextField]-100-[loginButton(40)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
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
