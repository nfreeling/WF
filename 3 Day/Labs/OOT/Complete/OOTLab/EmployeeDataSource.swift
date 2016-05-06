//
//  EmployeeDataSource.swift
//  OOTLab
//

import Foundation

protocol EmployeeDataSource {
    func getAllEmployees() -> [Employee]
}