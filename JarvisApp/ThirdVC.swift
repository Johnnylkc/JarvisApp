//
//  ThirdVC.swift
//  JarvisApp
//
//  Created by 劉坤昶 on 2016/3/10.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ThirdVC: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    ////tablebleView 和 tableView上面的按鈕scrollView
    let tableView = UITableView()
    let scrollBar = UIScrollView()

    ////桌子上方的scrollView裡的按鈕
    let scrollButton1 = UIButton()
    let scrollButton2 = UIButton()
    let scrollButton3 = UIButton()

    ////這兩個是桌子上方那個scrollView的constrait 寫成global 這樣我才能在scrollView的delagate中使用它
    var scrollBarH = [NSLayoutConstraint]()
    var scrollBarV = [NSLayoutConstraint]()
    
    ////裝整個JSON、JSON第二層、JSON第三層
    var allJsonArray = NSMutableArray()
    var secondLevelArray = NSMutableArray()
    var thirdLevelArray = NSMutableArray()
    var scrollButtonTextArray = NSMutableArray()
    
    
    let hahaArray = NSMutableArray()
    
    
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
        
        tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height )
        tableView.backgroundColor = UIColor(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1)
        tableView.registerClass(ThirdCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        automaticallyAdjustsScrollViewInsets = false
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .None
        self.tableView.rowHeight = 200
        self.view.addSubview(self.tableView)

        scrollButton1.frame = CGRectMake(10, 5, self.view.frame.size.width/2, 35)
        scrollButton1.backgroundColor = UIColor.whiteColor()
        scrollButton1.setTitleColor(UIColor.blackColor(), forState: .Normal)
        scrollButton1.addTarget(self, action: "scrollButton1_click:", forControlEvents: .TouchUpInside)
        scrollBar.addSubview(scrollButton1)
        
        scrollButton2.frame = CGRectMake(scrollButton1.frame.size.width+20, 5, self.view.frame.size.width/2, 35)
        scrollButton2.backgroundColor = UIColor.whiteColor()
        scrollButton2.setTitleColor(UIColor.blackColor(), forState: .Normal)
        scrollButton2.addTarget(self, action: "scrollButton2_click:", forControlEvents: .TouchUpInside)
        scrollBar.addSubview(scrollButton2)
        
        scrollButton3.frame = CGRectMake(scrollButton1.frame.size.width*2 + 30, 5, self.view.frame.size.width/2, 35)
        scrollButton3.backgroundColor = UIColor.whiteColor()
        scrollButton3.setTitleColor(UIColor.blackColor(), forState: .Normal)
        scrollButton3.addTarget(self, action: "scrollButton3_click:", forControlEvents: .TouchUpInside)
        scrollBar.addSubview(scrollButton3)
        
        ////這個scrollView的設定 擺在裡面的按鈕設定之後 是因為這樣才取得到 所有按鈕的寬 才知道contentSize要給多少
        scrollBar.frame = CGRectMake(0, 64, self.view.frame.size.width, 46)
        scrollBar.backgroundColor = UIColor.redColor()
        scrollBar.contentSize = CGSizeMake(scrollButton1.frame.size.width * 3 + 40, 0)
        scrollBar.showsHorizontalScrollIndicator = false
        self.view.addSubview(scrollBar)

        
        
    }
    

    func alamofireGET()
    {
        ////////抓第一個API
        let url = "http://magipea.com/admin/product/list/json"
        Alamofire.request(.GET, url).responseJSON { response in
            
            if let JSON = response.result.value
            {
                self.allJsonArray = JSON as! NSMutableArray
                //print("這是整個JSON\(self.jsonArray)")
         
                for item in self.allJsonArray
                {
                    let typeName = item["type_name"] as! String
                    
                    if typeName == "其他商品"
                    {
                        let oneArray:NSMutableArray = item["color"] as! NSMutableArray
                    
                        for item2 in oneArray
                        {
                            self.secondLevelArray.addObject(item2)
                    
                            //print(self.secondLevelArray)
                        
                            let twoArray:NSMutableArray = item2["picture"] as! NSMutableArray
                        
                            for item3 in twoArray
                            {
                                self.thirdLevelArray.addObject(item3)
                                //print(self.thirdLevelArray)
                            }
                        
                        }
                  
                    }
                
                }
                self.tableView.reloadData()
            }
       
        }
        ///////////抓第二個API
        let url2 = "http://magipea.com/admin/product/type/data/json"
        Alamofire.request(.GET, url2).responseJSON { response in
            
            if let JSON = response.result.value
            {
                self.scrollButtonTextArray = JSON as! NSMutableArray

                let title1 = self.scrollButtonTextArray[0]["name"] as! String
                self.scrollButton1.setTitle(title1, forState: .Normal)
                
                let title2 = self.scrollButtonTextArray[1]["name"] as! String
                self.scrollButton2.setTitle(title2, forState: .Normal)
                
                let title3 = self.scrollButtonTextArray[2]["name"] as! String
                self.scrollButton3.setTitle(title3, forState: .Normal)
            
            }
           
        }

        
        
        
        
        
    }////最後的大括號
    
    
    
    
    
    ////三個scrollButton action
    func scrollButton1_click(sender:UIButton)
    {
        for item in self.allJsonArray
        {
          let typeName = item["type_name"] as! String
            
            if typeName == "換購商品"
            {
                
                
            }
            
            
        
        }
        
        self.tableView.reloadData()
        print("按鈕1")
    }
    
    
    func scrollButton2_click(sender:UIButton)
    {
        print("按鈕2")
    }
    
    
    func scrollButton3_click(sender:UIButton)
    {
        print("按鈕3")
    }

  
    
    
    func scrollViewDidScroll(scrollView: UIScrollView)
    {
        
        
        if scrollView.panGestureRecognizer.translationInView(scrollView).y < 0
        {
            
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                
                self.scrollBarV[0].constant = 18
                self.scrollBar.alpha = 0
                
                self.view.layoutSubviews()
                
            })
            
        }
        else
        {
            
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                
                self.scrollBarV[0].constant = 64
                
                self.view.layoutSubviews()
                
                
            })
            
            scrollBar.alpha = 1
            
            
        }
        
        
    }

    
    
    
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.secondLevelArray.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 200
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! ThirdCell
        cell.selectionStyle = .None
        cell.backgroundColor = UIColor.clearColor()

        
        let dic1 = self.allJsonArray[indexPath.row]
//      let dic2 = self.secondLevelArray[indexPath.row]
        let dic3 = self.thirdLevelArray[indexPath.row]
        
        
       // let typeName = dic1["type_name"] as! String
        
        
        if dic3["image"] != nil
        {
            let imageURL = "http://magipea.com/admin/uploads/" + "\(dic3["image"] as! String)"
            
            Alamofire.request(.GET, imageURL).responseImage { response in
                
                    if let jsonImage = response.result.value
                    {
                        dispatch_async(dispatch_get_main_queue())
                        {
                            cell.bigImage.image = jsonImage
                        }
                    }
            }
        }
        
        
        if dic1["name"] != nil
        {
            cell.titleTextView.text = dic1["name"] as! String
        }
        
       
        if dic1["product_discount"] != nil
        {
            cell.discountLabel.text = " Discount 折扣 : " + "\(dic1["product_discount"] as! String) %"
        }
        
        
        if dic1["sale_price_ntd"] != nil
        {
            cell.salePriceLabel.text = " NT$ " + "\(dic1["sale_price_ntd"] as! String)"
        }
        
        
        if dic1["price_ntd"] != nil
        {
            let attributedText = NSAttributedString(string: "NT$" + "\(dic1["price_ntd"] as! String)", attributes: [NSStrikethroughStyleAttributeName: 1])
            
            cell.oldPriceLabel.attributedText = attributedText

        }
        
        return cell
    }
    
    
    
    
    
    func autoLayout()
    {
        tableView.translatesAutoresizingMaskIntoConstraints = (false)
        scrollBar.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["tableView":tableView,"scrollBar":scrollBar]
        
        
        ////tableView
        let tableViewH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[tableView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(tableViewH)
        
        let tableViewV = NSLayoutConstraint.constraintsWithVisualFormat("V:[scrollBar][tableView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(tableViewV)
        
        
        ////scrollBar
        scrollBarH = NSLayoutConstraint.constraintsWithVisualFormat("H:|[scrollBar]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(scrollBarH)
        
        scrollBarV = NSLayoutConstraint.constraintsWithVisualFormat("V:|-64-[scrollBar(46)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: dic)
        self.view.addConstraints(scrollBarV)
        

    }
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
