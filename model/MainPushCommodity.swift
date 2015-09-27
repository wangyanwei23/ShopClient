struct MainPushCommodity {
    
    var commodityNumber: String?
    var name: String?
    var commoditycategoryl1: String?
    var attribute: Int?
    var picture: String?
    var thestate: Int?
    var categoryName: String?
    var salePrice: Float?
    var memberPrice: Float?
    var packageNumber: Int?
    var packageName: String?
    var volume: String?
    var origin: String?
    var isGift: Int?
    var isScore: Int?
    var ctype: Int?
    
    init (commodityNumber: String?, name: String?, commoditycategoryl1: String?,  attribute: Int?, picture: String?, thestate: Int?, categoryName: String?, salePrice: Float?, memberPrice: Float?, packageNumber: Int?, packageName: String?, volume: String?, origin: String?, isGift: Int?, isScore: Int?, ctype: Int?) {
    
        self.commodityNumber = commodityNumber
        self.name = name
        self.commoditycategoryl1 = commoditycategoryl1
        self.attribute = attribute
        self.picture = picture
        self.thestate = thestate
        self.categoryName = categoryName
        self.salePrice = salePrice
        self.memberPrice = memberPrice
        self.packageNumber = packageNumber
        self.packageName = packageName
        self.volume = volume
        self.origin = origin
        self.isGift = isGift
        self.isScore = isScore
        self.ctype = ctype
    }
}