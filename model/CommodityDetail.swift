struct CommodityDetail {
    
    var commoditynumber: Int?
    var firstimagepath: String?
    var secondimagepath: String?
    var thirdimagepath: String?
    var fourthimagepath: String?
    var fifthimagepath: String?
    var commoditydetail: String?
    
    init (commoditynumber: Int?, firstimagepath: String?, secondimagepath: String?, thirdimagepath: String?, fourthimagepath: String?, fifthimagepath: String?, commoditydetail: String?) {
    
        self.commoditynumber = commoditynumber
        self.firstimagepath = firstimagepath
        self.secondimagepath = secondimagepath
        self.thirdimagepath = thirdimagepath
        self.fourthimagepath = fourthimagepath
        self.fifthimagepath = fifthimagepath
        self.commoditydetail = commoditydetail
    }
}