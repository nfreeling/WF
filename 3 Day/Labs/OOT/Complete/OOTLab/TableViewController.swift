//
//  TableViewController.swift
//  OOTLab
//

import UIKit

class TableViewController: UITableViewController {
    var ds: EmployeeDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ds = StaticEmployeeDataSource()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ds.getAllEmployees().count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        cell.textLabel?.text = ds.getAllEmployees()[indexPath.row].fullName

        return cell
    }
}
