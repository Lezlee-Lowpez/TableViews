//
//  ExpensesViewController.swift
//  DMTableViewIntro
//
//  Created by David Ruvinskiy on 4/4/23.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = expenses[indexPath.row]
        return cell
        
    }
    
    
    
    
    @IBOutlet weak var tableOfExpenses: UITableView!
    
    let expenses = ["Rent", "Groceries", "Utilities", "Transportation", "Entertainment", "Clothing", "Eating Out", "Travel", "Insurance", "Phone Bill"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
    }
    
    func configureTableView() {
        tableOfExpenses.delegate = self
        tableOfExpenses.dataSource = self
        
    }
}
