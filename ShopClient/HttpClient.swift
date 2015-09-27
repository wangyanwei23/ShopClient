//
//  HttpClient.swift
//  ShopClient
//
//  Created by 王彦伟 on 15/8/7.
//  Copyright (c) 2015年 王彦伟. All rights reserved.
//

import UIKit

class HttpClient {
    
    //var delegate:HttpProtocol?
    
    //加载数据
    static func get(url: String, completion: ((NSDictionary?, String?) -> Void)) {
        
        let request: NSURLRequest = NSURLRequest(URL: NSURL(string: url)!)
        let session = NSURLSession.sharedSession()
        let dataTask = session.dataTaskWithRequest(request, completionHandler: {(data, response, error) -> Void in
            if error == nil {
                let json: NSDictionary! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary
                //println(json)
                completion(json, nil)
            } else {
                completion(nil, error.localizedFailureReason)
            }
        })
        dataTask.resume()
    }

    //上传数据
    static func post(url: String, params: String, completion: ((NSDictionary?, String?) -> Void)) {
        let request = NSMutableURLRequest(URL: NSURL(string: url)!)
        request.HTTPMethod = "POST"
        let data = params.dataUsingEncoding(NSUTF8StringEncoding)
        let dataTask = NSURLSession.sharedSession().uploadTaskWithRequest(request, fromData: data, completionHandler: {(data, response, error) -> Void in
            //println("上传完毕")
            if error == nil {
                let json: NSDictionary! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary
                //println(json)
                completion(json, nil)
            } else {
                completion(nil, error.localizedFailureReason)
            }
        })
        dataTask.resume()
    }
}

