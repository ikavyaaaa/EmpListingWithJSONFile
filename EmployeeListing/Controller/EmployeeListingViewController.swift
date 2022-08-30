//
//  EmployeeListingViewController.swift
//  EmployeeListing
//
//  Created by Kavya on 24/08/22.
//

import UIKit

class EmployeeListingViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var employeeArray : employees = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataFetching()
    }
    //Fetching data from JSON
    func dataFetching() {
        if let url = Bundle.main.url(forResource: "EmpData", withExtension: "json") {
            do {
                let jsonData = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let employeeList = try decoder.decode(employees.self, from: jsonData)
                self.employeeArray = employeeList
                print(employeeArray)
            } catch {
                print(error)
            }
        }
    }
    
    //tableview delegate and data cource methods
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "EmployeeListingTableViewCell") as! EmployeeListingTableViewCell
        cell.lblEmpName.text = employeeArray[indexPath.row].name
        cell.lblEmpPhoneNumber.text = employeeArray[indexPath.row].phonenumber
        cell.lblEmpEmailId.text = employeeArray[indexPath.row].email
        return cell
    }
}

