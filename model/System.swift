struct System {
    
    var id: Int?
    var versionnumber: String?
    var path: String?
    var sign: Int?
    var createtime: Int?
    
    init (id: Int?, versionnumber: String?, path: String?, sign: Int?, createtime: Int?) {
        self.id = id
        self.versionnumber = versionnumber
        self.path = path
        self.sign = sign
        self.createtime = createtime
        
        
    }
}