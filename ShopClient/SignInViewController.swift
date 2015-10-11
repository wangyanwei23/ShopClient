
import Foundation
import UIKit
import SnapKit

class SignInViewController: UIViewController {
    
    var button: UIButton = UIButton()
    var nameLab: UILabel = UILabel()
    var passwordLab: UILabel = UILabel()
    var nameText: UITextField = UITextField()
    var passwordText: UITextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(button)
        self.view.addSubview(nameLab)
        self.view.addSubview(passwordLab)
        self.view.addSubview(nameText)
        self.view.addSubview(passwordText)
    }
    
    override func viewWillAppear(animated: Bool) {
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.title = "登录"
        let rightBtn = UIBarButtonItem(title: "注册", style: .Plain, target: self, action: "nextPage")
        rightBtn.tintColor = UIColor.blackColor()
        navigationItem.setRightBarButtonItem(rightBtn, animated: true)
        
        button.setTitle("登录", forState: .Normal)
        button.backgroundColor = UIColor(red: 225/255, green: 39/255, blue: 39/255, alpha: 1)
        
        nameLab.text = "账户名"
        nameLab.textColor = UIColor.blackColor()
        
        passwordLab.text = "密码"
        passwordLab.textColor = UIColor.blackColor()
        
        nameText.borderStyle = UITextBorderStyle.RoundedRect
        nameText.placeholder = "请输入会员卡号/手机号"
        nameText.keyboardType = UIKeyboardType.Default
        nameText.returnKeyType = UIReturnKeyType.Done
        
        passwordText.borderStyle = UITextBorderStyle.RoundedRect
        passwordText.placeholder = "请输入密码"
        passwordText.keyboardType = UIKeyboardType.Default
        passwordText.returnKeyType = UIReturnKeyType.Done
    }
    

    
    override func viewDidLayoutSubviews() {
        
        nameLab.snp_makeConstraints ( closure: { (make) -> Void in
            make.top.equalTo(nameLab.superview!.snp_top).offset(84)
            make.left.equalTo(nameLab.superview!.snp_left).offset(20)
            make.width.equalTo(70)
            make.height.equalTo(30)
        })
        
        button.snp_makeConstraints(closure: { (make) -> Void in
            make.top.equalTo(passwordLab.snp_bottom).offset(30)
            make.centerX.equalTo(button.superview!.snp_centerX)
            make.width.equalTo(280)
            make.height.equalTo(40)
        })
        
        passwordLab.snp_makeConstraints ( closure: { (make) -> Void in
            make.top.equalTo(nameLab.snp_bottom).offset(20)
            make.left.equalTo(nameLab.superview!.snp_left).offset(20)
            make.width.equalTo(70)
            make.height.equalTo(30)
        })
        
        nameText.snp_makeConstraints(closure: {(make) -> Void in
            make.left.equalTo(nameLab.snp_right)
            make.top.equalTo(nameText.superview!.snp_top).offset(84)
            make.width.equalTo(210)
            make.height.equalTo(30)
        })
        
        passwordText.snp_makeConstraints(closure: {(make) -> Void in
            make.left.equalTo(nameLab.snp_right)
            make.top.equalTo(nameText.snp_bottom).offset(20)
            make.width.equalTo(210)
            make.height.equalTo(30)
        })
    }
    
    func nextPage () {
        self.navigationController?.pushViewController(UserViewController(), animated: true)
    }
}