struct User {
    
    var membershipCardNumber: String?
    var membershipNumber: String?
    var membershipLevel:Int?
    var bindPhone: String?
    var openerstaffNumber:Int?
    var openTime: Int?
    var expiredTime: Int?
    var integral: Int?
    var balance: Float?
    var password: String?
    var newPassword: String?
    var openStore: String?
    var state: String?
    var phone: String?
    var name:String?
    var levelId: Int?
    var levelName: String?
    
    init (membershipCardNumber: String?, membershipNumber: String?, membershipLevel: Int?, bindPhone: String?, openerstaffNumber: Int?, openTime: Int?, expiredTime: Int?, integral: Int?, balance: Float?, password: String?, newPassword: String?, openStore: String?, state: String?, phone: String?, name :String?, levelId: Int?, levelName: String?) {
        
        self.membershipNumber = membershipNumber
        self.membershipCardNumber = membershipCardNumber
        self.membershipLevel = membershipLevel
        self.bindPhone = bindPhone
        self.openerstaffNumber = openerstaffNumber
        self.openTime = openTime
        self.expiredTime = expiredTime
        self.integral = integral
        self.balance = balance
        self.password  = password
        self.newPassword = newPassword
        self.openStore = openStore
        self.state = state
        self.phone = phone
        self.name = name
        self.levelId = levelId
        self.levelName = levelName
    }
}