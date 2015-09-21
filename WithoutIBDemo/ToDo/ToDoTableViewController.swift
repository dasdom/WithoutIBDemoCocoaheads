//
//  ToDoTableViewController.swift
//  WithoutIBDemo
//
//  Created by dasdom on 21.09.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
  
  var dataProvider: ToDoDataProviderProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = dataProvider
    tableView.delegate = dataProvider
    
    dataProvider?.registerCellsForTableView(tableView)
    
    tableView.estimatedRowHeight = 80
    tableView.rowHeight = UITableViewAutomaticDimension
  }
}
