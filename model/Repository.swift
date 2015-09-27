struct Repository {
    
    var number: Int?
    var repositorynumber: Int?
    var commoditynumber: Int?
    var realstock: Int?
    var virtualstock: Int?
    
    init (number: Int?, repositorynumber: Int?, commoditynumber: Int?, realstock: Int?, virtualstock: Int?) {
    
        self.number = number
        self.repositorynumber = repositorynumber
        self.commoditynumber = commoditynumber
        self.realstock = realstock
        self.virtualstock = virtualstock
    }
}