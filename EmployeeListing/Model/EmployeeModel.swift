//
//  EmployeeModel.swift
//  EmployeeListing
//
//  Created by Kavya on 24/08/22.
//

import Foundation

struct EmployeeModel: Codable {
    let name, phonenumber, email: String

    enum CodingKeys: String, CodingKey {
        case name, phonenumber, email
    }
    
}

typealias employees = [EmployeeModel]
