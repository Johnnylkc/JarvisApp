//
//  TwoVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/4/10.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class TwoVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let tableView = UITableView()
    
    
    var jsonArray = NSMutableArray()
    var oneArray = NSMutableArray()

    override func viewDidLoad()
    {
        super.viewDidLoad()

        allUI()
        alamofireGET()
    }

    func allUI()
    {
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
        let width = self.view.frame.size.width
        let height = self.view.frame.size.height
        
        tableView.frame = CGRectMake(0, 0, width, height)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(OneCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = UIColor.grayColor()
        self.view.addSubview(tableView)
        
    }

    
    func alamofireGET()
    {
        let url = "http://magipea.com/article.php?cate=1"
        
        Alamofire.request(.GET, url).responseJSON { response in
            
            if let JSON = response.result.value
            {
                self.jsonArray = JSON as! NSMutableArray
                print(self.jsonArray)
            }
            
            
            self.tableView.reloadData()
            
        }
        
        
    }

    
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return jsonArray.count
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 300
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! OneCell
        cell.selectionStyle = .None
        cell.backgroundColor = UIColor.clearColor()
        
        let dic01 = jsonArray[indexPath.row]
        
        
        if dic01["article_image"] != nil
        {
            print(dic01["article_image"] as! String)
            
            let url = "http://lorempixel.com/470/246/"
            
            dic01["article_image"] as! String
            
            
            Alamofire.request(.GET, url).responseImage { response in
                
                if let jsonImage = response.result.value
                {
                    dispatch_async(dispatch_get_main_queue())
                    {
                        cell.bigImage.image = jsonImage
                    }
                }
                
            }
            
        }
        else
        {
            cell.bigImage.image = UIImage(named: "202")
        }
        
        
        cell.titleLabel.text = dic01["article_title"] as? String
        
        cell.articleTextView.text = dic01["article_digest"] as? String
        
        cell.addressLabel.text = dic01["location_name"] as? String
        
        cell.timeLabel.text = dic01["article_create_time"] as? String
        
        cell.likeNumLabel.text = "\(dic01["article_like_counter"] as! Int)"
        
        cell.shareNumLabel.text = "\(dic01["article_share_counter"] as! Int)"
        

        
        
        
        
        
        
        return cell
    }


}////最後了
