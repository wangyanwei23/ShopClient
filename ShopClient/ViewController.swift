//
//  ViewController.swift
//  ShopClient
//
//  Created by 王彦伟 on 15/8/7.
//  Copyright (c) 2015年 王彦伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //var httpClient:HttpClient = HttpClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 商品详情
//        ApiClient.getCommodityDetail("100100", completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info.commoditynumber)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })

        // 分类商品
//        ApiClient.getCategoryCommodity("100", completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info.count)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        //用户信息
//        ApiClient.getUser({ (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        // 商品分类
        ApiClient.getCategories({ (detail, err) -> Void in
            if let info = detail {
                print(info[0].categoryname)
            } else {
                if let error = err {
                    print(error)
                } else {
                    print("未知错误!")
                }
            }
        })

        //用户推出
//        ApiClient.getLoginOut({ (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        //用户名验证
//        ApiClient.getValidata("13461910827", completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })

        //商品基本信息
        ApiClient.getCommodity("100134", completion: { (detail, barcodes, err) -> Void in
            if let info = detail {
                print(info.name)
            } else {
                if let error = err {
                    print(error)
                } else {
                    print("未知错误!")
                }
            }
        })
//
        //主推 商品
//        ApiClient.getPush("2", completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info.count)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        //主推商品信息
//        ApiClient.getMainPushCommodityInfo("100624", completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        //订单记录
//        ApiClient.getOrder(1, rows: 10, sortby: 1, order: 1, completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
//        ApiClient.getOrderInfo("5201508101123510595", completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })

        //订单付款方式
//        ApiClient.getPaymentType({ (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        //订单支付详情
//        ApiClient.getPayment(123456, completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        //订单状态
//        ApiClient.getOrderStatus("123",completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        //订单取消
//        ApiClient.getOrderCancel("123",completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })

        
        //订单拒收信息
//        ApiClient.getOrderRejection("123",completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        //订单商品信息
//        ApiClient.getOrderCommodity("123456",completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info.count)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
        
        //商品搜索
//        ApiClient.getCommoditySearch("100164", completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info.count)
//                println(info[0].name)
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })

        //商品库存查询
//        ApiClient.getRepository(100164, repositoryID: 12, completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//                
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })

        //库存修改
//        ApiClient.getReviseRepository(100164, repositoryID: 123, isChangeRealreceive: String(stringInterpolationSegment: true), completion: { (detail, err) -> Void in
//            
//            if let info = detail {
//                println(info)
//                
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })

        //系统版本信息
//        ApiClient.getSystem("1.0.3", completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//                
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })

        //系统版本升级
//        ApiClient.getSystemUpdate("1.0.3", completion: { (detail, err) -> Void in
//            if let info = detail {
//                println(info)
//                
//            } else {
//                if let error = err {
//                    println(error)
//                } else {
//                    println("未知错误!")
//                }
//            }
//        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

