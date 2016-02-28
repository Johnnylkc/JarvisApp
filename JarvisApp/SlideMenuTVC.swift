//
//  SlideMenuTVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/28.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class SlideMenuTVC: UITableViewController {
    
    let oneButton = UIButton()
    let twoButton = UIButton()
    let threeButton = UIButton()
    let lineView = UIView()
    let fourButton = UIButton()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tableView.separatorStyle = .None

        allUI()
        
    }

    func allUI()
    {
        //// 這些按鈕和lineView都在cellForRow addSubView
        
        oneButton.frame = CGRectMake(10, 20, 260, 60)
        oneButton.backgroundColor = UIColor.lightGrayColor()
        oneButton.setTitle("第一個按鈕", forState: .Normal)
        oneButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        oneButton.titleLabel?.font = UIFont.systemFontOfSize(20)
        oneButton.addTarget(self, action: "oneButtonClick:", forControlEvents: .TouchDown)
        
        twoButton.frame = CGRectMake(10, 10, 260, 60)
        twoButton.backgroundColor = UIColor.lightGrayColor()
        twoButton.setTitle("第二個按鈕", forState: .Normal)
        twoButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        twoButton.titleLabel?.font = UIFont.systemFontOfSize(20)
        twoButton.addTarget(self, action: "twoButtonClick:", forControlEvents: .TouchDown)
        
        threeButton.frame = CGRectMake(10, 10, 260, 60)
        threeButton.backgroundColor = UIColor.lightGrayColor()
        threeButton.setTitle("第三個按鈕", forState:.Normal)
        threeButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        threeButton.titleLabel?.font = UIFont.systemFontOfSize(20)
        threeButton.addTarget(self, action: "threeButtonClick:", forControlEvents: .TouchDown)
        
        lineView.frame = CGRectMake(10, 0 , 260, 2)
        lineView.backgroundColor = UIColor.lightGrayColor()
        lineView.layer.cornerRadius = 2
        lineView.clipsToBounds = true
        
        fourButton.frame = CGRectMake(10, 10, 260, 60)
        fourButton.backgroundColor = UIColor.lightGrayColor()
        fourButton.setTitle("第四個按鈕", forState: .Normal)
        fourButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        fourButton.titleLabel?.font = UIFont.systemFontOfSize(20)
        fourButton.addTarget(self, action: "fourButtonClick:", forControlEvents: .TouchDown)
        
        
    }
    
    
    func oneButtonClick(sender:UIButton)
    {
        print("你按了第一個按鈕")
    }
    
    func twoButtonClick(sender:UIButton)
    {
        print("你按了第二個按鈕")
    }
    
    func threeButtonClick(sender:UIButton)
    {
        print("你按了第三個按鈕")
    }
    
    func fourButtonClick(sender:UIButton)
    {
        print("你按了第四個按鈕")
    }
    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 8
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        var rowHeight : CGFloat
        
        if indexPath.row == 0
        {
            rowHeight = 90
        }
        else
        {
            rowHeight = 80
        }
        
        return rowHeight
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        
        cell.selectionStyle = .None
        
        switch indexPath.row
        {
        case 0 :
            cell.addSubview(oneButton)
            
        case 1:
            cell.addSubview(twoButton)
            
        case 2:
            cell.addSubview(threeButton)
            
        case 3:
            cell.addSubview(lineView)
            cell.addSubview(fourButton)
            
        default:
            break
            
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
