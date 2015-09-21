//
//  ToDoDataProvider.swift
//  WithoutIBDemo
//
//  Created by dasdom on 21.09.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class ToDoDataProvider: NSObject, ToDoDataProviderProtocol {

  let cellId = "ToDoCell"
  
  let data = [["title": "Talk", "location": "Köln", "date": "21.09.2015"], ["title": "Shopping", "date": "20.09.2015"]]
  
  func registerCellsForTableView(tableView: UITableView) {
    tableView.registerClass(ToDoTableViewCell.self, forCellReuseIdentifier: cellId)
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath) as! ToDoTableViewCell
    
    let dataItem = data[indexPath.row]
    cell.titleLabel.text = dataItem["title"]
    cell.dateLabel.text = dataItem["date"]
    cell.locationLabel.text = dataItem["location"] 
    
    return cell
  }
}
