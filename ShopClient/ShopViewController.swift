/*
    image:  图片
    lab1:   横线
    name:   酒名
    name1:  “商品详情”
    labPrice1:“原价”
    labPrice2:“活动价”
    labPrice3:“酒价（数字）”
    lab_bg:   灰背景
    lab_brand:品牌＋酒价
    lab_spec: 规格＋说明
    lab_site: 地点＋地址
    lab_keep: 保存条件＋说明
    btn1:     “加入购物车”
    btn2:     “立即下单”
*/

import Foundation

import UIKit

class ShopViewController: UIViewController {
    
    var image: UIImageView = UIImageView()
    var lab1: UILabel = UILabel()
    var name: UILabel = UILabel()
    var name1: UILabel = UILabel()
    var labPrice1: UILabel = UILabel()
    var labPrice2: UILabel = UILabel()
    var labPrice3: UILabel = UILabel()
    var lab_bg1: UILabel = UILabel()
    var lab_bg2: UILabel = UILabel()
    var lab_bg3: UILabel = UILabel()
    var lab_bg4: UILabel = UILabel()
    var lab_bg5: UILabel = UILabel()
    var lab_brand: UILabel = UILabel()
    var lab_spec: UILabel = UILabel()
    var lab_site: UILabel = UILabel()
    var lab_keep: UILabel = UILabel()
    var btn1: UIButton = UIButton()
    var btn2: UIButton = UIButton()
    let number1 = 888
    let number2 = 688
    let ml = "550ml"
    let alcoholName = "剑南春"
    let site = "四川省绵竹县"
    let keep = "常温"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(image)
        self.view.addSubview(lab1)
        self.view.addSubview(name)
        self.view.addSubview(labPrice1)
        self.view.addSubview(labPrice2)
        self.view.addSubview(labPrice3)
        self.view.addSubview(lab_bg1)
        self.view.addSubview(lab_bg2)
        self.view.addSubview(lab_bg3)
        self.view.addSubview(lab_bg4)
        self.view.addSubview(lab_bg5)
        self.view.addSubview(name1)
        self.view.addSubview(btn1)
        self.view.addSubview(btn2)
        self.view.addSubview(lab_brand)
        self.view.addSubview(lab_spec)
        self.view.addSubview(lab_site)
        self.view.addSubview(lab_keep)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        image.image = UIImage(named: "jiannancun.png")
        //image.backgroundColor = UIColor.redColor()
        
        lab1.backgroundColor = UIColor.grayColor()
        
        name.text = alcoholName
        name.font = UIFont.boldSystemFontOfSize(12)
        name.textColor = UIColor.grayColor()
        name.sizeToFit()
        
        var attr = NSMutableAttributedString(string: "原价：¥" + String(number1))
        attr.addAttribute(NSStrikethroughStyleAttributeName, value: NSNumber(integer: 1), range: NSMakeRange(0, count("原价：¥" + String(number1))))
        labPrice1.attributedText = attr
        labPrice1.font = UIFont.boldSystemFontOfSize(10)
        labPrice1.textColor = UIColor.grayColor()
        labPrice1.sizeToFit()
        
        labPrice2.text = "活动价："
        labPrice2.font = UIFont.boldSystemFontOfSize(10)
        labPrice2.textColor = UIColor.redColor()
        labPrice2.sizeToFit()
        
        labPrice3.text = "¥" + String(number2)
        labPrice3.font = UIFont.systemFontOfSize(12)
        labPrice3.textColor = UIColor.redColor()
        labPrice3.sizeToFit()
        
        name1.text = "商品详情"
        name1.font = UIFont.boldSystemFontOfSize(12)
        name1.textColor = UIColor.grayColor()
        name1.sizeToFit()
        
        lab_bg1.backgroundColor = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 235/255)
        lab_bg2.backgroundColor = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 235/255)
        lab_bg3.backgroundColor = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 235/255)
        lab_bg4.backgroundColor = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 235/255)
        lab_bg5.backgroundColor = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 235/255)
        
        lab_brand.text = "品牌：" + alcoholName
        lab_brand.textColor = UIColor.grayColor()
        lab_brand.font = UIFont.boldSystemFontOfSize(10)
        lab_brand.sizeToFit()
        
        lab_spec.text = "规格：" + ml
        lab_spec.textColor = UIColor.grayColor()
        lab_spec.font = UIFont.boldSystemFontOfSize(10)
        lab_spec.sizeToFit()
        
        lab_site.text = "产地：" +  site
        lab_site.textColor = UIColor.grayColor()
        lab_site.font = UIFont.boldSystemFontOfSize(10)
        lab_site.sizeToFit()
        
        lab_keep.text = "保存条件：" +  keep
        lab_keep.textColor = UIColor.grayColor()
        lab_keep.font = UIFont.boldSystemFontOfSize(10)
        lab_keep.sizeToFit()
        
        btn1.setTitle("加入购物车", forState: .Normal)
        btn1.backgroundColor = UIColor(red: 212/255, green: 65/255, blue: 37/255, alpha: 1)
        btn1.titleLabel?.font = UIFont.boldSystemFontOfSize(13)
        
        btn2.setTitle("立即下单", forState: .Normal)
        btn2.backgroundColor = UIColor(red: 193/255, green: 34/255, blue: 34/255, alpha: 1)
        btn2.titleLabel?.font = UIFont.boldSystemFontOfSize(13)
    }
    
    override func viewDidLayoutSubviews() {
        
        self.image.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(image.superview!.snp_top).offset(70)
            make.centerX.equalTo(0)
            make.width.equalTo(self.view.frame.height / 4 - 30)
            make.height.equalTo(self.view.frame.height / 4)
        })
        
        self.lab1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(image.snp_bottom).offset(10)
            make.left.equalTo(lab1.superview!.snp_left).offset(10)
            make.width.equalTo(self.view.frame.width - 20)
            make.height.equalTo(0.5)
        })
        
        self.name.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab1.snp_bottom).offset(10)
            make.left.equalTo(name.superview!.snp_left).offset(20)
        })
        
        self.labPrice1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(name.snp_bottom).offset(5)
            make.left.equalTo(labPrice1.superview!.snp_left).offset(20)
        })
        
        self.labPrice2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(name.snp_bottom).offset(5)
            make.left.equalTo(labPrice1.snp_right).offset(30)
        })
        
        self.labPrice3.snp_makeConstraints(closure: {(make) -> Void in
            make.left.equalTo(labPrice2.snp_right)
            make.bottom.equalTo(labPrice2.snp_bottom)
        })
        
        self.name1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(labPrice1.snp_bottom).offset(5)
            make.left.equalTo(name1.superview!.snp_left).offset(20)
        })
        
        self.lab_bg1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(name1.snp_bottom).offset(5)
            make.left.equalTo(lab_bg1.superview!.snp_left).offset(10)
            make.width.equalTo(self.view.frame.width - 20)
            make.height.equalTo(25)
        })
        
        self.lab_bg2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_bg1.snp_bottom).offset(2)
            make.left.equalTo(lab_bg2.superview!.snp_left).offset(10)
            make.width.equalTo(self.view.frame.width - 20)
            make.height.equalTo(25)
        })
        
        self.lab_bg3.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_bg2.snp_bottom).offset(2)
            make.left.equalTo(lab_bg3.superview!.snp_left).offset(10)
            make.width.equalTo(self.view.frame.width - 20)
            make.height.equalTo(25)
        })
        
        self.lab_bg4.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_bg3.snp_bottom).offset(2)
            make.left.equalTo(lab_bg4.superview!.snp_left).offset(10)
            make.width.equalTo(self.view.frame.width - 20)
            make.height.equalTo(25)
        })
        
        self.lab_bg5.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_bg4.snp_bottom).offset(2)
            make.left.equalTo(lab_bg5.superview!.snp_left).offset(10)
            make.width.equalTo(self.view.frame.width - 20)
            make.height.equalTo(70)
        })
        
        self.lab_brand.snp_makeConstraints(closure: {(make) -> Void in
            make.centerY.equalTo(lab_bg1)
            make.left.equalTo(lab_bg1.snp_left).offset(20)
        })
        
        self.lab_spec.snp_makeConstraints(closure: {(make) -> Void in
            make.centerY.equalTo(lab_bg2)
            make.left.equalTo(lab_bg2.snp_left).offset(20)
        })
        
        self.lab_site.snp_makeConstraints(closure: {(make) -> Void in
            make.centerY.equalTo(lab_bg3)
            make.left.equalTo(lab_bg3.snp_left).offset(20)
        })
        
        self.lab_keep.snp_makeConstraints(closure: {(make) -> Void in
            make.centerY.equalTo(lab_bg4)
            make.left.equalTo(lab_bg4.snp_left).offset(20)
        })
        
        self.btn1.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_bg5.snp_bottom).offset(10)
            make.left.equalTo(btn1.superview!.snp_left).offset(30)
            make.width.equalTo(100)
            make.height.equalTo(30)
        })
        
        self.btn2.snp_makeConstraints(closure: {(make) -> Void in
            make.top.equalTo(lab_bg5.snp_bottom).offset(10)
            make.right.equalTo(btn2.superview!.snp_right).offset(-30)
            make.width.equalTo(80)
            make.height.equalTo(30)
        })
    }
}