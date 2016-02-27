//
//  SecondTVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/25.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class SecondTVC: UITableViewController , UITextViewDelegate{
    
    var searchBar = UISearchBar()


    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.tableView.registerClass(SecondCell.self, forCellReuseIdentifier: "cell")
        self.tableView.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        self.tableView.separatorStyle = .None
    
    
        allUI()
    }

    
    func allUI()
    {
        ////navi 左邊的hamburger button
        let hamburgerButton = UIButton(frame: CGRectMake(0,0,25,25))
        hamburgerButton.setBackgroundImage(UIImage(named: "hamburger"), forState: .Normal)
        hamburgerButton.addTarget(self, action: "showSideMenu:", forControlEvents: .TouchUpInside)
        
        let leftBarButton = UIBarButtonItem(customView: hamburgerButton)
        self.navigationItem.leftBarButtonItem = leftBarButton
        
        //// navi右邊的相機按鈕
        let cameraButton = UIButton(frame: CGRectMake(0,0,28,28))
        cameraButton.setBackgroundImage(UIImage(named: "camera"), forState: .Normal)
        cameraButton.addTarget(self, action: "showCamera:", forControlEvents: .TouchUpInside)
        
        let rightBarButton = UIBarButtonItem(customView: cameraButton)
        self.navigationItem.rightBarButtonItem = rightBarButton
        
        ////searceBar
        searchBar = UISearchBar()
        searchBar.placeholder = "看你要搜尋什麼"
        self.navigationItem.titleView = searchBar

    }
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 250
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! SecondCell
        cell.selectionStyle = .None
        cell.backgroundColor = UIColor.clearColor()


        cell.bigImage.image = UIImage(named: "bird")
        cell.textView.text = "他鼓勵露國學生善用台灣電腦，培養資訊應用能力，並吸取新知。安東尼特別感謝馬英九總統過去對露國提供的各項協助，使得兩國關係更加緊密。露國總督路易西(Dame Pearlette Louisy)、各部會首長及全國各中學校長與學生代表等共約300餘人出席，露國國家電視網與多家媒體也派員採訪"
        
        if cell.textView.text.characters.count <= 100
        {
            cell.textView.text = cell.textView.text
        }
        else
        {
            cell.textView.text = cell.textView.text.substringToIndex(cell.textView.text.startIndex.advancedBy(100)) + "..."
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
