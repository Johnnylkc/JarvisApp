//
//  SecondTVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/25.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
////

import UIKit

class SecondTVC: UITableViewController , UITextViewDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    var searchBar = UISearchBar()
    var shootImage = UIImage()
    
    var newsInfo : [newsData] = [newsData(newsImage: "201", newsText: "第88屆奧斯卡金像獎頒獎典禮主持人克里斯洛克，昨晚找來三名亞裔孩童上舞台揶揄他們，台裔球星林書豪在自己推特頁面回擊說，厭倦美國歧視亞洲人卻覺得很酷的心態。克里斯洛克（Chris Rock）拿著美國人認為亞裔精通數字的刻板印象以及童工當笑柄，林書豪推特貼文回擊說，「這種情況什麼時候才能改變倦美國歧視亞洲人卻覺得很酷很OK的心態。克里斯洛克昨晚主持頒獎典禮，開場10分鐘獨白大談好萊塢種族歧視爭議，沒想到自己在主持頒獎典禮過程中，卻找來3個手提公事包的亞裔小朋友，揶揄他們是會計師事務所的會計師。他自以為幽默表示，「他們派了最敬業、最精準與最努力的工作代表，歡迎朱明、包玲與莫斯科維茨」，又說如果有人不喜歡這個玩笑，請用你的手機發文貼推特，你的手機也是這些孩子做的"),
    
        newsData(newsImage: "202", newsText: "針對外傳今年台南校長老師爆退休潮，教育局表示，今年申請退休人數是有比較多，但經溝通慰留後，目前教師僅剩四百七十四人提出申請，校長部分核准十八人退休，與去年差不多，並無爆集體退休潮的情形。市府教育局表示，台南市升格直轄市後，對於學校教職員申請退休案，是依《教育人員退休條例》的規定辦理，原則上均予以充分尊重。教育局指出，去年教師申請退休人數為四百七十九人，今年原申請人數雖增加至五百八十七人，但仍屬常態性增減範圍內，而且經各校溝通慰留後，目前僅剩四百七十四位教師提出申請。校長部分經市府積極慰留後，共核准十八人退休。教育局說，校長及教師申退原因有個人健康、生涯規劃、工作壓力及公教年金改革等綜合因素，近年公教退撫年金改革制度的不確定性，也是教育人員申請退休的重要考量原因之一。教育局強調，市府尊重申請退休人員的意願，也肯定他們多年來教職生涯對學生的付出，但還是希望這些教學經驗豐富且具服務熱忱的人員能繼續留在教育崗位上傳承經驗。"),
        
        newsData(newsImage: "203", newsText: "基於轉型正義的考慮，民進黨高志鵬提出廢除「國父」遺像的議案。不出所料，被挑動神經的藍派空反撲。曾代表新黨出選的葉毓蘭就以南非為例；表示以白人總統克魯格命名的國家公園亦沒有在黑人執政後易名，園內銅像依然屹立。在有意無意之間，葉教授明顯忽略了一些重要事實。孫文代表的，是一個殖民台灣的犯罪集團；不像南非、美國白人經已在地化。鄭南榕是後二代但沒有台灣人會將他視為他者。正如葉教授所言，克魯格是帶領南非擺脫英殖的民族英雄。種族仇恨亦隨著告別隔離政策而化解。外來政權卻依舊壓迫、搶掠台灣人，在經已民主化的今天。葉教授指責民進黨對孫文、國民黨充滿敵意，在尖閣、中國慰安婦等議題卻盡顯「軟弱」。筆者百思不得其解，就尖閣、中國慰安婦等議題跟日本交惡的是「兩個中國」，台灣在地政黨為何要跟你們操心？再講，國共就尖閣、中國慰安婦等議題處處刁難不過為了將日本不予承認的開羅宣言、波茨坦公告變成事實。簡單來說，就是針對台灣。每當台灣有難，日本總是第一時間伸出援手。台灣人決不能恩將仇報。現任首相安倍待台灣亦向來友善。台灣人一定要珍惜自己和日本人之間的友誼。")]

    override func viewDidLoad()
    {
        super.viewDidLoad()

        ////tableView setting
        self.tableView.registerClass(SecondCell.self, forCellReuseIdentifier: "cell")
        self.tableView.backgroundColor = UIColor.yellowColor()
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
       
        navigationController?.navigationBar.barTintColor = UIColor.blackColor()

        //////navi 左邊的hamburger button
        let hamburgerButton = UIButton(frame: CGRectMake(0,0,25,25))
        hamburgerButton.setBackgroundImage(UIImage(named: "hamburger"), forState: .Normal)
        hamburgerButton.addTarget(self, action: "showSideMenu:", forControlEvents: .TouchUpInside)
        
        let leftBarButton = UIBarButtonItem(customView: hamburgerButton)
        self.navigationItem.leftBarButtonItem = leftBarButton
        self.navigationItem.leftBarButtonItem!.tintColor = UIColor.yellowColor()
        
        //// navi右邊的相機按鈕
        let cameraButton = UIButton(frame: CGRectMake(0,0,28,28))
        cameraButton.setBackgroundImage(UIImage(named: "camera"), forState: .Normal)
        cameraButton.addTarget(self, action: "showCamera:", forControlEvents: .TouchUpInside)
        
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
