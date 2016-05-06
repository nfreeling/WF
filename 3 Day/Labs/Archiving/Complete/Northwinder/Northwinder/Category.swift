//
//  Category.swift
//  Northwinder
//

import Foundation

class Category: NSObject, NSCoding {
    let id: Int
    var name: String
    var desc: String
    
    init(id:Int, name:String = "", desc:String = "") {
        self.id = id
        self.name = name
        self.desc = desc
    }
    
    required init(coder aDecoder: NSCoder) {
        id = aDecoder.decodeIntegerForKey("id")
        name = aDecoder.decodeObjectForKey("name") as! String
        desc = aDecoder.decodeObjectForKey("desc") as! String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeInteger(id, forKey:"id")
        aCoder.encodeObject(name, forKey:"name")
        aCoder.encodeObject(desc, forKey:"desc")
    }
}