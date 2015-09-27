//
//  HomeViewController .swift
//  ShopClient
//
//  Created by 王彦伟 on 15/8/15.
//  Copyright (c) 2015年 王彦伟. All rights reserved.

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate, UITableViewDataSource, UITableViewDelegate {
    
    var scrollview: UIScrollView = UIScrollView()
    var pageControl: UIPageControl = UIPageControl()
    var table: UITableView = UITableView()
    var btn1: UIButton = UIButton()
    var btn2: UIButton = UIButton()
    var btn3: UIButton = UIButton()
    var btn4: UIButton = UIButton()
    var btn_sp: UIButton = UIButton()
    var btn_shop1: UIButton = UIButton()
    var btn_shop2: UIButton = UIButton()
    var horizontal1: UILabel = UILabel()
    var horizontal2: UILabel = UILabel()
    var vertical1: UILabel = UILabel()
    var vertical2: UILabel = UILabel()
    var vertical3: UILabel = UILabel()
    var vertical4: UILabel = UILabel()
    var vertical5: UILabel = UILabel()
    var vertical6: UILabel = UILabel()
    var labName1: UILabel = UILabel()
    var labName2: UILabel = UILabel()
    var labName3: UILabel = UILabel()
    var labName4: UILabel = UILabel()
    var labPrice1: UILabel = UILabel()
    var labPrice2: UILabel = UILabel()
    var price_p1: UILabel = UILabel()
    var price_p2: UILabel = UILabel()
    var number1: UILabel = UILabel()
    var number2: UILabel = UILabel()
    var imageView1: UIImageView = UIImageView()
    var imageView2: UIImageView = UIImageView()
    var timer: NSTimer!
    let images = ["putao.png", "banner1.png"]
    let names = ["杜康", "茅台", "五粮液", "剑南春"]
    let butName = ["啤酒", "白酒", "红酒", "洋酒"]
    let butImg = ["tupian4.png", "tupian3.png", "tupian2.png", "tupian1.png"]
    let images1 = "banner1.png"
    let priceArr = "234"
    let price = "888"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttons = [btn1, btn2, btn3, btn4]
        
        self.view.addSubview(scrollview)
        self.view.addSubview(pageControl)
        self.view.addSubview(btn1)
        self.view.addSubview(btn2)
        self.view.addSubview(btn3)
        self.view.addSubview(btn4)
        self.view.addSubview(btn_shop1)
        self.view.addSubview(btn_shop2)
        self.view.addSubview(horizontal1)
        self.view.addSubview(horizontal2)
        self.view.addSubview(vertical1)
        self.view.addSubview(vertical2)
        self.view.addSubview(vertical3)
        self.view.addSubview(vertical4)
        self.view.addSubview(vertical5)
        self.view.addSubview(vertical6)
        self.view.addSubview(labName1)
        self.view.addSubview(labName2)
        self.view.addSubview(labName3)
        self.view.addSubview(labName4)
        self.view.addSubview(labPrice1)
        self.view.addSubview(labPrice2)
        self.view.addSubview(number1)
        self.view.addSubview(number2)
        self.view.addSubview(price_p1)
        self.view.addSubview(price_p2)
        self.view.addSubview(btn_sp)
        self.view.addSubview(imageView1)
        self.view.addSubview(imageView2)
        self.view.addSubview(table)

        for var i = 0; i < images.count; i++ {
            let x = i * 320
            var imageView = UIImageView(frame: CGRectMake(CGFloat(x), 0, self.view.frame.width, self.view.frame.height / 5 + 20))
            imageView.image = UIImage(named: images[i])
            scrollview.addSubview(imageView)
        }
        scrollview.pagingEnabled = true
        scrollview.showsHorizontalScrollIndicator = false
        scrollview.scrollEnabled = true
        scrollview.delegate = self
        
        addTimer()
        
        for var i = 0; i < buttons.count; i++ {
            buttons[i].snp_makeConstraints(closure: {(make) -> Void in
                make.top.equalTo(scrollview.snp_bottom).offset(15)
                make.left.equalTo(buttons[i].superview!.snp_left).offset(15 * (i + 1) + 55 * i)
//                make.width.equalTo(30)
//                make.height.equalTo(30)
            })
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        let buttons = [btn1, btn2, btn3, btn4]
        let btns = [btn_shop1, btn_shop2]
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        pageControl.currentPageIndicatorTintColor = UIColor.redColor()
        pageControl.pageIndicatorTintColor = UIColor.grayColor()
        pageControl.numberOfPages = images.count
        
        table.dataSource = self
        table.delegate = self
        //设置水平tableView，table逆时针旋转90
//        table.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI / 2))
        //隐藏分割线
        table.separatorStyle = UITableViewCellSeparatorStyle.None
        table.registerClass(CustomHomeCell.self, forCellReuseIdentifier: "SwiftCell")
        
        for var i = 0; i < buttons.count; i++ {
            buttons[i].titleLabel?.font = UIFont.boldSystemFontOfSize(15)
            buttons[i].setTitle(butName[i], forState: .Normal)
            buttons[i].setImage(UIImage(named: butImg[i]), forState: .Normal)
            buttons[i].setTitleColor(UIColor.grayColor(), forState: .Normal)
            buttons[i].setImageAndTitleLeft()
            //buttons[i].sizeToFit()
        }
        
        btn_sp.setTitle("更多惊喜", forState: .Normal)
        btn_sp.titleLabel?.font = UIFont.systemFontOfSize(10)
        btn_sp.backgroundColor = UIColor(red: 130/255, green: 48/255, blue: 246/255, alpha: 1)
        
        horizontal1.backgroundColor = UIColor.grayColor()
        horizontal2.backgroundColor = UIColor.grayColor()
        vertical1.backgroundColor = UIColor.redColor()
        vertical2.backgroundColor = UIColor.redColor()
        vertical3.backgroundColor = UIColor.grayColor()
        vertical4.backgroundColor = UIColor.grayColor()
        vertical5.backgroundColor = UIColor.grayColor()
        vertical6.backgroundColor = UIColor.grayColor()
        
        labName1.text = "促销活动"
        labName1.font = UIFont.boldSystemFontOfSize(13)
        labName1.sizeToFit()
        
        labName2.text = "热门推荐"
        labName2.font = UIFont.boldSystemFontOfSize(13)
        labName2.sizeToFit()
        
        imageView1.image = UIImage(named: "jiu.png")
        imageView2.image = UIImage(named: "jiu.png")
        
        labName3.text = "精品威士忌"
        labName3.font = UIFont.boldSystemFontOfSize(12)
        labName3.sizeToFit()
        
        labName4.text = "精品威士忌"
        labName4.font = UIFont.boldSystemFontOfSize(12)
        labName4.sizeToFit()
        
        //labPrice1.text = "原价：¥" + price
        let attr1 = NSMutableAttributedString(string: "原价：¥" + price)
        attr1.addAttribute(NSStrikethroughStyleAttributeName, value: NSNumber(integer: 1), range: NSMakeRange(0, count("原价：¥" + price)))
        labPrice1.attributedText = attr1
        labPrice1.font = UIFont.systemFontOfSize(10)
        labPrice1.sizeToFit()
        
        let attr2 = NSMutableAttributedString(string: "原价：¥" + price)
        attr2.addAttribute(NSStrikethroughStyleAttributeName, value: NSNumber(integer: 1), range: NSMakeRange(0, count("原价：¥" + price)))
        labPrice2.attributedText = attr2
        labPrice2.font = UIFont.systemFontOfSize(10)
        labPrice2.sizeToFit()
        
        price_p1.text = "促销价："
        price_p1.font = UIFont.systemFontOfSize(10)
        price_p1.sizeToFit()
        
        price_p2.text = "促销价："
        price_p2.font = UIFont.systemFontOfSize(10)
        price_p2.sizeToFit()
        
        number1.text = "¥" + priceArr
        number1.font = UIFont.systemFontOfSize(12)
        number1.textColor = UIColor.redColor()
        number1.sizeToFit()
        
        number2.text = "¥" + priceArr
        number2.font = UIFont.systemFontOfSize(12)
        number2.textColor = UIColor.redColor()
        number2.sizeToFit()
        
        for var i = 0; i < 2; i++ {
            btns[i].setTitle("立即抢购", forState: .Normal)
            btns[i].titleLabel?.font = UIFont.boldSystemFontOfSize(10)
            btns[i].backgroundColor = UIColor.redColor()
        }
    }
    
    override func viewDidLayoutSubviews() {
        
        self.scrollview.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(65)
            make.left.equalTo(scrollview.superview!.snp_left)
            make.width.equalTo(scrollview.superview!.snp_width)
            make.height.equalTo(self.view.frame.height / 5 + 20)
        })
        
        self.pageControl.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(scrollview.snp_bottom).offset(-10)
            make.right.equalTo(pageControl.superview!.snp_right)
            make.width.equalTo(50)
            make.height.equalTo(10)
        })
        
        self.horizontal1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(btn1.snp_bottom).offset(15)
            make.width.equalTo(self.view.frame.width)
            make.height.equalTo(0.5)
        })
        
        self.horizontal2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(vertical3.snp_bottom).offset(10)
            make.width.equalTo(self.view.frame.width)
            make.height.equalTo(0.5)
        })
        
        self.vertical1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(horizontal1.snp_bottom).offset(5)
            make.left.equalTo(vertical1.superview!.snp_left).offset(10)
            make.width.equalTo(0.5)
            make.height.equalTo(13)
        })
        
        self.vertical2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(horizontal2.snp_bottom).offset(5)
            make.left.equalTo(vertical1.superview!.snp_left).offset(10)
            make.width.equalTo(0.5)
            make.height.equalTo(13)
        })
        
        self.vertical3.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(vertical1.snp_bottom).offset(5)
            make.left.equalTo(vertical3.superview!.snp_left).offset(10)
            make.width.equalTo(0.5)
            make.height.equalTo(60)
        })
        
        self.vertical4.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(vertical1.snp_bottom).offset(5)
            make.left.equalTo(vertical4.superview!.snp_left).offset(self.view.frame.width / 2 - 5)
            make.width.equalTo(0.5)
            make.height.equalTo(60)
        })
        
        self.vertical5.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(vertical1.snp_bottom).offset(5)
            make.left.equalTo(vertical5.superview!.snp_left).offset(self.view.frame.width / 2 + 5)
            make.width.equalTo(0.5)
            make.height.equalTo(60)
        })

        self.vertical6.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(vertical1.snp_bottom).offset(5)
            make.right.equalTo(vertical6.superview!.snp_right).offset(-10)
            make.width.equalTo(0.5)
            make.height.equalTo(60)
        })

        
        self.labName1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(horizontal1.snp_bottom).offset(5)
            make.left.equalTo(vertical1.superview!.snp_left).offset(15)
//            make.width.equalTo(60)
//            make.height.equalTo(13)
        })
        
        self.labName2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(horizontal2.snp_bottom).offset(5)
            make.left.equalTo(vertical2.superview!.snp_left).offset(15)
//            make.width.equalTo(60)
//            make.height.equalTo(13)
        })
        
        self.btn_sp.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(horizontal1.snp_bottom).offset(5)
            make.right.equalTo(btn_sp.superview!.snp_right).offset(-10)
            make.width.equalTo(50)
            make.height.equalTo(15)
        })

        self.imageView1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labName1.snp_bottom).offset(5)
            make.left.equalTo(vertical3.snp_left).offset(10)
            make.width.equalTo(50)
            make.height.equalTo(50)
        })
        
        self.imageView2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labName1.snp_bottom).offset(5)
            make.left.equalTo(vertical5.snp_left).offset(10)
            make.width.equalTo(50)
            make.height.equalTo(50)
        })

        
        self.labName3.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labName1.snp_bottom).offset(5)
            make.left.equalTo(imageView1.snp_right).offset(10)
//            make.width.equalTo(70)
//            make.height.equalTo(13)
        })
        
        self.labName4.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labName1.snp_bottom).offset(5)
            make.left.equalTo(imageView2.snp_right).offset(10)
//            make.width.equalTo(70)
//            make.height.equalTo(13)
        })
        
        self.labPrice1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labName3.snp_bottom)
            make.left.equalTo(imageView1.snp_right).offset(10)
        })
        
        self.labPrice2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labName4.snp_bottom)
            make.left.equalTo(imageView2.snp_right).offset(10)
        })
        
        self.price_p1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labPrice1.snp_bottom)
            make.left.equalTo(imageView1.snp_right).offset(10)
        })
        
        self.price_p2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labPrice2.snp_bottom)
            make.left.equalTo(imageView2.snp_right).offset(10)
        })
        
        self.number1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labPrice1.snp_bottom).offset(-2)
            make.left.equalTo(price_p1.snp_right)
        })
        
        self.number2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labPrice2.snp_bottom).offset(-2)
            make.left.equalTo(price_p2.snp_right)
        })
        
        self.table.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labName2.snp_bottom)
            make.width.equalTo(self.view.frame.width)
            make.height.equalTo(self.view.frame.height / 4)
        })
        
        self.btn_shop1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(price_p1.snp_bottom)
            make.left.equalTo(imageView1.snp_right).offset(10)
            make.width.equalTo(70)
            make.height.equalTo(14)
        })
        
        self.btn_shop2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(price_p2.snp_bottom)
            make.left.equalTo(imageView2.snp_right).offset(10)
            make.width.equalTo(70)
            make.height.equalTo(14)
        })
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let width = self.view.frame.width
        let offsetX = scrollview.contentOffset.x
        let page = (offsetX + width / 2) / width
        pageControl.currentPage = Int(page)
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        removeTimer()
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        addTimer()
    }
    
    func addTimer() {
        timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "nextImg", userInfo: nil, repeats: true)
    }
    
    func removeTimer() {
        timer.invalidate()
    }
    
    func nextImg () {
        var page = pageControl.currentPage
        if page == images.count - 1 {
            page = 0
        } else {
            page++
        }
        
        var offsetX = CGFloat(page) * self.view.frame.width
        scrollview.setContentOffset(CGPointMake(offsetX, 0), animated: true)
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identify = "SwiftCell"
        var cell = table.dequeueReusableCellWithIdentifier(identify) as! CustomHomeCell
        
        cell.accessoryType = UITableViewCellAccessoryType.None

        //cell.imageView?.image = UIImage(named: images[indexPath.row])
        cell.imageV.image = UIImage(named: images1)
        cell.labName.text = self.names[indexPath.row]

        let attr = NSMutableAttributedString(string: priceArr)
        attr.addAttribute(NSStrikethroughStyleAttributeName, value: NSNumber(integer: 1), range: NSMakeRange(0, count(priceArr)))
        cell.labPrice.attributedText = attr

        cell.labPrice1.text = priceArr
        cell.number.text = priceArr + "人购买"

        //cell顺时针旋转90
//        cell.transform = CGAffineTransformMakeRotation(CGFloat(M_PI / 2))
        //table点击不变色
//        cell.selectionStyle = UITableViewCellSelectionStyle.None
        return cell
        
    }
    
}