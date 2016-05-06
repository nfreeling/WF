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
                if let localCategories = self.loadCategories() {
                    fs(localCategories)
                } else {
                    ff()
                }
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
            self.saveCategories(categories)
            fs(categories)
        })
        task.resume()
    }
    
    private func saveCategories(categories: [Category]) -> Bool {
        let filemgr = NSFileManager.defaultManager()
        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let path = "\(dirPaths[0])/Northwinder.data"
        
        let data = NSKeyedArchiver.archivedDataWithRootObject(categories)
        
        if filemgr.fileExistsAtPath(path) {
            do {
                try filemgr.removeItemAtPath(path)
            } catch {
                return false
            }
        }
        return filemgr.createFileAtPath(path, contents:data, attributes:nil)
    }
    
    private func loadCategories() -> [Category]? {
        let filemgr = NSFileManager.defaultManager()
        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let path = "\(dirPaths[0])/Northwinder.data"
        
        guard filemgr.fileExistsAtPath(path) else { return nil }
        
        if let data = filemgr.contentsAtPath(path) {
            if let categories = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [Category] {
                return categories
            }
        }
        return nil
    }
}