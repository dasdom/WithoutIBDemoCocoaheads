//
//  ToDoTableViewCell.swift
//  WithoutIBDemo
//
//  Created by dasdom on 21.09.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

  let titleLabel: UILabel
  let dateLabel: UILabel
  let locationLabel: UILabel
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    
    titleLabel = UILabel()
    titleLabel.font = UIFont.systemFontOfSize(20)
    
    dateLabel = UILabel()
    dateLabel.font = UIFont.systemFontOfSize(13)
    
    locationLabel = UILabel()
    locationLabel.font = UIFont.systemFontOfSize(13)
    
    let titleLocationStackView = UIStackView(arrangedSubviews: [titleLabel, locationLabel])
    titleLocationStackView.axis = .Vertical
    titleLocationStackView.distribution = .EqualSpacing
    
    let stackView = UIStackView(arrangedSubviews: [titleLocationStackView, dateLabel])
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.distribution = .EqualSpacing

    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    addSubview(stackView)
    
    let views = ["stack": stackView]
    var layoutConstraints = [NSLayoutConstraint]()
    layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("|-[stack]-|", options: [], metrics: nil, views: views)
    layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|-[stack]-|", options: [], metrics: nil, views: views)
    NSLayoutConstraint.activateConstraints(layoutConstraints)
    
  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

}
