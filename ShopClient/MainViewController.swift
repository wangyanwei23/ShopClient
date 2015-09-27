//
//  MainViewController.swift
//  ShopClient
//
//  Created by 王彦伟 on 15/8/16.
//  Copyright (c) 2015年 王彦伟. All rights reserved.
//

import UIKit

//extension UIButton {
//    
////    func setImageAndTitleLeft(){
////        var SPACING:CGFloat = 0.0
////        setImageAndTitleLeft(SPACING)
////    }
//    
//    //imageView在上,label在下
//    func setImageAndTitleLeft(spacing:CGFloat){
//        var imageSize =  self.imageView?.frame.size
//        var titleSize = self.titleLabel?.frame.size;
//        
//        var totalHeight = imageSize!.height + titleSize!.height + spacing
//        
//        self.imageEdgeInsets = UIEdgeInsetsMake(-(totalHeight - imageSize!.height), 13.50, 0.0, -titleSize!.width)
//        self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize!.width, -(totalHeight - titleSize!.height), 0.0)
//    }
//    
//}

class MainViewController: UITabBarController {
    
    var tabbar:UIImageView!
    let vc1 = HomeViewController()
    let vc2 = CategoryViewController()
    let vc3 = ShopViewController()
    let vc4 = UserViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.redColor()
        
        self.iniTtabbar()
    }
    
    func iniTtabbar () {
        let x = self.view.bounds.width / 4
        self.tabBar.hidden = true
        tabbar = UIImageView(frame: CGRect(x: 0, y: self.view.bounds.size.height - 65, width: self.view.bounds.width, height: 65))
        tabbar.userInteractionEnabled = true
        tabbar.backgroundColor = UIColor.grayColor()
        
        var but1 = UIButton(frame: CGRect(x: 0, y: 0, width: x, height: 65))
        but1.setTitle("首页", forState: .Normal)
        but1.tag = 0
        but1.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        tabbar.addSubview(but1)
        
        var but2 = UIButton(frame: CGRect(x: x, y: 0, width: x, height: 65))
        but2.setTitle("分类", forState: .Normal)
        but2.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        but2.setImage(UIImage(named: "fenlei.png"), forState: .Normal)
        but2.setImageAndTitleLeft()
        but2.tag = 1
        but2.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        tabbar.addSubview(but2)
        
        var but3 = UIButton(frame: CGRect(x: x * 2, y: 0, width: x, height: 65))
        but3.setTitle("购物", forState: .Normal)
        but3.tag = 2
        but3.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        tabbar.addSubview(but3)
        
        var but4 = UIButton(frame: CGRect(x: x * 3, y: 0, width: x, height: 65))
        but4.setTitle("分类", forState: .Normal)
        but4.tag = 3
        but4.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        tabbar.addSubview(but4)
        
        self.view.addSubview(tabbar)
        let arr = [vc1, vc2, vc3, vc4]
        var subs = NSMutableArray()
        for var i = 0; i < 4; ++i {
            var nav = UINavigationController(rootViewController: arr[i])
            subs.addObject(nav)
        }
        self.setViewControllers(subs as [AnyObject], animated: true)
    }

    func click (bt: UIButton) {
        bt.selected = true
        self.selectedIndex = bt.tag
    }
    
}

