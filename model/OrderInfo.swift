struct OrderInfo {
    
    var orderNumber: Int?
    var from: Int?
    var status: Int?
    var unsubscribe: String?
    var customerType: Int?
    var customerName: String?
    var mebershipNumber: Int?
    var consignee: String?
    var incomingphone: String?
    var contactphone: String?
    var pickupmethod: Int?
    var deliveryaddress: String?
    var orderamount: Int?
    var paymentmethod: Int?
    var isdomembershipcard: Int?
    var isrechargemembershipcard: Int?
    var dispatchstaffnumber: Int?
    var dispatchbegintime: Int?
    var dispatcharrivetime: Int?
    var dispatchendtime: Int?
    var operatornumber: Int?
    var createtime: Int?
    var storeNumber: Int?
    var storeName: String?
    var ismodify: String?
    var type: Int?
    var subscribebegintime: String?
    var subscribeendtime: String?
    var membershipcardnumber: String?
    var commoditydetailjson: String?
    
    init (orderNumber: Int?, from: Int?, status: Int?, unsubscribe: String?, customerType: Int?, customerName: String?, mebershipNumber: Int?, consignee: String?, incomingphone: String?, contactphone: String?, pickupmethod: Int?, deliveryaddress: String?, orderamount: Int?, paymentmethod: Int?, isdomembershipcard: Int?, isrechargemembershipcard: Int?, dispatchstaffnumber: Int?, dispatchbegintime: Int?, dispatcharrivetime: Int?, dispatchendtime: Int?, operatornumber: Int?, createtime: Int?, storeNumber: Int?, storeName: String?, ismodify: String?, type: Int?,
        subscribebegintime: String?,
        subscribeendtime: String?, membershipcardnumber: String?,commoditydetailjson: String?) {
            
            self.orderNumber = orderNumber
            self.from = from
            self.status = status
            self.unsubscribe = unsubscribe
            self.customerType = customerType
            self.customerName = customerName
            self.mebershipNumber = mebershipNumber
            self.consignee = consignee
            self.incomingphone = incomingphone
            self.contactphone = contactphone
            self.pickupmethod = pickupmethod
            self.deliveryaddress = deliveryaddress
            self.orderamount = orderamount
            self.paymentmethod = paymentmethod
            self.isdomembershipcard = isdomembershipcard
            self.isrechargemembershipcard = isrechargemembershipcard
            self.dispatchstaffnumber = dispatchstaffnumber
            self.dispatchbegintime = dispatchbegintime
            self.dispatcharrivetime = dispatcharrivetime
            self.dispatchendtime = dispatchendtime
            self.operatornumber = operatornumber
            self.createtime = createtime
            self.storeNumber = storeNumber
            self.storeName = storeName
            self.ismodify = ismodify
            self.type = type
            self.subscribebegintime = subscribebegintime
            self.subscribeendtime = subscribeendtime
            self.membershipcardnumber = membershipcardnumber
            self.commoditydetailjson = commoditydetailjson
    }
}