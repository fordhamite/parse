//
//  EmployeeTableViewCell.swift
//  Ameriprisie
//
//  Created by MAC Consultant on 2/11/20.
//  Copyright © 2020 MAC Consultant. All rights reserved.
//

import UIKit


final class EmployeeTableViewCell: UITableViewCell {
  @IBOutlet weak var employeeNameLabel: UILabel!
  @IBOutlet weak var employeeIDLabel: UILabel!
  @IBOutlet weak var employeeTitleLabel: UILabel!
  @IBOutlet weak var employeeEmailLabel: UILabel!
  @IBOutlet weak var employeeMobileLabel: UILabel!

  private let viewModel = EmployeesListViewModel()
  
  func configure (employeeViewModel: EmployeeViewModel){
    employeeNameLabel.text = employeeViewModel.getName()
    employeeIDLabel.text = employeeViewModel.getId()
    employeeTitleLabel.text = employeeViewModel.getTitle()
    employeeEmailLabel.text = employeeViewModel.getEmail()
    employeeMobileLabel.text = employeeViewModel.getPhoneNumber()
  }
    
}
