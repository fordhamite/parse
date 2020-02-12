//
//  EmployeesListViewModel.swift
//  Ameriprisie
//
//  Created by MAC Consultant on 2/11/20.
//  Copyright © 2020 MAC Consultant. All rights reserved.
//

import UIKit

final class EmployeesListViewModel {
  var employees: [Employee] = []
  
  init() {
    employees = loadJson() 
    print("ASDFASDFASF")
  }
  
      func loadJson() -> [Employee]{
          guard let path = Bundle.main.path(forResource: "Employees", ofType: "json") else { return [] }
          let url = URL(fileURLWithPath: path)

          do{
              let data = try Data(contentsOf: url)
              let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)

              guard let array = json as? [Employee] else {return []}
              print("hey it's working")
              return array;

          }catch{
              print(error)
              return []
          }
      }
}

