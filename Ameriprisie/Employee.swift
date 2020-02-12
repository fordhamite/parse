//
//  Employee.swift
//  Ameriprisie
//
//  Created by MAC Consultant on 2/11/20.
//  Copyright © 2020 MAC Consultant. All rights reserved.
//

import Foundation

struct ResponseData: Decodable {
  var employees: [Employee]
}

struct Employee: Codable {
  let userId: String
  let jobTitle: String
  let firstName:String
  let lastName: String
  let employeeCode: String
  let region: String
  let phoneNumber: String
  let emailAddress: String
}
