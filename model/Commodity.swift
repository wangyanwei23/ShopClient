struct Commodity {
    
    var commodityNumber: String?
    var name: String?
    var specification: String?
    var origin: String?
    var unit: Int?
    var productiondate: Int?
    var expirationdate: Int?
    var commoditycategoryl1: String?
    var singlecredits: Int?
    var provider: Int?
    var profit: Int?
    var attribute: Int?
    var taxrate: Int?
    var temperature: String?
    var detail: String?
    var overview: String?
    var savecondition: String?
    var msgorigin: String?
    var picture: String?
    var thestate: Int?
    var categoryName: String?
    var saleprice: Float?
    var packageNumber: String?
    var packageName: String?
    var memberprice: Float?
    var volume: String?
    var isGift: Int?
    var isScore: Int?
    var ctype: Int?
    var number: Int?
    var ordernumber: Int?
    var realreceivequantity: Int?
    var comment: String?
    var quantity: Int?
    var price: Float?
    var amount: String?
    var isGived: String?


    //商品基本信息
    init (commodityNumber: String?, name: String?, specification: String?, origin: String?, unit: Int?, productiondate: Int?, expirationdate: Int?, commoditycategoryl1: String?, singlecredits: Int?, provider: Int?, profit: Int?, attribute: Int?, taxrate: Int?, temperature: String?, detail: String?, overview: String?, savecondition: String?, msgorigin: String?, picture: String?, thestate: Int?, categoryName: String?, saleprice: Float?, packageNumber: String?, packageName: String?
) {
    
    self.commodityNumber = commodityNumber
    self.name = name
    self.specification = specification
    self.origin = origin
    self.unit = unit
    self.productiondate = productiondate
    self.expirationdate = expirationdate
    self.commoditycategoryl1 = commoditycategoryl1
    self.singlecredits = singlecredits
    self.provider = provider
    self.profit = profit
    self.attribute = attribute
    self.taxrate = taxrate
    self.temperature = temperature
    self.detail = detail
    self.overview = overview
    self.savecondition = savecondition
    self.msgorigin = msgorigin
    self.picture = picture
    self.thestate = thestate
    self.categoryName = categoryName
    self.saleprice = saleprice
    self.packageNumber = packageNumber
    self.packageName = packageName
    }
    
//    分类商品
    init (commodityNumber: String?, name: String?, commoditycategoryl1: String?, attribute: Int?, picture: String?, thestate: Int?, categoryName: String?, saleprice: Float?, memberprice: Float?, packageNumber: String?, packageName: String?, volume: String?, isScore: Int?, isGift: Int?) {
        
        self.packageNumber = packageNumber
        self.commodityNumber = commodityNumber
        self.name = name
        self.volume = volume
        self.saleprice = saleprice
        self.memberprice = memberprice
        self.packageName = packageName
        self.isScore = isScore
        self.isGift = isGift
        self.attribute = attribute
        self.thestate = thestate
        self.categoryName = categoryName
        self.picture = picture
        self.commoditycategoryl1 = commoditycategoryl1
    }
    
//    主推商品
    init (commodityNumber: String?, name: String?, commoditycategoryl1: String?,  attribute: Int?, picture: String?, thestate: Int?, categoryName: String?, saleprice: Float?, memberprice: Float?, packageNumber: String?, packageName: String?, volume: String?, origin: String?, isGift: Int?, isScore: Int?, ctype: Int?) {
        
        self.commodityNumber = commodityNumber
        self.name = name
        self.commoditycategoryl1 = commoditycategoryl1
        self.attribute = attribute
        self.picture = picture
        self.thestate = thestate
        self.categoryName = categoryName
        self.saleprice = saleprice
        self.memberprice = memberprice
        self.packageNumber = packageNumber
        self.packageName = packageName
        self.volume = volume
        self.origin = origin
        self.isGift = isGift
        self.isScore = isScore
        self.ctype = ctype
    }
    
//      订单商品信息
    init (number: Int?, ordernumber: Int?, commodityNumber: String?, quantity: Int?, realreceivequantity: Int?, comment: String?, name: String?, volume: String?, saleprice: Float?, origin: String?, packageName: String?, isScore: Int?, isGift: Int?, picture: String?, price: Float?, amount: String?, isGived: String?) {
        
        self.number = number
        self.ordernumber = ordernumber
        self.commodityNumber = commodityNumber
        self.quantity = quantity
        self.realreceivequantity = realreceivequantity
        self.comment = comment
        self.name = name
        self.volume = volume
        self.saleprice = saleprice
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
