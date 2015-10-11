import Foundation
import UIKit

class CustomCategoryCell: UITableViewCell {
    
    let indetifier = "indetifier"
    var imageV: UIImageView = UIImageView()
    var labName: UILabel = UILabel()
    var labPrice: UILabel = UILabel()
    var labPrice1: UILabel = UILabel()
    var labName1: UILabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: .Subtitle, reuseIdentifier: indetifier)

        self.addSubview(imageV)
        imageV.snp_makeConstraints(closure: {(make) -> Void in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.top.equalTo(snp_top).offset(25)
            make.left.equalTo(snp_left).offset(10)
        })

        //label.frame = CGRectMake(60, 30, 100, 25)
        self.addSubview(labName)
        labName.snp_makeConstraints(closure: {(make) -> Void in
            make.width.equalTo(100)
            make.height.equalTo(25)
            make.top.equalTo(snp_top).offset(25)
            make.left.equalTo(snp_left).offset(65)
        })
        labName.font = UIFont.systemFontOfSize(15)

        //label1.frame = CGRectMake(60, 80, 100, 25)
        self.addSubview(labPrice)
        labPrice.snp_makeConstraints(closure: {(make) -> Void in
            make.width.equalTo(50)
            make.height.equalTo(25)
            make.top.equalTo(snp_top).offset(50)
            make.left.equalTo(snp_left).offset(65)
        })
        labPrice.font = UIFont.systemFontOfSize(15)

        self.addSubview(labName1)
        labName1.snp_makeConstraints(closure: {(make) -> Void in
            make.width.equalTo(60)
            make.height.equalTo(25)
            make.top.equalTo(snp_top).offset(50)
            make.left.equalTo(snp_left).offset(110)
        })
        labName1.text = "优惠价:"
        labName1.font = UIFont.systemFontOfSize(15)

        self.addSubview(labPrice1)
        labPrice1.snp_makeConstraints(closure: {(make) -> Void in
            make.width.equalTo(50)
            make.height.equalTo(25)
            make.top.equalTo(snp_top).offset(50)
            make.left.equalTo(snp_left).offset(165)
        })
        labPrice1.font = UIFont.systemFontOfSize(18)
        labPrice1.textColor = UIColor.redColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}