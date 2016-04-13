//
//  OneVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/4/10.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
////

import UIKit
import Alamofire
import AlamofireImage


class OneVC: UIViewController,UITableViewDelegate,UITableViewDataSource,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    let tableView = UITableView()
    let scrollView = UIScrollView()
    
    
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
        self.view.backgroundColor = UIColor.whiteColor()
        
        let width = self.view.frame.size.width
        let height = self.view.frame.size.height
        
        ////navi的所有設定
        navigationController?.navigationBar.barTintColor = UIColor.yellowColor()
        
        ////navi左邊搜尋鈕
        let searchButton = UIButton(frame: CGRectMake(0,0,25,25))
        searchButton.setBackgroundImage(UIImage(named: "search"), forState: .Normal)
        searchButton.addTarget(self, action: #selector(OneVC.search(_:)), forControlEvents: .TouchUpInside)
        let leftSearch = UIBarButtonItem(customView: searchButton)
        navigationItem.leftBarButtonItem = leftSearch
        
        //// navi右邊的相機按鈕
        let cameraButton = UIButton(frame: CGRectMake(0,0,30,30))
        cameraButton.setBackgroundImage(UIImage(named: "camera01"), forState: .Normal)
        cameraButton.addTarget(self, action: #selector(ThirdVC.showCamera(_:)), forControlEvents: .TouchUpInside)
        
        let rightBarButton = UIBarButtonItem(customView: cameraButton)

        
        ////navi右邊會員資料按鈕
        let memberButton = UIButton(frame: CGRectMake(0,0,28,28))
        memberButton.setBackgroundImage(UIImage(named:"member"), forState: .Normal)
        memberButton.addTarget(self, action: #selector(OneVC.memberData(_:)), forControlEvents: .TouchUpInside)
        
        let rightBarButton01 = UIBarButtonItem(customView: memberButton)
        
        self.navigationItem.setRightBarButtonItems([rightBarButton01,rightBarButton], animated: true)
        
        ////tableView
        tableView.frame = CGRectMake(0, 110, width, height-40)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(OneCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = UIColor.groupTableViewBackgroundColor()
        automaticallyAdjustsScrollViewInsets = false
        tableView.separatorStyle = .None
        self.view.addSubview(tableView)
        
        ////scrollView
        scrollView.frame = CGRectMake(0, 64, width, 46)
        scrollView.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(scrollView)
        
    }
    
    func alamofireGET()
    {
        let url = "http://magipea.com/article.php?cate=1"
        
        Alamofire.request(.GET, url).responseJSON { response in
            
            if let JSON = response.result.value
            {
                self.jsonArray = JSON as! NSMutableArray
            }
            
            
            self.tableView.reloadData()

        }
        
        
    }
    
    
    func search(sender:UIButton)
    {
        print("你按了搜尋")
    }
    
    func memberData(sender:UIButton)
    {
        print("你按了會員")
    }
    
    ////cameraButton action  開啟相機
    func showCamera(sender:UIBarButtonItem)
    {
//        let picker = UIImagePickerController()
//        picker.delegate = self
//        picker.sourceType = .Camera
//        self.presentViewController(picker, animated: true, completion: nil)
        
        print("你按了相機")
    }
    
    ////拍照後 使用拍到的照片
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        //        shootImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        //        self.dismissViewControllerAnimated(true, completion: nil)
        //        tableView.reloadData()
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
            
            let url = "http://lorempixel.com/470/246/"
                
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
