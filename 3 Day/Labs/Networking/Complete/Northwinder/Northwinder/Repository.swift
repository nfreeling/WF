//
//  Repository.swift
//  Northwinder
//

import Foundation

class Repository {
    func fetchAllCategories(success fs: [Category] -> Void, failure ff: () -> Void) {
        let url = "http://svc.treeloop.net/product"
        let request = NSMutableURLRequest(URL: NSURL(string: url)!)
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(request, completionHandler: {
            data, response, error -> Void in
            if error != nil || data == nil {
                ff()
                return
            }
            let json = JSON(data: data!)
            var categories = [Category]()
            for (_, subJson) in json {
                let c = Category(
                    id: subJson["CategoryID"].numberValue.integerValue,
                    name: subJson["CategoryName"].stringValue,
                    desc: subJson["Description"].stringValue
                )
                categories.append(c)
            }
            fs(categories)
            }
        )
        task.resume()
    }
}