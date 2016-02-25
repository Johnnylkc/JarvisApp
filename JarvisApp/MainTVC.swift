//
//  MainTVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/24.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class MainTVC: UITableViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.tableView.registerClass(MainCell.self, forCellReuseIdentifier: "cell")
        self.tableView.separatorStyle = .None
        self.tableView.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        
    
        allUI()
    }

    func allUI()
    {
        
    }
    
    
    
    
    override func didReceiveMemoryWarning()
    {
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
        return 400
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MainCell
        
        cell.backgroundColor = UIColor.clearColor()
        cell.selectionStyle = .None
        
        
        cell.cornerImage.image = UIImage(named: "johnny")
        cell.titleLabel.text = "hello bitches"
        cell.bigImage.image = UIImage(named: "003")
        cell.textView.text = "paid a visit by his David Cameron-like brother, Tomothy (Richard Goulding); Vod (Zawe Ashton, second from left) struggles with mountainous debt, and Kingsley (Joe Thomas, far left) finds a new love interest in student support officer Rosa (Ayda Field), having ended his relationship with Josie (Kimberly Nixon, third from left) last series. Meanwhile, overachieving Oregon (Charlotte Ritchie, second from right) is planning her legacy as Student Union President, while Howard (Greg McHugh, third from right) has banished himself to the cellar as “the Fritzl of revision."
        
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
