//
//  MainTVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/24.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class MainTVC: UITableViewController ,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
    
    var shootImage = UIImage()
    var searchBar = UISearchBar()
    
    
    var shopInfoArray : [shopData] =
    [shopData(userImage: "004", bigImage: "007", titleLabel: "Royal Oak", contentText: "儘管奧克拉荷馬雷霆在第4節剩下不到5分鐘時還握有11分領先，但最終他們不敵Stephen Curry驚人的三分球演出，在延長1節後於主場以3分之差飲恨。賽後雷霆總教練Billy Donovan表示，球員們都已經盡力了。雷霆雖然落敗，但勇士也是在經過1節延長後，才靠著Curry讓人目瞪口呆的超大號三分球險勝，Donovan說：「我覺得所有球員們都已經盡了全力，有很多很好的表現。像這樣差點贏球當然讓人失望，但我認為在我們已經盡了全力，在防守上能花這麼多精力，如此專注的情況下，我們還是能從中獲得許多經驗。」第4節末勇士步步逼近，但Kevin Durant在剩下14秒時飆進三分球，讓領先的雷霆大有機會勝出。但勇士Klay Thompson快速切入攻下2分後，勇士沒有選擇犯規戰術，而是全力防守，結果被包夾的Durant不僅出現傳球失誤，還對Andre Iguodala犯規，讓勇士罰進2球逼出延長賽。儘管奧克拉荷馬雷霆在第4節剩下不到5分鐘時還握有11分領先，但最終他們不敵Stephen Curry驚人的三分球演出，在延長1節後於主場以3分之差飲恨。賽後雷霆總教練Billy Donovan表示，球員們都已經盡力了。雷霆雖然落敗，但勇士也是在經過1節延長後，才靠著Curry讓人目瞪口呆的超大號三分球險勝"),
    
        shopData(userImage: "005", bigImage: "008", titleLabel: "Elly Kichen", contentText: "照片中展示 6 種不同顏色的外殼，設計和現在 Apple 官方 iPhone 6s 外殼吻合。包括相機穿孔的黑邊設計和 Apple 標誌都有。不過顏色就和現在那些不同，有淺藍、青綠、黃、粉紅、深橙、深藍等等。不過這些並不代表 iPhone SE 本身的顏色，因為 iPhone SE 是金屬機身，而之前消息指機身顏色有太空灰、銀色、玫瑰金三種。有趣的是仔細留意，前後兩排外殼的大小並不一樣，後面一排稍為大一點。如果這些真的是 Apple 官方出品，或許會同時推出 iPhone SE 和 iPhone 6s 版本？儘管奧克拉荷馬雷霆在第4節剩下不到5分鐘時還握有11分領先，但最終他們不敵Stephen Curry驚人的三分球演出，在延長1節後於主場以3分之差飲恨。賽後雷霆總教練Billy Donovan表示，球員們都已經盡力了。雷霆雖然落敗，但勇士也是在經過1節延長後，才靠著Curry讓人目瞪口呆的超大號三分球險勝"),
        
        shopData(userImage: "006", bigImage: "bird", titleLabel: "Cafe Deadend", contentText: "來自美國華盛頓大學的開發團隊，是透過先將一個設備插上插座，讓這個插座產生類比訊號，再經由 Passive Wi-Fi 感應器，將訊號轉變成數位（比起類比訊號，數位訊號非常節能）。由於這個轉變過程幾乎不需要能量，使得這款分享器可以不停地產生極低能量的訊號供各種設備使用，創造極低的總耗能。此外，雖說是低能量，但它的涵蓋範圍還算是相對合理，廣達 100 英呎，相當於 30.5 公尺，足夠應付一般的小家庭。不過雖然它非常節能，很適合日後應該會陸續出現的物聯網小物，但它的網速實在和本世紀以來發展成熟的當前 Wi-Fi 分享器差別不小。事實上，現在的 Wi-Fi 分享器，理論上限大概都能拉到至少每秒 300 mb，但 Passive Wi-Fi 卻只有 11 mb。儘管奧克拉荷馬雷霆在第4節剩下不到5分鐘時還握有11分領先，但最終他們不敵Stephen Curry驚人的三分球演出，在延長1節後於主場以3分之差飲恨。賽後雷霆總教練Billy Donovan表示，球員們都已經盡力了。雷霆雖然落敗，但勇士也是在經過1節延長後，才靠著Curry讓人目瞪口呆的超大號三分球險勝")]
    

    override func viewDidLoad()
    {
        super.viewDidLoad()

        ////tableView setting
        self.tableView.registerClass(MainCell.self, forCellReuseIdentifier: "cell")
        self.tableView.separatorStyle = .None
        
        let tableBackView = UIView()
        tableBackView.frame = self.tableView.frame
        
        let backImage = UIImageView(image: UIImage(named: "tableViewBackImage"))
        backImage.frame = self.tableView.frame
        tableBackView.addSubview(backImage)
        
        self.tableView.backgroundView = tableBackView
        
    
        allUI()
    }

    func allUI()
    {
        
        ////navi顏色
        navigationController?.navigationBar.barTintColor = UIColor.blackColor()

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
        let textField = searchBar.valueForKey("searchField") as! UITextField
        textField.backgroundColor = UIColor.yellowColor()
        self.navigationItem.titleView = searchBar
    
    
    }
    
    ////hamburger action
    func showSideMenu(sender:UIBarButtonItem)
    {
        let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.manageController.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
        
    }
    
    ////cameraButton action  開啟相機
    func showCamera(sender:UIBarButtonItem)
    {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .Camera
        self.presentViewController(picker, animated: true, completion: nil)
    }
    
    ////拍照後 使用拍到的照片
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        shootImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
        tableView.reloadData()
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
        return shopInfoArray.count
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
        
        let arrayForCell = shopInfoArray[indexPath.row]
        
        cell.cornerImage.image = UIImage(named: arrayForCell.userImage!)
        cell.titleLabel.text = arrayForCell.titleLabel!
        cell.bigImage.image = UIImage(named: arrayForCell.bigImage!)
        cell.textView.text = arrayForCell.contentText!
        
        
        if cell.textView.text.characters.count <= 200
        {
            cell.textView.text = cell.textView.text
        }
        else
        {
            cell.textView.text = cell.textView.text.substringToIndex(cell.textView.text.startIndex.advancedBy(120)) + "..."
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
    *///

}
