struct OrderRejection {
    
    var id: Int?
    var ordernumber: Int?
    var rejectionreasonid: Int?
    var rejectionreasontype: String?
    var rejectiondescription: String?
    var operatorNumber: Int?
    var operatetime: Int?
    
    init (id: Int?, ordernumber: Int?, rejectionreasonid: Int?, rejectionreasontype: String?, rejectiondescription: String?, operatorNumber: Int?, operatetime: Int?) {
    
        self.id = id
        self.ordernumber = ordernumber
        self.rejectionreasonid = rejectionreasonid
        self.rejectionreasontype = rejectionreasontype
        self.rejectiondescription = rejectiondescription
        self.operatorNumber = operatorNumber
        self.operatetime = operatetime
    }
}
