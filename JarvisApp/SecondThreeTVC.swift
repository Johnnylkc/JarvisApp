//
//  SecondThreeTVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/17.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class SecondThreeTVC: UITableViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    var searchBar = UISearchBar()
    var shootImage = UIImage()

    
    var newsInfo : [newsData] = [newsData(newsImage: "007", newsText: "根據謄本資料顯示，買下此戶的神祕大戶為蔡姓自然人，是與建商的一手交易，且並未有銀行貸款，5.1億元全部以現金購買。「松濤苑」最新交易單價繼續蟬聯北市豪宅最高單價第5名，僅次於「仁愛帝寶」、「宜華國際」、「皇翔御琚」及「元大?悅」，並坐穩中正區豪宅一哥地位。台灣房屋智庫召集人劉怡蓉分析，「松濤苑」已有4筆實價揭露資訊，最新成交的3樓，與去年8月6樓成交單價270.6萬元相當，因「松濤苑」12樓頂樓，潤泰集團總裁尹衍樑在102年以每坪單價260萬元購得，推估單價270萬元已成為「松濤苑」的定錨價。劉怡蓉表示，此筆交易為房地合一上路以來第1筆豪宅交易，因北市自103年7月1日起調高新建房屋構造標準單價，以致新成屋房屋稅平均漲幅1.6倍，而「松濤苑」建築完成日為102年10月，稅制優勢將成為豪宅成交的關鍵之一。"),
        
        newsData(newsImage: "008", newsText: "疾管署結核病防治專家委員、台大醫院胸腔內科醫師王振源指出，結核病透過飛沫傳染，初期症狀不明顯，可能會咳嗽、有痰，嚴重時午後潮熱、夜間盜汗等，常被誤以為是感冒而延誤治療，甚至傳染給家人和朋友。衛生局疾管科長許玉芬說，新生兒注射卡介苗疫苗預防結核病，但不能終身免7分篩檢法及胸部X光巡檢，及早發現潛在結核病個案，去年共篩檢10萬6823人次，同時針對「潛伏結核感染者」進行預防性投藥治療，10年來降低結核病發病率3成。衛生局提醒，中老年人、糖尿病等慢性病患者因免疫力較差，是結核病感染高危險群，透過「潛伏結核感染治療」可有效降低結核病發生率，衛生局今年更自美引進丙型干擾素釋放試驗 (Interferon -Gamma Release Assay，IGRA)，將治療對象擴增至"),
            
        newsData(newsImage: "203", newsText: "收治病人的開業精神科醫師楊聰財表示，男子轉求助精神科之前，已經到過2家大醫院健檢，卻查不出原因，仍抱怨身體不舒服，最後就由媽媽、妹妹、姑姑以及女朋友一行人陪同到精神科就診，陣容浩大到連其他醫護人員都忍不住好奇。楊聰財說，詳細問診發現，男子家境優渥，主述每天工作上一整天的班都如臨大敵，回家就癱像一條米蟲，且對自己缺乏信心，又過度敏感，非常在意別人的反應，常因小事認為上司、同事不欣賞他、不肯定他，透過諮商釐清自己興趣、還可以做什麼，並進修技能後，才結束待業，又開始找工作。開業精神科醫師劉誠崇強調，常換工作者，的確以較欠缺考量的媽寶、草莓族較多，往往一發現工作不如預期，期待落空，或無法適應工作環境、性質的明顯變動甚至人際間的摩擦，產生職場適應障礙。劉誠崇提醒，若無法適應新工作環境，首先要能察覺就業環境改變所帶來的實際衝擊，確定壓力源為何，並瞭解自身的情緒變化，對新工作維持正面的態度，如果仍出現持續性的焦慮、煩躁、心情低落、身體不適、失眠等，則需要考慮求助精神科。")]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tableView.registerClass(SecondCell.self, forCellReuseIdentifier: "cell")
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
        hamburgerButton.addTarget(self, action: #selector(SecondThreeTVC.showSideMenu(_:)), forControlEvents: .TouchUpInside)
        
        let leftBarButton = UIBarButtonItem(customView: hamburgerButton)
        self.navigationItem.leftBarButtonItem = leftBarButton
        self.navigationItem.leftBarButtonItem!.tintColor = UIColor.yellowColor()
        
        //// navi右邊的相機按鈕
        let cameraButton = UIButton(frame: CGRectMake(0,0,28,28))
        cameraButton.setBackgroundImage(UIImage(named: "camera"), forState: .Normal)
        cameraButton.addTarget(self, action: #selector(SecondThreeTVC.showCamera(_:)), forControlEvents: .TouchUpInside)
        
        let rightBarButton = UIBarButtonItem(customView: cameraButton)
        self.navigationItem.rightBarButtonItem = rightBarButton
        
        ////searceBar
        searchBar.placeholder = "看你要搜尋什麼"
        ////改變搜尋霸裡的textField的背景色的做法
        let textField = searchBar.valueForKey("searchField") as! UITextField
        textField.backgroundColor = UIColor.yellowColor()
        self.navigationItem.titleView = searchBar
    }
    
    
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


//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return newsInfo.count
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
        
        
        let arrayForCell = newsInfo[indexPath.row]
        
        cell.bigImage.image = UIImage(named: arrayForCell.newsImage!)
        cell.textView.text = arrayForCell.newsText
        
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
