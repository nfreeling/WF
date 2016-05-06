//
//  StaticEmployeeDataSource.swift
//  OOTLab
//

import Foundation

class StaticEmployeeDataSource: EmployeeDataSource {
    func getAllEmployees() -> [Employee] {
        var retVal = [Employee]()
        retVal.append(Employee(firstName: "Bill", lastName: "Gates"))
        retVal.append(Employee(firstName: "Steve", lastName: "Jobs", salary: 100000))
        return retVal
    }
}