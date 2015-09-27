struct OrderCommodity {
    
    var number: Int?
    var ordernumber: Int?
    var commoditynumber: Int?
    var quantity: Int?
    var realreceivequantity: Int?
    var comment: String?
    var name: String?
    var volume: String?
    var salePrice: String?
    var origin: String?
    var packageName: String?
    var isScore: String?
    var isGift: String?
    var picture: String?
    var price: String?
    var amount: String?
    var isGived: String?
    
    init (number: Int?, ordernumber: Int?, commoditynumber: Int?, quantity: Int?, realreceivequantity: Int?, comment: String?, name: String?, volume: String?, salePrice: String?, origin: String?, packageName: String?, isScore: String?, isGift: String?, picture: String?, price: String?, amount: String?, isGived: String?) {
    
        self.number = number
        self.ordernumber = ordernumber
        self.commoditynumber = commoditynumber
        self.quantity = quantity
        self.realreceivequantity = realreceivequantity
        self.comment = comment
        self.name = name
        self.volume = volume
        self.salePrice = salePrice
        self.origin = origin
        self.packageName = packageName
        self.isScore = isScore
        self.isGift = isGift
        self.picture = picture
        self.price = price
        self.amount = amount
        self.isGived = isGived
    }
}
