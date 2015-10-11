//
//  CustomCell1.swift
//  ShopClient
//
//  Created by Titan on 9/7/15.
//  Copyright (c) 2015 王彦伟. All rights reserved.
//

import Foundation

import UIKit

class CustomHomeCell: UITableViewCell {
    
    let indetifier = "indetifier"
    var imageV: UIImageView = UIImageView()
    var labName: UILabel = UILabel()
    var labPrice: UILabel = UILabel()
    var labPrice1: UILabel = UILabel()
    var labName1: UILabel = UILabel()
    var labName2: UILabel = UILabel()
    var labName3: UILabel = UILabel()
    var number: UILabel = UILabel()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: .Subtitle, reuseIdentifier: indetifier)

        self.addSubview(imageV)
        self.imageV.snp_makeConstraints(closure: {(make) -> Void in
            make.width.equalTo(100)
            make.height.equalTo(80)
            make.top.equalTo(snp_top).offset(10)
            make.left.equalTo(snp_left).offset(10)
        })
        
        self.addSubview(labName)
        self.labName.snp_makeConstraints(closure: {(make) -> Void in
//            make.width.equalTo(100)
//            make.height.equalTo(16)
            make.top.equalTo(snp_top).offset(20)
            make.left.equalTo(imageV.snp_right).offset(10)
        })
        labName.font = UIFont.boldSystemFontOfSize(16)
        labName.sizeToFit()

        self.addSubview(labName2)
        self.labName2.snp_makeConstraints(closure: {(make) -> Void in
//            make.width.equalTo(50)
//            make.height.equalTo(13)
            make.top.equalTo(labName.snp_bottom).offset(2)
            make.left.equalTo(imageV.snp_right).offset(10)
        })
//        labName2.text = "原价："
        labName2.font = UIFont.systemFontOfSize(13)
        let label = "原价：¥"
        let attr = NSMutableAttributedString(string: label)
        attr.addAttribute(NSStrikethroughStyleAttributeName, value: NSNumber(integer: 1), range: NSMakeRange(0, label.characters.count))
        labName2.attributedText = attr
        labName2.sizeToFit()
        
        self.addSubview(labPrice)
        self.labPrice.snp_makeConstraints(closure: {(make) -> Void in
//            make.width.equalTo(50)
//            make.height.equalTo(13)
            make.top.equalTo(labName.snp_bottom).offset(2)
            make.left.equalTo(labName2.snp_right).offset(3)
        })
        labPrice.font = UIFont.systemFontOfSize(13)
        labPrice.sizeToFit()

        self.addSubview(labName1)
        self.labName1.snp_makeConstraints(closure: {(make) -> Void in
//            make.width.equalTo(50)
//            make.height.equalTo(13)
            make.top.equalTo(labName2.snp_bottom)
            make.left.equalTo(imageV.snp_right).offset(10)
        })
        labName1.sizeToFit()
        labName1.text = "价格："
        labName1.font = UIFont.systemFontOfSize(13)

        self.addSubview(labName3)
        self.labName3.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labName2.snp_bottom)
            make.left.equalTo(labName1.snp_right)
        })
        labName3.text = "¥"
        labName3.font = UIFont.systemFontOfSize(13)
        labName3.textColor = UIColor.redColor()
        labName3.sizeToFit()
        
        self.addSubview(labPrice1)
        self.labPrice1.snp_makeConstraints(closure: {(make) -> Void in
//            make.width.equalTo(50)
//            make.height.equalTo(15)
            make.top.equalTo(labPrice.snp_bottom).offset(-2)
            make.left.equalTo(labName3.snp_right).offset(3)
        })
        labPrice1.font = UIFont.systemFontOfSize(15)
        labPrice1.textColor = UIColor.redColor()
        labPrice1.sizeToFit()
        
        self.addSubview(number)
        self.number.snp_makeConstraints(closure: {(make) -> Void in
//            make.width.equalTo(100)
//            make.height.equalTo(13)
            make.top.equalTo(labName1.snp_bottom)
            make.left.equalTo(imageV.snp_right).offset(10)
        })
        number.font = UIFont.systemFontOfSize(13)
        number.textColor = UIColor.grayColor()
        number.sizeToFit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}