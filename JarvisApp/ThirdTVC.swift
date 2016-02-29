//
//  ThirdTVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/29.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class ThirdTVC: UITableViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.tableView.registerClass(ThirdCell.self, forCellReuseIdentifier: "cell")
        self.tableView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1)
        
    
    
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
        return 200
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ThirdCell
        
        cell.selectionStyle = .None
        cell.backgroundColor = UIColor.clearColor()
        
        cell.bigImage.image = UIImage(named: "bird")
        cell.titleTextView.text = "主標題 看你想放多少，不管打多少，他都會自動調整高度"
        cell.subTextView.text = "副標題的位置，也是想打多少就打多少，自適應的喔"
        cell.contentTextView.text = "這裡放內文的地方，字體最小，一樣也是看你要打多少，他自己會調整高度，想寫什麼就寫什麼，這邊的容納得下，你說這樣好不好此外史陶德邁爾也說，如果林書豪留在尼克，一切將會很酷，但並不是每個人都是林書豪躍居球星時的球迷，所以林書豪在尼克沒待多久。史陶德邁爾盛讚林書豪是很棒的隊友，打球認真，也為他的崛起感到驕傲。史陶德邁爾表示，林書豪那時正成為巨星，但他不認為當時每個人都為這感到高興。史陶德邁爾未點名尼克當時是誰對林書豪崛起吃味，但外界認為史陶德邁爾指的就是安東尼"

        cell.littleImage.image = UIImage(named: "men")
        
       
        if cell.contentTextView.text.characters.count <= 200
        {
            cell.contentTextView.text = cell.contentTextView.text
        }
        else
        {
            cell.contentTextView.text = cell.contentTextView.text.substringToIndex(cell.contentTextView.text.startIndex.advancedBy(90)) + "..."
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
