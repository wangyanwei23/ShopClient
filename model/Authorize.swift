struct Authorize {

    var membershipcardnumber: String?
    var membershipnumber: String?
    var membershiplevel: String?
    var bindphone: String?
    var openerstaffnumber: String?
    var opentime: String?
    var expiredtime: String?
    var integral: Int?
    var balance: Int?
    var password: String?
    var openstore: String?
    var state: String?
    var phone: String?
    var name: String?
    var levelid: Int?
    var levelname: String?

    init (membershipcardnumber: String?, membershipnumber: String?, membershiplevel: String?, bindphone: String?, openerstaffnumber: String?, opentime: String?, expiredtime: String?, integral: Int?, balance: Int?, password: String?, openstore: String?, state: String?, phone: String?, name: String?, levelid: Int?, levelname: String?) {
        
        self.membershipcardnumber = membershipcardnumber
        self.membershipnumber = membershipnumber
        self.membershiplevel = membershiplevel
        self.bindphone = bindphone
        self.openerstaffnumber = openerstaffnumber
        self.opentime = opentime
        self.expiredtime = expiredtime
        self.integral = integral
        self.balance = balance
        self.password = password
        self.openstore = openstore
        self.state = state
        self.phone = phone
        self.name = name
        self.levelid = levelid
        self.levelname = levelname
    }
}