//
//  CustomCell1.swift
//  ShopClient
//
//  Created by Titan on 9/7/15.
//  Copyright (c) 2015 王彦伟. All rights reserved.
//

import Foundation

import UIKit

class CustomCell: UITableViewCell {
    
    let indetifier = "indetifier"
    var lab: UILabel = UILabel()
    var line: UILabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: .Default, reuseIdentifier: indetifier)
        
        self.addSubview(lab)
        self.lab.snp_makeConstraints(closure: {(make) -> Void in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
//            make.top.equalTo(20)
//            make.left.equalTo(20)
        })
        lab.font = UIFont.boldSystemFontOfSize(14)
        lab.sizeToFit()
        
        self.addSubview(line)
        self.line.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(self.snp_bottom).offset(-1)
            make.width.equalTo(self.frame.width)
            make.height.equalTo(1)
        })
        line.backgroundColor = UIColor(red: 193/255, green: 193/255, blue: 193/255, alpha: 0.5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}