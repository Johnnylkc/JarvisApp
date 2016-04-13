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
    
    ////scrollView裡的按鈕們
    let scrollLeftButton = UIButton()
    let scrllRightButton = UIButton()
    let oneButton = UIButton()
    let twoButton = UIButton()
    let threeButton = UIButton()
    let fourButton = UIButton()
    
    
    
    var jsonArray = NSMutableArray()
    var oneArray = NSMutableArray()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        allUI()
        autoLayout()
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
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(OneCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = UIColor.groupTableViewBackgroundColor()
        automaticallyAdjustsScrollViewInsets = false
        tableView.separatorStyle = .None
        self.view.addSubview(tableView)
        
        
        
        
        ////scrollView
        scrollView.backgroundColor = UIColor.redColor()
        scrollView.contentSize = CGSizeMake(self.view.frame.size.width*3, 0)
        
        self.view.addSubview(scrollView)
        
        ////scrollView最左和最右的三角形按鈕
        scrollLeftButton.setBackgroundImage(UIImage(named: "scrollLeft"), forState: .Normal)
        //scrollLeftButton.backgroundColor = UIColor.greenColor()
        scrollLeftButton.addTarget(self, action: #selector(OneVC.scrollLeft(_:)), forControlEvents: .TouchDown)
        self.view.addSubview(scrollLeftButton)
        
        
        scrllRightButton.setBackgroundImage(UIImage(named: "scrollRight"), forState: .Normal)
        //scrllRightButton.backgroundColor = UIColor.greenColor()
        scrllRightButton.addTarget(self, action: #selector(OneVC.scrollRight(_:)), forControlEvents: .TouchDown)
        self.view.addSubview(scrllRightButton)
        
        ////scrollView裡的按鈕們
        oneButton.frame = CGRectMake(0, 5, width/4, 35)
        oneButton.backgroundColor = UIColor.whiteColor()
        oneButton.setTitle("最新派對", forState: .Normal)
        oneButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        scrollView.addSubview(oneButton)
        
        twoButton.frame = CGRectMake(oneButton.frame.size.width+20, 5, width/4, 35)
        twoButton.backgroundColor = UIColor.whiteColor()
        twoButton.setTitle("最受歡迎", forState: .Normal)
        twoButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        scrollView.addSubview(twoButton)
        
        threeButton.frame = CGRectMake(oneButton.frame.size.width*2 + 40, 5, width/4, 35)
        threeButton.backgroundColor = UIColor.whiteColor()
        threeButton.setTitle("為您推薦", forState: .Normal)
        threeButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        scrollView.addSubview(threeButton)
        
        fourButton.frame = CGRectMake(oneButton.frame.size.width*3 + 60, 5, width/4, 35)
        fourButton.backgroundColor = UIColor.whiteColor()
        fourButton.setTitle("附近熱門", forState: .Normal)
        fourButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        scrollView.addSubview(fourButton)

        
        
        
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
    
    func scrollLeft(sender:UIButton)
    {
        print("你按了向左滑動")
    }
    
    
    func scrollRight(sender:UIButton)
    {
        print("你按了向右滑動")
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
    
    
    func autoLayout()
    {
        tableView.translatesAutoresizingMaskIntoConstraints = (false)
        scrollView.translatesAutoresizingMaskIntoConstraints = (false)
        scrollLeftButton.translatesAutoresizingMaskIntoConstraints = (false)
        scrllRightButton.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["tableView":tableView,"scrollView":scrollView,"scrollLeftButton":scrollLeftButton,"scrllRightButton":scrllRightButton]
        
    
        ////tableView
        let tableView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|[tableView]|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(tableView_H)
        
        let tableView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[scrollView][tableView]|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(tableView_V)
        
        ////scrollView
        let scrollView_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-40-[scrollView]-40-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(scrollView_H)
        
        let scrollView_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-64-[scrollView(46)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(scrollView_V)
        
        ////scrollLeftButton
        let scrollLeftButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|[scrollLeftButton][scrollView]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(scrollLeftButton_H)
        
        let scrollLeftButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-64-[scrollLeftButton][tableView]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(scrollLeftButton_V)
        
        ////scrllRightButton
        let scrllRightButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:[scrollView][scrllRightButton]|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(scrllRightButton_H)
        
        let scrllRightButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-64-[scrllRightButton][tableView]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(scrllRightButton_V)
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}////最後了
