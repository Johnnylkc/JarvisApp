//
//  ThirdTVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/2/29.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class ThirdTVC: UITableViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    let searchBar = UISearchBar()
    var shootImage = UIImage()
    
    var cityInfo : [cityData] = [cityData(userImage: "johnny", cityImage: "301", titleText: "破退休潮傳言教局：僅474教師申退", subText: "教育局強調，市府尊重申請退休人員的意願", contentText: "針對外傳今年台南校長老師爆退休潮，教育局表示，今年申請退休人數是有比較多，但經溝通慰留後，目前教師僅剩四百七十四人提出申請，校長部分核准十八人退休，與去年差不多，並無爆集體退休潮的情形。市府教育局表示，台南市升格直轄市後，對於學校教職員申請退休案，是依《教育人員退休條例》的規定辦理，原則上均予以充分尊重。教育局指出，去年教師申請退休人數為四百七十九人，今年原申請人數雖增加至五百八十七人，但仍屬常態性增減範圍內，而且經各校溝通慰留後，目前僅剩四百七十四位教師提出申請。校長部分經市府積極慰留後，共核准十八人退休 教育局說，校長及教師申退原因有個人健康、生涯規劃、工作壓力及公教年金改革等綜合因素，近年公教退撫年金改革制度的不確定性，也是教育人員申請退休的重要考量原因之一。教育局強調，市府尊重申請退休人員的意願，也肯定他們多年來教職生涯對學生的付出，但還是希望這些教學經驗豐富且具服務熱忱的人員能繼續留在教育崗位上傳承經驗。"),
    
        cityData(userImage: "men", cityImage: "302", titleText: "藍綠並非意識形態的對立，而是我者與他者的對立", subText: "為免主體意識非驢非馬，去中華化是台獨必經之路。", contentText: "基於轉型正義的考慮，民進黨高志鵬提出廢除「國父」遺像的議案。不出所料，被挑動神經的藍派空群反撲。曾代表新黨出選的葉毓蘭就以南非為例；表示以白人總統克魯格命名的國家公園亦沒有在黑人執政後易名，園內銅像依然屹立。在有意無意之間，葉教授明顯忽略了一些重要事實。孫文代表的，是一個殖民台灣的犯罪集團；不像南非、美國白人經已在地化。鄭南榕是後住民第二代，但沒有台灣人會將他視為他者。正如葉教授所言，克魯格是帶領南非擺脫英殖的民族英雄。種族仇恨亦隨著告別隔離政策而化解。外來政權卻依舊壓迫、搶掠台灣人，在經已民主化的今天。葉教授指責民進黨對孫文、國民黨充滿敵意，在尖閣、中國慰安婦等議題卻盡顯「軟弱」。筆者百思不得其解，就尖閣、中國慰安婦等議題跟日本交惡的是「兩個中國」，台灣在地政黨為何要跟你們操心？再講，國共就尖閣、中國慰安婦等議題處處刁難不過為了將日本不予承認的開羅宣言、波茨坦公告變成事實。簡單來說，就是針對台灣。"),
        
        cityData(userImage: "004", cityImage: "303", titleText: "鄭文燦：要讓桃園宜居宜業", subText: "身為桃園人為榮，打造桃園為「宜居宜業」的城市", contentText: "桃園市長鄭文燦上任第2年，舉辦2016台灣燈會創造多項第1，他說，已有愈來愈多民眾以身為桃園人榮，更要打造桃園為「宜居宜業」的城市。桃園是最晚成為台灣「第6都」，但鄭文燦強調，桃園有很大潛力補足落後其他5都的重大建設，在升格直轄市第2年的建設黃金時期，希望捷運、河川整治、下水道系統、台鐵桃園段地下化、市立美術館及圖書總館等重大建設都能定案、動工。去年底，桃園市府研究發展考核委員會調查鄭文燦就職1周年施政滿意度，喜歡、認同桃園市的市民分別高達91.5％及91.6％，認為住在桃園市幸福的有86.7％，以身為桃園市民為榮的86.9％。鄭文燦說：「我是跨越族群、政黨藩籬當選桃園首任直轄市長，市民也不打折扣支持蔡英文當選總統。」他已告訴蔡英文要「做好、做滿」市長來完成桃園轉型夢想，蔡英文就職總統後，也應該會全力支持桃園。蔡英文政見之一「亞洲矽谷」就落腳桃園市，看好桃園飛行距離香港、上海、首爾、東京、新加坡等亞洲5大城市都不到3小時，還擁有29個工業區，萬餘家工廠，車程距離新竹的資通訊產業聚落及台北的軟體產業和企業總部都1小時以內，要在這裡建構一個「亞太創新研發人才交流中心」，提供平台，協助台灣與國際年輕人創業和交流。")]


    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.tableView.registerClass(ThirdCell.self, forCellReuseIdentifier: "cell")
        self.tableView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1)
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
        searchBar.placeholder = "看你要搜尋什麼"
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
        return cityInfo.count
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        var rowHeight : CGFloat
        
        if self.view.frame.size.width <= 320
        {
            rowHeight = 160
        }
        else
        {
            rowHeight = 190
        }
    
        return rowHeight
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ThirdCell
        
        cell.selectionStyle = .None
        cell.backgroundColor = UIColor.clearColor()
        
        let arrayForCell = cityInfo[indexPath.row]
        
        cell.bigImage.image = UIImage(named: arrayForCell.cityImage!)
        cell.littleImage.image = UIImage(named: arrayForCell.userImage!)
        cell.titleTextView.text = arrayForCell.titleText
        cell.subTextView.text = arrayForCell.subText
        cell.contentTextView.text = arrayForCell.contentText

        
        
       
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
