//
//  Repository.swift
//  Northwinder
//

import Foundation

class Repository {
    func fetchAllCategories() throws -> [Category] {
        var categories = [Category]()
        categories.append(Category(id: 1, name: "Beverages", desc: "Soft drinks, coffees, and beers"))
        categories.append(Category(id: 2, name: "Confections", desc: "Desserts and candies"))
        categories.append(Category(id: 3, name: "Seafood", desc: "Seaweed and fish"))
        return categories
    }
}