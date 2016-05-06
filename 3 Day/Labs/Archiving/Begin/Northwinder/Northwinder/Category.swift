//
//  Category.swift
//  Northwinder
//

import Foundation

class Category {
    let id: Int
    var name: String
    var desc: String
    
    init(id:Int, name:String = "", desc:String = "") {
        self.id = id
        self.name = name
        self.desc = desc
    }
}