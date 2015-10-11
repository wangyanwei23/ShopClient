//
//  CategoryViewController.swift
//  ShopClient
//
//  Created by 王彦伟 on 15/8/15.
//  Copyright (c) 2015年 王彦伟. All rights reserved.
//

import Foundation
import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableList: UITableView = UITableView()
    var tableMembers: UITableView = UITableView()
    var lab: UILabel = UILabel()
    var lab_line: UILabel = UILabel()
    var lab_brand: UILabel = UILabel()
    var img1: UIImageView = UIImageView()
    var img2: UIImageView = UIImageView()
    
    let spirit = ["白酒", "红酒", "洋酒", "啤酒", "保健酒", "酒具相关"]
    let spiritName = ["杜康", "剑南春"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(tableList)
        self.view.addSubview(tableMembers)
        self.view.addSubview(lab)
        self.view.addSubview(lab_line)
        self.view.addSubview(lab_brand)
        self.view.addSubview(img1)
        self.view.addSubview(img2)

    }
    
    override func viewWillAppear(animated: Bool) {
        
        tableList.dataSource = self
        tableList.delegate = self
        tableMembers.delegate = self
        tableMembers.dataSource = self
        
        tableList.backgroundColor = UIColor(red: 130/255, green: 130/255, blue: 130/255, alpha: 0.8)
        tableList.separatorStyle = UITableViewCellSeparatorStyle.None

        lab.text = "明星产品"
        lab.font = UIFont.systemFontOfSize(11)
        lab.textColor = UIColor.blackColor()
        lab.sizeToFit()
        
        lab_line.backgroundColor = UIColor.grayColor()
        
        img1.image = UIImage(named: "lafei.png")
        img2.image = UIImage(named: "lafei01.png")
        
        lab_brand.backgroundColor = UIColor(red: 236/255, green: 236/255, blue: 239/255, alpha: 1)
        lab_brand.text = "品牌分类"
        lab_brand.font = UIFont.systemFontOfSize(12)
        lab_brand.textAlignment = NSTextAlignment.Center
    }
//
    override func viewDidLayoutSubviews() {
        
        self.tableList.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.width.equalTo(self.view.frame.width / 5)
            make.height.equalTo(self.view.frame.height)
        })

        self.lab.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(70)
            make.left.equalTo(tableList.snp_right).offset(10)
        })
        
        self.lab_line.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab.snp_bottom).offset(5)
            make.left.equalTo(tableList.snp_right).offset(10)
//            make.right.equalTo(lab_line.superview!.snp_right).offset(-10)
//            make.width.equalTo(self.view.frame.width - tableList.frame.width - 20)
            make.width.equalTo(self.view.frame.width / 5 * 4 - 20)
            make.height.equalTo(0.5)
        })
        
        self.img1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_line.snp_bottom).offset(5)
            make.left.equalTo(tableList.snp_right).offset(10)
//            make.width.equalTo((self.view.frame.width - tableList.frame.width - 30) / 2)
            make.width.equalTo((self.view.frame.width / 5 * 4 - 20) / 2 - 5)
            make.height.equalTo(140)
        })
        
        self.img2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_line.snp_bottom).offset(5)
            make.left.equalTo(img1.snp_right).offset(10)
//            make.width.equalTo((self.view.frame.width - tableList.frame.width - 30) / 2)
            make.width.equalTo((self.view.frame.width / 5 * 4 - 20) / 2 - 5)
            make.height.equalTo(140)
        })
        
        self.lab_brand.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(img1.snp_bottom).offset(10)
            make.left.equalTo(tableList.snp_right).offset(10)
//            make.width.equalTo(self.view.frame.width - tableList.frame.width - 20)
            make.width.equalTo(230)
            make.height.equalTo(30)
        })
        
        self.tableMembers.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_brand.snp_bottom).offset(0)
            make.left.equalTo(tableList.snp_right)
//            make.width.equalTo(self.view.frame.width - tableList.frame.width - 20)
            make.width.equalTo(250)
            make.height.equalTo(self.view.frame.height / 3)
        })
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if tableView == tableList {
            return 28
        } else {
            return 25
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == tableList {
            return spirit.count
        } else {
            return spiritName.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if tableView == tableList {
            
            var cell1 = tableList.dequeueReusableCellWithIdentifier("cell1") as? CustomCell
            
            if cell1 == nil {
                cell1 = CustomCell(style: .Default, reuseIdentifier: "cell1")
            }
            cell1?.lab.text = spirit[indexPath.row]
            cell1?.lab.textColor = UIColor.whiteColor()
            cell1?.backgroundColor = UIColor(red: 130/255, green: 130/255, blue: 130/255, alpha: 0)
            return cell1!
            
        } else {
            
            var cell2 = tableMembers.dequeueReusableCellWithIdentifier("cell2")
            if cell2 == nil {
                cell2 = UITableViewCell(style: .Default, reuseIdentifier: "cell2")
            }
        
            cell2!.textLabel!.text = spiritName[indexPath.row]
            cell2!.textLabel?.font = UIFont.systemFontOfSize(10)
            return cell2!
            
        }
        
    }
}