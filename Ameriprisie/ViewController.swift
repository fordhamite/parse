//
//  ViewController.swift
//  Ameriprisie
//
//  Created by MAC Consultant on 2/11/20.
//  Copyright © 2020 MAC Consultant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var employeesTableView: UITableView!
  let employeeList = EmployeesListViewModel()
  override func viewDidLoad() {
    super.viewDidLoad()
    self.employeesTableView.dataSource = self
    self.employeesTableView.register(UINib(nibName: "EmployeeTableViewCell", bundle: nil), forCellReuseIdentifier: "EmployeeTableViewCell")
    employeesTableView.reloadData()
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeTableViewCell") as! EmployeeTableViewCell
//    let employee = EmployeesListViewModel()
//    let employeeList = EmployeeViewModel(employee: employee.employees[indexPath.row])
//    cell.configure(employeeViewModel: employeeList)
    return cell
  }
  
}
