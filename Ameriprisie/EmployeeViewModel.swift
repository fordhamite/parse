//
//  EmployeeViewModel.swift
//  Ameriprisie
//
//  Created by MAC Consultant on 2/11/20.
//  Copyright © 2020 MAC Consultant. All rights reserved.
//

import Foundation

struct EmployeeViewModel {
  private let employee: Employee
  init(employee: Employee) {
    self.employee = employee
  }
  
  func getName() -> String {
    return employee.firstName + " " + employee.lastName
  }
  
  func getId() -> String {
    return employee.userId
  }
  
  func getTitle() -> String {
    return employee.jobTitle
  }
  
  func getEmail() -> String {
    return employee.emailAddress
  }
  
  func getPhoneNumber() -> String {
    return employee.phoneNumber
  }
  
  
}
