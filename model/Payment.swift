struct Payment {
    
    var id: Int?
    var ordernumber: Int?
    var paymentid: Int?
    var membershipcardnumber: String?
    var paymentamount: Float?
    var ismembershipcard: Int?
    
    init (id: Int?, ordernumber: Int?, paymentid: Int?, membershipcardnumber: String?, paymentamount: Float?, ismembershipcard: Int?) {
        
        self.id = id
        self.ordernumber = ordernumber
        self.paymentid = paymentid
        self.membershipcardnumber = membershipcardnumber
        self.paymentamount = paymentamount
        self.ismembershipcard = ismembershipcard
    }
}
