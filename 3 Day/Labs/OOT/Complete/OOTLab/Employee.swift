//
//  Employee.swift
//  OOTLab
//

import Foundation

class Employee: Person {
    let salary: Double?
    
    init(firstName fn: String, lastName ln: String, salary s: Double? = nil) {
        salary = s
        super.init(firstName: fn, lastName: ln)
    }
    
    override var fullName: String {
        return "\(lastName), \(firstName)"
    }
}