//
//  ToDoDataProvider.swift
//  WithoutIBDemo
//
//  Created by dasdom on 21.09.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

protocol ToDoDataProviderProtocol: UITableViewDataSource, UITableViewDelegate {
  func registerCellsForTableView(tableView: UITableView)
}