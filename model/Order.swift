struct Order {
    
    var orderNumber: Int?
    var from: Int?
    var status: Int?
    var unsubscribe: Int?
    var customerType: Int?
    var customerName: String?
    var mebershipNumber: Int?
    var consignee: String?
    var incomingphone: String?
    var contactphone: String?
    var pickupmethod: Int?
    var deliveryAddress: String?
    var orderamount: Int?
    var paymentmethod: Int?
    var isdomembershipcard: Int?
    var isrechargemembershipcard: Int?
    var dispatchstaffnumber: Int?
    var dispatchbegintime: Int?
    var dispatchendtime: Int?
    var createtime: Int?
    var storeNumber: Int?
    var storename: String?
    
    init (orderNumber: Int?, from: Int?, status: Int?, unsubscribe:Int?, customerName: String?, customerType: Int?, mebershipNumber: Int?, consignee: String?, incomingphone: String?, contactphone: String?, pickupmethod: Int?, deliveryAddress: String?, orderamount: Int?, paymentmethod: Int?, isdomembershipcard: Int?, isrechargemembershipcard: Int?, dispatchstaffnumber: Int?, dispatchbegintime: Int?, dispatchendtime: Int?, createtime: Int?, storeNumber: Int?, storename: String?) {
    
        self.orderNumber = orderNumber
        self.from = from
        self.status = status
        self.unsubscribe = unsubscribe
        self.customerName = customerName
        self.customerType = customerType
        self.mebershipNumber = mebershipNumber
        self.consignee = consignee
        self.incomingphone = incomingphone
        self.contactphone = contactphone
        self.pickupmethod = pickupmethod
        self.deliveryAddress = deliveryAddress
        self.orderamount = orderamount
        self.paymentmethod = paymentmethod
        self.isdomembershipcard = isdomembershipcard
        self.isrechargemembershipcard = isrechargemembershipcard
        self.dispatchstaffnumber = dispatchstaffnumber
        self.dispatchbegintime = dispatchbegintime
        self.dispatchendtime = dispatchendtime
        self.createtime = createtime
        self.storeNumber = storeNumber
        self.storename = storename
    }
}