//
//  Category.swift
//  Northwinder
//

import Foundation

class Product {
    let id: Int
    var name: String
    var unitPrice: Double
    var unitsInStock: Int
    
    init(id:Int, name:String = "", unitPrice:Double = 0.0, unitsInStock:Int = 0) {
        self.id = id
        self.name = name
        self.unitPrice = unitPrice
        self.unitsInStock = unitsInStock
    }
}