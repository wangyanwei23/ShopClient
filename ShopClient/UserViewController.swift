/*
    lab_bg1:    黑背景
    lab_name:   "欢迎..."
    btn1        登录/注册
    btn_order   “我的订单”
    btn_site    “地址管理”
    btn_ser     "客服热线"
    btn_edition “版本更新”
    lab_edition 版本
*/

import Foundation

import UIKit

class UserViewController: UIViewController {
    
    var lab_bg1: UILabel = UILabel()
    var lab_name: UILabel = UILabel()
    var btn1: UIButton = UIButton()
    var btn_order: UIButton = UIButton()
    var btn_site: UIButton = UIButton()
    var btn_ser: UIButton = UIButton()
    var btn_edition: UIButton = UIButton()
    var lab_edition: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(lab_bg1)
        self.view.addSubview(lab_name)
        self.view.addSubview(btn1)
        self.view.addSubview(btn_order)
        self.view.addSubview(btn_site)
        self.view.addSubview(btn_ser)
        self.view.addSubview(btn_edition)
        self.view.addSubview(lab_edition)
    }
    
    override func viewWillAppear(animated: Bool) {
        
        let btns = [btn_order, btn_site, btn_ser, btn_edition]
        let btnName = ["我的订单", "地址管理", "客服热线", "版本更新"]
        
        self.view.backgroundColor = UIColor(red: 193/255, green: 193/255, blue: 193/255, alpha: 1)
        
        lab_bg1.backgroundColor = UIColor(red: 15/255, green: 26/255, blue: 46/255, alpha: 1)
        
        lab_name.text = "欢迎来到 酒乐GO"
        lab_name.font = UIFont.boldSystemFontOfSize(15)
        lab_name.textColor = UIColor.whiteColor()
        lab_name.sizeToFit()
        
        btn1.setTitle("登录/注册", forState: .Normal)
        btn1.tintColor = UIColor.whiteColor()
        //btn1 边框颜色
        btn1.layer.borderColor = UIColor.whiteColor().CGColor
        //btn1 边框宽度
        btn1.layer.borderWidth = 1
        //btn1 边框圆角半径
        btn1.layer.cornerRadius = 5
        btn1.titleLabel?.font = UIFont.boldSystemFontOfSize(12)
        btn1.sizeToFit()
    
        for var i = 0; i < btns.count; i++ {
            btns[i].setTitle(btnName[i], forState: .Normal)
            btns[i].titleLabel?.font = UIFont.boldSystemFontOfSize(15)
            btns[i].setTitleColor(UIColor.grayColor(), forState: .Normal)
            btns[i].backgroundColor = UIColor.whiteColor()
            //设置button文字左对齐
            btns[i].titleEdgeInsets = UIEdgeInsetsMake(0, -240, 0, 0)
        }
        
        lab_edition.text = "v4.0.1.25"
        lab_edition.font = UIFont.systemFontOfSize(10)
        lab_edition.textColor = UIColor.grayColor()
        lab_edition.sizeToFit()
    }
 
    override func viewDidLayoutSubviews() {
        
        self.lab_bg1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_bg1.superview!.snp_top).offset(60)
            make.width.equalTo(self.view.frame.width)
            make.height.equalTo(self.view.frame.height / 5)
        })
        
        self.lab_name.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_bg1.snp_top).offset(30)
            make.centerX.equalTo(lab_bg1)
        })

        self.btn1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_name.snp_bottom).offset(30)
            make.centerX.equalTo(lab_bg1)
        })
        
        self.btn_order.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_bg1.snp_bottom)
            make.width.equalTo(self.view.frame.width)
            make.height.equalTo(40)
        })
        
        self.btn_site.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(btn_order.snp_bottom).offset(1)
            make.width.equalTo(self.view.frame.width)
            make.height.equalTo(40)
        })
        
        self.btn_ser.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(btn_site.snp_bottom).offset(5)
            make.width.equalTo(self.view.frame.width)
            make.height.equalTo(40)
        })
        
        self.btn_edition.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(btn_ser.snp_bottom).offset(1)
            make.width.equalTo(self.view.frame.width)
            make.height.equalTo(40)
        })
        
        self.lab_edition.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(btn_edition.snp_top).offset(17 )
            make.left.equalTo(btn_edition.snp_left).offset(80)
        })
    }
}