//
//  AppDelegate.swift
//  ShopClient
//
//  Created by 王彦伟 on 15/8/7.
//  Copyright (c) 2015年 王彦伟. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()

        let viewCtrl1 = HomeViewController()
        viewCtrl1.title = "酒乐GO"
        let nav1 = UINavigationController(rootViewController: viewCtrl1)
        viewCtrl1.tabBarItem = UITabBarItem(title: "首页", image: UIImage(named: "zhuye.png"), tag: 1)
        
        let viewCerl2 = CategoryViewController()
        viewCerl2.title = "分类搜索"
        let nav2 = UINavigationController(rootViewController: viewCerl2)
        viewCerl2.tabBarItem = UITabBarItem(title: "分类", image: UIImage(named: "fenlei.png"), tag: 2)
        
        let viewCtrl3 = ShopViewController()
        viewCtrl3.title = "商品详情"
        let nav3 = UINavigationController(rootViewController: viewCtrl3)
        viewCtrl3.tabBarItem = UITabBarItem(title: "购物", image: UIImage(named: "gouwu.png"), tag: 3)
        
        let viewCtrl4 = UserViewController()
        viewCtrl4.title = "个人中心"
        let nav4 = UINavigationController(rootViewController: viewCtrl4)
        viewCtrl4.tabBarItem = UITabBarItem(title: "个人中心", image: UIImage(named: "geren.png"), tag: 4)
        
        let nav = [nav1, nav2, nav3, nav4]
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = nav
//        tabBarController.tabBar.backgroundColor = UIColor.blackColor()
        //tabBarController.tabBar.tintColor = UIColor.greenColor()
        
//        let nvc = UINavigationController(rootViewController: SignInViewController())
        self.window!.rootViewController = tabBarController
        self.window!.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

