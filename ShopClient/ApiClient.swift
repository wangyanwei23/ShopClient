import Foundation

class ApiClient {
    
    static let url = "http://121.40.78.69:8088/app/"
    
    //用户退出
    static func getLoginOut (completion: ((String?, String?) -> Void)) {
    
        let urlString = url + "user/loginOut"
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data: NSDictionary = dict {
                if let msg = data["msg"] as? String {
                    completion(msg, nil)
                } else {
                    completion(nil, "未知错误")
                    //completion(nil, "你没有权限")
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //用户名验证
    static func getValidata (loginname: String, completion: ((Boolean?, String?) -> Void)) {
        
        let urlString = url + "user/validate?loginname=" + loginname
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let flag = data["flag"] as? Boolean {
                    completion(flag, nil)
                } else {
                    completion(nil, "未知错误")
                    //completion(nil, "你没有权限")
                }
            } else {
                completion(nil, err)
            }
        })

    }
    
    //商品分类
    static func getCategories (completion: (([Category]?, String?) -> Void)) {
        let urlString = url + "commodity/category"
        
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data : NSDictionary = dict {
                var categories: [Category] = []
                for cat in data["nodeList"] as! [NSDictionary] {
                    let c = Category(number: cat["number"] as! String, categoryname: cat["categoryname"] as! String, categorylevel: cat["categorylevel"] as? Int, parentnum: cat["parentnum"] as! String)
                    categories.append(c)
                }
                completion(categories, nil)
            } else {
                completion(nil, err)
            }
        })
    }
   
    //分类商品
    static func getCategoryCommodity (id: String, completion: (([Commodity]?, String?) -> Void)) {
        
        let urlString = url + "commodity/category/" + id
        
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data : NSDictionary = dict {
                if let page = data["gridPage"] as? NSDictionary {
                    if let row = page["rows"] as? NSArray {
                        var commodity: [Commodity] = []
                        for r in row {
                            var commodityNumber = r["commoditynumber"] as? String
                            var name = r["name"] as? String
                            var commoditycategoryl1 = r["commoditycategoryl1"] as? String
                            var attribute = r["attribute"] as? Int
                            var picture = r["picture"] as? String
                            var thestate = r["thestate"] as? Int
                            var categoryName = r["categoryName"] as? String
                            var saleprice = r["saleprice"] as? Float
                            var memberprice = r["memberprice"] as? Float
                            var packagenumber = r["packagenumber"] as? String
                            var packageName = r["packageName"] as? String
                            var volume = r["volume"] as? String
                            var isScore = r["isScore"] as? Int
                            var isGift = r["isGift"] as? Int
            
                            let c = Commodity(commodityNumber: commodityNumber, name: name, commoditycategoryl1: commoditycategoryl1, attribute: attribute, picture: picture, thestate: thestate, categoryName: categoryName, saleprice: saleprice, memberprice: memberprice, packageNumber: packagenumber, packageName: packageName, volume: volume, isScore: isScore, isGift: isGift)
                            commodity.append(c)
                        }
                        completion(commodity, nil)
                    }
                } else {
                    completion(nil, "获取分类商品失败")
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //用户详细信息
    static func getUser (completion: ((User?, String?) -> Void)) {
        
        let urlString = url + "user"
        
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data:NSDictionary = dict {
                if let user = data["userInfo"] as? NSDictionary {
                    let u = User(membershipCardNumber: user["membershipCardnumber"] as? String, membershipNumber: user["membershipnumber"] as? String, membershipLevel: user["membershiplevel"] as? Int, bindPhone: user["bindphone"] as? String, openerstaffNumber: user["openerstaffnumber"] as? Int, openTime: user["opentime"] as? Int, expiredTime: user["expiredtime"] as? Int, integral: user["integral"] as? Int, balance: user["balance"] as? Float, password: user["password"] as? String, newPassword: user["newpassword"] as? String, openStore: user["openstore"] as? String, state: user["state"] as? String, phone: user["phone"] as? String, name: user["name"] as? String, levelId: user["levelid"] as? Int, levelName: user["levelname"] as? String)
                    completion(u, nil)
                } else {
                    completion(nil, "查询用户详细信息失败")
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //商品基本信息
    static func getCommodity (id: String, completion: ((Commodity?, [Barcode]?, String?) -> Void)) {
        let urlString = url + "commodity/" + id

        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data : NSDictionary = dict {
                if let commodityInfo = data["commodity"] as? NSDictionary {

                    var commodityNumber = commodityInfo["commodityNumber"] as? String
                    var name = commodityInfo["name"] as? String
                    var specification = commodityInfo["specification"] as? String
                    var origin = commodityInfo["origin"] as? String
                    var unit = commodityInfo["unit"] as? Int
                    var productiondate = commodityInfo["productiondate"] as? Int
                    var expirationdate = commodityInfo["expirationdate"] as? Int
                    var commoditycategoryl1 = commodityInfo["commoditycategoryl1"] as? String
                    var singlecredits = commodityInfo["singlecredits"] as? Int
                    var provider = commodityInfo["provider"] as? Int
                    var profit = commodityInfo["profit"] as? Int
                    var attribute = commodityInfo["attribute"] as? Int
                    var taxrate = commodityInfo["taxrate"] as? Int
                    var temperature = commodityInfo["temperature"] as? String
                    var detail = commodityInfo["detail"] as? String
                    var overview = commodityInfo["overview"] as? String
                    var savecondition = commodityInfo["savecondition"] as? String
                    var msgorigin = commodityInfo["msgorigin"] as? String
                    var picture = commodityInfo["picture"] as? String
                    var thestate = commodityInfo["thestate"] as? Int
                    var categoryName = commodityInfo["categoryName"] as? String
                    var saleprice = commodityInfo["salePrice"] as? Float
                    var packageNumber = commodityInfo["packagenumber"] as? String
                    var packageName = commodityInfo["packageName"] as? String

                    let info: Commodity = Commodity(commodityNumber: commodityNumber, name: name, specification: specification, origin: origin, unit: unit, productiondate: productiondate, expirationdate: expirationdate, commoditycategoryl1: commoditycategoryl1, singlecredits: singlecredits, provider: provider, profit: profit, attribute: attribute, taxrate: taxrate, temperature: temperature, detail: detail, overview: overview, savecondition: savecondition, msgorigin: msgorigin, picture: picture, thestate: thestate, categoryName: categoryName, saleprice: saleprice, packageNumber: packageNumber, packageName: packageName)
                    if let barcodeList = data["commodityBarcodeList"] as? NSArray {
                        var barcodes: [Barcode] = []
                        for barcodeDict in barcodeList {
                            let barcode = Barcode(number: barcodeDict["number"] as? Int, commodityNumber: barcodeDict["commoditynumber"] as? Int, packageNumber: barcodeDict["packagenumber"] as? Int, barcode: barcodeDict["barcode"] as? String, unitsperpackage: barcodeDict["unitsperpackage"] as? Int, saleprice: barcodeDict["saleprice"] as? Float, memberprice: barcodeDict["memberprice"] as? Float, wholeprice: barcodeDict["wholeprice"] as? Float, foraddress: barcodeDict["foraddress"] as? String, thetype: barcodeDict["thetype"] as? String, price: barcodeDict["price"] as? Float, packageName: barcodeDict["packagename"] as? String)
                            barcodes.append(barcode)
                        }
                        completion(info, barcodes, nil)
                    } else {
                        completion(info, nil, nil)
                    }
                } else if let barcodeList = data["commodityBarcodeList"] as? NSArray {
                        var barcodes: [Barcode] = []
                        for barcodeDict in barcodeList {
                            let barcode = Barcode(number: barcodeDict["number"] as? Int, commodityNumber: barcodeDict["commoditynumber"] as? Int, packageNumber: barcodeDict["packagenumber"] as? Int, barcode: barcodeDict["barcode"] as? String, unitsperpackage: barcodeDict["unitsperpackage"] as? Int, saleprice: barcodeDict["saleprice"] as? Float, memberprice: barcodeDict["memberprice"] as? Float, wholeprice: barcodeDict["wholeprice"] as? Float, foraddress: barcodeDict["foraddress"] as? String, thetype: barcodeDict["thetype"] as? String, price: barcodeDict["price"] as? Float, packageName: barcodeDict["packagename"] as? String)
                            barcodes.append(barcode)
                        }
                        completion(nil, barcodes, nil)
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, nil, error)
                    } else {
                    completion(nil, nil, "未知错误")
                    }
                }
            } else {
                completion(nil, nil, err)
            }
        })
    }
    
    //商品详情
    static func getCommodityDetail (id: String, completion: ((CommodityDetail?, String?) -> Void)) {
        let urlString = url + "commodity/detail/" + id
        
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data : NSDictionary = dict {
                if let detail: NSDictionary = data["commodityDetail"] as? NSDictionary {
                    
                    var commoditynumber = detail["commoditynumber"] as? Int
                    var firstimagepath = detail["firstimagepath"] as? String
                    var secondimagepath = detail["secondimagepath"] as? String
                    var thirdimagepath = detail["thirdimagepath"] as? String
                    var fourthimagepath = detail["fourthimagepath"] as? String
                    var fifthimagepath = detail["fifthimagepath"] as? String
                    var commoditydetail = detail["commoditydetail"] as? String
                 
                    let commodityDetail = CommodityDetail(commoditynumber: commoditynumber, firstimagepath: firstimagepath, secondimagepath: secondimagepath, thirdimagepath: thirdimagepath, fourthimagepath: fourthimagepath, fifthimagepath: fifthimagepath, commoditydetail: commoditydetail)
                    completion(commodityDetail, nil)
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误!")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }

    //主推商品
    static func getPush (ctype: String, completion: (([Commodity]?, String?) -> Void)) {
        let urlString = url + "commodity/push?ctype=" + ctype
        HttpClient.get(urlString, completion: { (dict, err) -> Void in
            if let push: NSDictionary = dict {
                if let gir = push["gridPage"] as? NSDictionary {
                    if let rows = gir["rows"] as? NSArray {
                        var commodity: [Commodity] = []
                        for ro in rows {
                            let p = Commodity(commodityNumber: ro["commoditynumber"] as? String, name: ro["name"] as? String, commoditycategoryl1: ro["commoditycategoryl1"] as? String, attribute: ro["attribute"] as? Int, picture: ro["picture"] as? String, thestate: ro["thestate"] as? Int, categoryName: ro["categoryName"] as? String, saleprice: ro["saleprice"] as? Float, memberprice: ro["memberprice"] as? Float, packageNumber: ro["packagenumber"] as? String, packageName: ro["packageName"] as? String, volume: ro["volume"] as? String, origin: ro["origin"] as? String, isGift: ro["isgift"] as? Int, isScore: ro["isscore"] as? Int, ctype: ro["ctype"] as? Int)
                            commodity.append(p)
                        }
                        completion(commodity, nil)
                    } else {
                        completion(nil, "获取失败")
                    }
                } else {
                    completion(nil, "未知错误")
                }
            } else {
                completion(nil, err)
            }
        })
    }
 
    //商品主推信息
    static func getMainPushCommodityInfo (ID: String, completion: (([MainPushCommodityInfo]?, String?) -> Void)) {
    
        let urlString = url + "commodity/" + ID + "/push"
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let sign = data["sign"] as? NSArray {
                    var mainPushCommodityInfo: [MainPushCommodityInfo] = []
                    for si in sign {
                        let s = MainPushCommodityInfo(sign: si as? Int)
                        mainPushCommodityInfo.append(s)
                    }
                    completion(mainPushCommodityInfo, nil)
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }

    //商品搜索
    static func getCommoditySearch (queryStr: String, completion: (([CommoditySearch]?, String?) -> Void)) {
    
        let urlString = url + "commodity/search?queryStr=" + queryStr
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let gri: NSDictionary = data["gridPage"] as? NSDictionary {
                    if let rows = gri["rows"] as? NSArray {
                        var commoditySearch: [CommoditySearch] = []
                        for ro in rows {
                            let s = CommoditySearch(commodityNumber: ro["commoditynumber"] as? String, name: ro["name"] as? String, commoditycategoryl1: ro["commoditycategoryl1"] as? String, attribute: ro["attribute"] as? Int, picture: ro["picture"] as? String, thestate: ro["thestate"] as? Int, categoryName: ro["categoryName"] as? String, salePrice: ro["salePrice"] as? Float, packageNumber: ro["packagenumber"] as? Int, packageName: ro["packageName"] as? String, volume: ro["volume"] as? String, isGift: ro["isgift"] as? Int, isScore: ro["isscore"] as? Int)
                            commoditySearch.append(s)
                        }
                        completion(commoditySearch, nil)
                    } else {
                        completion(nil, "没有搜索到商品")
                    }
                } else {
                    completion(nil, "未知错位")
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //订单商品信息
    static func getOrderCommodity (ID: String, completion: (([Commodity]?, String?) -> Void)) {
    
        let urlString = url + "order/" + ID + "/commodity"
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let gri = data["gridPage"] as? NSDictionary {
                    if let rows = gri["rows"] as? NSArray {
                        var commodity: [Commodity] = []
                        for ro in rows {
                            let r = Commodity(number: ro["number"] as? Int, ordernumber: ro["ordernumber"] as? Int, commodityNumber: ro["commoditynumber"] as? String, quantity: ro["quantity"] as? Int, realreceivequantity: ro["realreceivequantity"] as? Int, comment: ro["comment"] as? String, name: ro["name"] as? String, volume: ro["volume"] as? String, saleprice: ro["salePrice"] as? Float, origin: ro["origin"] as? String, packageName: ro["packageName"] as? String, isScore: ro["isScore"] as? Int, isGift: ro["isGift"] as? Int, picture: ro["picture"] as? String, price: ro["price"] as? Float, amount: ro["amount"] as? String, isGived: ro["isGived"] as? String)
                            
                            commodity.append(r)
                        }
                        completion(commodity, nil)
                    } else {
                        completion(nil, "查询订单商品失败")
                    }
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //订单记录
    static func getOrder (page: Int, rows: Int, sortby: Int, order: Int, completion: (([Order]?, String?) -> Void)) {
        
        let urlString = url + "order?&page=" + String(page) + "&rows=" + String(rows) + "&sortby=" + String(sortby) + "&order=" + String(order)
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let gri = data["gridPage"] as? NSDictionary {
                    if let rows = gri["rows"] as? NSArray {
                        var order: [Order] = []
                        for ro in rows {
                            let o = Order(orderNumber: ro["ordernumber"] as? Int, from: ro["from"] as? Int, status: ro["status"] as? Int, unsubscribe: ro["unsubscribe"] as? Int, customerName: ro["customername"] as? String, customerType: ro["customertype"] as? Int, mebershipNumber: ro["mebershipnumber"] as? Int, consignee: ro["consignee"] as? String, incomingphone: ro["incomingphone"] as? String, contactphone: ro["contactphone"] as? String, pickupmethod: ro["pickupmethod"] as? Int, deliveryAddress: ro["deliveryaddress"] as? String, orderamount: ro["orderamount"] as? Int, paymentmethod: ro["paymentmethod"] as? Int, isdomembershipcard: ro["isdomembershipcard"] as? Int, isrechargemembershipcard: ro["isrechargemembershipcard"] as? Int, dispatchstaffnumber: ro["dispatchstaffnumber"] as? Int, dispatchbegintime: ro["dispatchbegintime"] as? Int, dispatchendtime: ro["dispatchendtime"] as? Int, createtime: ro["createtime"] as? Int, storeNumber: ro["storeNumber"] as? Int, storename: ro["storename"] as? String)
                            order.append(o)
                        }
                        completion(order, nil)
                    } else {
                        completion(nil, "查看派送记录失败")
                    }
                } else {
                    if let error = data["error"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "查看失败")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //订单信息
    static func getOrderInfo (ID: String, completion: ((OrderInfo?, String?) -> Void)) {
    
        let url = "http://121.40.78.69:8088/app" + ID
        HttpClient.get(url, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data: NSDictionary = dict{
                if let order: NSDictionary = data["order"] as? NSDictionary {
                    let or = OrderInfo(orderNumber: order["ordernumber"] as? Int, from: order["from"] as? Int, status: order["status"] as? Int, unsubscribe: order["unsubscribe"] as? String, customerType: order["customertype"] as? Int, customerName: order["customername"] as? String, mebershipNumber: order["mebershipnumber"] as? Int, consignee: order["consignee"] as? String, incomingphone: order["incomingphone"] as? String, contactphone: order["contactphone"] as? String, pickupmethod: order["pickupmethod"] as? Int, deliveryaddress: order["deliveryaddress"] as? String, orderamount: order["orderamount"] as? Int, paymentmethod: order["paymentmethod"] as? Int, isdomembershipcard: order["isdomembershipcard"] as? Int, isrechargemembershipcard: order["isrechargemembershipcard"] as? Int, dispatchstaffnumber: order["dispatchstaffnumber"] as? Int, dispatchbegintime: order["dispatchbegintime"] as? Int, dispatcharrivetime: order["dispatcharrivetime"] as? Int, dispatchendtime: order["dispatchendtime"] as? Int, operatornumber: order["operatornumber"] as? Int, createtime: order["createtime"] as? Int, storeNumber: order["storenumber"] as? Int, storeName: order["storename"] as? String, ismodify: order["ismodify"] as? String, type: order["type"] as? Int, subscribebegintime: order["subscribebegintime"] as? String, subscribeendtime: order["subscribeendtime"] as? String, membershipcardnumber: order["membershipcardnumber"] as? String, commoditydetailjson: order["commoditydetailjson"] as? String)
                    completion(or, nil)
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //订单支付详情
    static func getPayment (ID: Int, completion: (([Payment]?, String?) -> Void)) {
        
        let urlString = url + "order/" + String(ID) + "/payment"
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data: NSDictionary = dict {
                if let gri = data["gridPage"] as? NSDictionary{
                    if let rows = gri["rows"] as? NSArray {
                        var payment: [Payment] = []
                        for cat in rows {
                            let c = Payment(id: cat["id"] as? Int, ordernumber: cat["ordernumber"] as? Int, paymentid: cat["paymentid"] as? Int, membershipcardnumber: cat["membershipcardnumber"] as? String, paymentamount: cat["paymentamount"] as? Float, ismembershipcard: cat["ismembershipcard"] as? Int)
                            payment.append(c)
                        }
                        completion(payment, nil)
                    } else {
                        completion(nil, "查询订单详情失败")
                    }
                } else {
                    if let error = data["error"] as? String{
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //订单付款方式
    static func getPaymentType (completion: (([PaymentType]?, String?) -> Void)) {
        
        let urlString = url + "order/paymentType"
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data : NSDictionary = dict {
                if let result = data["resultList"] as? NSArray {
                    var paymentType: [PaymentType] = []
                    for cat in result{
                        let c = PaymentType(id: cat["id"] as? Int, name: cat["name"] as? String)
                        paymentType.append(c)
                    }
                    completion(paymentType, nil)
                } else {
                    if let error = data["error"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "查询订单付款方式失败")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }

    //商品库存查询
    static func getRepository (ID: Int, repositoryID: Int, completion: ((Repository?, String?) -> Void)) {
        
        let urlString = url + "commodity/" + String(ID) + "/" + String(repositoryID)
    
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data : NSDictionary = dict {
                if let repoditory = data["repositoryCommodity"] as? NSDictionary {
                    let re = Repository(number: repoditory["number"] as? Int, repositorynumber: repoditory["repositorynumber"] as? Int, commoditynumber: repoditory["commoditynumber"] as? Int, realstock: repoditory["realstock"] as? Int, virtualstock: repoditory["virtualstock"] as? Int)
                    completion(re, nil)
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "查询商品仓库失败")
                    }
                }
            } else {
                completion(nil, err)
            }

        })
    }
    
    //订单状态
    static func getOrderStatus (ID: String, completion: ((OrderStatus?, String?) -> Void)) {
    
        let urlString = url + "order/" + ID + "/status"
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let status = data["status"] as? Int {
                    let s = OrderStatus(status: status)
                    completion(s, nil)
                } else {
                    if let error = data["error"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //订单取消
    static func getOrderCancel (ID: String, completion: ((OrderStatus?, String?) -> Void)) {
        
        let urlString = url + "order/" + ID + "/cancel"
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let status = data["status"] as? Int {
                    let s = OrderStatus(status: status)
                    completion(s, nil)
                } else {
                    if let error = data["error"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //库存修改
    static func getReviseRepository (ID: Int, repositoryID: Int, isChangeRealreceive: String, completion: ((String?, String?) -> Void)) {
        let p = String(ID) + "/" + String(repositoryID)
        let urlString = url + "order/" + p + "?isChangeRealreceive=" + isChangeRealreceive
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let msg = data["msg"] as? String {
                    completion(msg, nil)
                } else {
                    if let error = data["error"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //订单拒收信息
    static func getOrderRejection (ID: String, completion: ((OrderRejection?, String?) -> Void)) {
    
        let urlString = url +
            "order/" + ID + "/rejection"
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let ord = data["orderrejection"] as? NSDictionary {
                    let o = OrderRejection(id: ord["id"] as? Int, ordernumber: ord["ordernumber"] as? Int, rejectionreasonid: ord["rejectionreasonid"] as? Int, rejectionreasontype: ord["rejectionreasontype"] as? String, rejectiondescription: ord["rejectiondescription"] as? String, operatorNumber: ord["operator"] as? Int, operatetime: ord["operatetime"] as? Int)
                    completion(o, nil)
                } else {
                    if let error = data["error"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //系统版本信息
    static func getSystem (versionnumber: String, completion: ((System?, String?) -> Void)) {
    
        let urlString = url + "systrm" + "?versionnumber=" + versionnumber
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data: NSDictionary = dict {
                if let version = data["version"] as? NSDictionary {
                    let v = System(id: version["id"] as? Int, versionnumber: version["versionnumber"] as? String, path: version["path"] as? String, sign: version["sign"] as? Int, createtime: version["createtime"] as? Int)
                    completion(v, nil)
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, error)
                    } else if let error = data["error"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //系统版本升级
    static func getSystemUpdate (version: String, completion: ((System?, String?) -> Void)) {
        
        let urlString = url + "systrm/update" + "?version=" + version
        HttpClient.get(urlString, completion: { (dict: NSDictionary?, err: String?) -> Void in
            if let data: NSDictionary = dict {
                if let version = data["version"] as? NSDictionary {
                    let v = System(id: version["id"] as? Int, versionnumber: version["versionnumber"] as? String, path: version["path"] as? String, sign: version["sign"] as? Int, createtime: version["createtime"] as? Int)
                    completion(v, nil)
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, error)
                    } else if let error = data["error"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //用户注册
    static func postRegister (name: String, gender: Int, idcardnumber: String, phone: String, membershiplevel: Int, address: String, birthday: String, password: String, completion: ((Register?, String?) -> Void)) {
        
        let urlString = url + "user/register"
        let name = "name = " + name
        let gender = ", gender = " + String(gender)
        let idcardnumber = ", idcardnumber = " + idcardnumber
        let phone = ", phone = " + phone
        let membershiplevel = ", membershiplevel = " + String(membershiplevel)
        let address = ", address = " + address
        let birthday = ", birthday = " + birthday
        let password = ", password = " + password
        let parameter = name + gender + idcardnumber + phone + membershiplevel + address + birthday + password
        HttpClient.post(urlString, params: parameter, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                if let card = data["card"] as? NSDictionary {
                    let register = Register(membershipnumber: card["membershipnumber"] as? Int, membershipcardnumber: card["membershipcardnumber"] as? Int)
                    completion(register, nil)
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //用户登录认证
    static func postAuthorize (loginname: String, password: String, completion: ((Authorize?, String?) -> Void)) {
        
        let urlString = url + "user/authorize"
        let parameter = "loginname = " + loginname + ", password = " + password
        HttpClient.post(urlString, params: parameter, completion: { (dict: NSDictionary?, err: String?) -> Void in
        
            if let data: NSDictionary = dict {
                if let userinfo = data["userinfo"] as? NSDictionary {
                    let a = Authorize(membershipcardnumber: userinfo["membershipcardnumber"] as? String, membershipnumber: userinfo["membershipnumber"] as? String, membershiplevel: userinfo["membershiplevel"] as? String, bindphone: userinfo["bindphone"] as? String, openerstaffnumber: userinfo["openerstaffnumber"] as? String, opentime: userinfo["opentime"] as? String, expiredtime: userinfo["expiredtime"] as? String, integral: userinfo["integral"] as? Int, balance: userinfo["balance"] as? Int, password: userinfo["password"] as? String, openstore: userinfo["openstore"] as? String, state: userinfo["state"] as? String, phone: userinfo["phone"] as? String, name: userinfo["name"] as? String, levelid: userinfo["levelid"] as? Int, levelname: userinfo["levelname"] as? String)
                    completion(a, nil)
                } else {
                    if let error = data["msg"] as? String {
                        completion(nil, error)
                    } else {
                        completion(nil, "未知错误")
                    }
                }
            } else {
                completion(nil, err)
            }
        })
    }
    
    //修改密码
    static func postNewPassword (password: String, newPassword: String, completion: ((String?, String?) -> Void)){
        let urlString = url + "user/password"
        let parameter = "password=" + password + ", newpassword=" + newPassword
        
        HttpClient.post(urlString, params: parameter, completion: { (dict: NSDictionary?, err: String?) -> Void in
            
            if let data: NSDictionary = dict {
                let msg = data["msg"] as? String
                completion(msg, nil)
            } else {
                completion(nil, err)
            }
        })
    }
}
