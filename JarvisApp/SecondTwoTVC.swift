//
//  SecondTwoTVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/17.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class SecondTwoTVC: UITableViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    var searchBar = UISearchBar()


    var newsInfo : [newsData] = [newsData(newsImage: "306", newsText: "國民黨行管會主委林祐賢今天(16號)在國民黨中常會裡，提出黨產報告，林祐賢表示，黨產淨值約166億元，但面監察院調查和行政院列管的859筆爭議黨產，已經全部透過回贈或撤回訴訟等方式處理完畢；但未來還得保留退休黨工退休金及18%優惠利息、預留現職黨工年資結算準備金，以及回購中央黨部和地方黨部房屋土地準備金，林祐賢說『將來這些黨產處理完之後，扣除上面這些款項，如果還有剩的話，將來監察院調查和行政院列管的859筆爭議黨產，已經全部透過回贈或撤回訴訟等方式處理完畢；但未來還得保留退休黨工退休金及18%優惠利息、預留現職黨工年資結算準備金，以及回購中央黨部和地方黨部房屋土地準備金，林祐賢說『將來這些黨產處理完之後，扣除上面這些款項，如果還有剩的話，將來我們是建議把所有捐給公益團體，或是我們是建議把所有捐給公益團體，或是黨就得面對現金流量不足的12億元『就公司的經營來看，你淨值是正的，並不代表公司營運沒有問題，只要你的資金流量，或是資金調度不靈、周轉不靈，這公司隨時都會倒閉！』"),
        
        newsData(newsImage: "307", newsText: "呂桂雲立即響應。而且，拎著包包人已在松山醫院門口才向媽媽說，為了怕媽媽反對、更是不讓老人家太操心，決心之堅，如此可見。包括呂桂雲在內的百名熱血醫護，都未曾在報端披載的「抗煞英雄」之列被提及，他們出人、未「出名」卻是台灣在抗煞之役中，得以「逆轉勝」真正的戰將。黃富源說：「這些人，可能沒有人記得他們的名字，但他們勇敢的面孔，我不會忘記。」時間拉回2003年4月24日，和平醫院封院，所有已感染、未感染，已發病和健康的人全都被關在一起，壓力鍋不斷沸騰。裡面的人若不挪出可能玉石俱焚全軍覆没；但人若要挪出來，要放在哪裡，才能獲得好的照顧，又不致讓病毒擴散？一天之內成立松山專責醫院 上百醫護報名志願軍集中收治SARS的專責醫院成立勢在必行。黃富源回憶，當時總統陳水扁指示一天之內成立醫院，已精疲力竭的衛生署長涂醒哲茫然點頭。但這是不可能的事，要找地點、要清出空間、做好隔離防護設備、還要訓練人力，隨即表示，「至少要72小時。」"),
        
        
        newsData(newsImage: "308", newsText: "這次南台強震，其實早就有跡可循！去年4月中研院發表「地震政策白皮書」，提到日本地震和灣地震息息相關，根據過去經驗，日本發生規模7以上大地震，每過5~10年，台灣也會發生規模小一級的大地震，也就是說，2011年日本發生規模9的311大地震，這次美濃地震規模6.4,恐怕只是前兆，學者警告，台灣還會有規模7以上大地震。屋倒家毀，台南維冠大樓崩塌，畫面觸目驚心，數百個家庭毀了，卻只是更大地震的預告而已，中研院去年4月的地震政策白皮書，早就警告，日本和台灣同處於菲律賓和歐亞板塊地震帶，因此日本震，能量也會傳到台灣，例如，1896年日本發生規模8.5三陸強震，10年後(1906年)，台灣出現規模7.1嘉義梅山地震，1923年關東大地震，後新竹也有7.1強震，接下來1995年日本阪神地震，近5年後，台灣發生規模7.3「912大地震」，最恐怖的是，上次2011年日本311地震，規模9，依照規律，台灣將會在5到10年之間，發生規模小日本一級的大地震。")
    
    ]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.tableView.registerClass(SecondCell.self, forCellReuseIdentifier: "cell")
        self.tableView.backgroundColor = UIColor(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1)
        self.tableView.separatorStyle = .None
        
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
