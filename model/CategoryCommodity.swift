struct CategoryCommodity {
    
    var commoditynumber: String?
    var name: String?
    var commoditycategoryl1: String?
    var attribute: Int?
    var picture: String?
    var thestate: Int?
    var categoryName: String?
    var saleprice: Float?
    var memberprice: Float?
    var packagenumber: String?
    var packageName: String?
    var volume: String?
    var isGift: Int?
    var isScore: Int?
    
    init (commoditynumber: String?, name: String?, commoditycategoryl1: String?, attribute: Int?, picture: String?, thestate: Int?, categoryName: String?, saleprice: Float?, memberprice: Float?, packagenumber: String?, packageName: String?, volume: String?, isScore: Int?, isGift: Int?) {
    
        self.packagenumber = packagenumber
        self.commoditynumber = commoditynumber
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
}