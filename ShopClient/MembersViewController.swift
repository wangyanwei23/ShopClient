//
//  MembersViewController.swift
//  ShopClient
//
//  Created by 王彦伟 on 15/9/24.
//  Copyright (c) 2015年 王彦伟. All rights reserved.
//

import Foundation
import UIKit

class MembersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let nameArr = ["杜康", "茅台", "五粮液", "剑南春"]
    let imgArr = "putao.png"
    let priceArr = "¥234"
    var tableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(tableView)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(CustomCategoryCell.self, forCellReuseIdentifier: "SwiftCell")
    }
    
    override func viewDidLayoutSubviews() {
        
        tableView.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(0)
            make.width.equalTo(tableView.superview!.snp_width)
            make.height.equalTo(self.view.frame.height - 60)
        })
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identify = "SwiftCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(identify) as! CustomCategoryCell
        
        cell.accessoryType = UITableViewCellAccessoryType.None
        
        //cell.imageView?.image = UIImage(named: imgArr[indexPath.row])
        cell.imageV.image = UIImage(named: imgArr)
        
        cell.labName.text = self.nameArr[indexPath.row]
        
        let attr = NSMutableAttributedString(string: priceArr)
        attr.addAttribute(NSStrikethroughStyleAttributeName, value: NSNumber(integer: 1), range: NSMakeRange(0, priceArr.characters.count))
        cell.labPrice.attributedText = attr
        
        cell.labPrice1.text = priceArr
        
        return cell
    }
    
}