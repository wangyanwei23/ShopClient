struct CommoditySearch {
    
    var commodityNumber: String?
    var name: String?
    var commoditycategoryl1: String?
    var attribute: Int?
    var picture: String?
    var thestate: Int?
    var categoryName: String?
    var salePrice: Float?
    var packageNumber: Int?
    var packageName: String?
    var volume: String?
    var isGift: Int?
    var isScore: Int?
    
    init (commodityNumber: String?, name: String?, commoditycategoryl1: String?, attribute: Int?, picture: String?, thestate: Int?, categoryName: String?, salePrice: Float?, packageNumber:Int?, packageName:String?, volume: String?, isGift: Int?, isScore: Int?) {

        self.commodityNumber = commodityNumber
        self.name = name
        self.commoditycategoryl1 = commoditycategoryl1
        self.attribute = attribute
        self.picture = picture
        self.thestate = thestate
        self.categoryName = categoryName
        self.salePrice = salePrice
        self.packageNumber = packageNumber
        self.packageName = packageName
        self.volume = volume
        self.isGift = isGift
        self.isScore = isScore
    }
}