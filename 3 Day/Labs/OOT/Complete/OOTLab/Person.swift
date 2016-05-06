//
//  Person.swift
//  OOTLab
//

import Foundation

class Person {
    let firstName: String
    let lastName: String
    
    init(firstName fn: String, lastName ln: String) {
        firstName = fn
        lastName = ln
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}