struct Category {
    
    var number: String
    var categoryname: String
    var categorylevel: Int?
    var parentnum: String
    
    init (number: String, categoryname: String, categorylevel: Int?, parentnum: String) {
    
        self.number = number
        self.categoryname = categoryname
        self.categorylevel = categorylevel
        self.parentnum = parentnum
    }
}