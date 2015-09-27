struct Barcode {
    
    var number: Int?
    var commodityNumber: Int?
    var packageNumber: Int?
    var barcode: String?
    var unitsperpackage: Int?
    var saleprice: Float?
    var memberprice: Float?
    var wholeprice: Float?
    var foraddress: String?
    var thetype: String?
    var price: Float?
    var packageName: String?
    
    init (number: Int?, commodityNumber: Int?, packageNumber: Int?, barcode: String?, unitsperpackage: Int?, saleprice: Float?, memberprice: Float?, wholeprice: Float?, foraddress: String?, thetype: String?, price: Float?, packageName: String?) {
    
        self.number = number
        self.commodityNumber = commodityNumber
        self.packageNumber = packageNumber
        self.barcode = barcode
        self.unitsperpackage = unitsperpackage
        self.saleprice = saleprice
        self.memberprice = memberprice
        self.wholeprice = wholeprice
        self.foraddress = foraddress
        self.thetype = thetype
        self.price = price
        self.packageName = packageName
    }
}