//
//  LoginViewController.swift
//  WithoutIBDemo
//
//  Created by dasdom on 21.09.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

  var loginView: LoginView { return view as! LoginView }
  
  override func loadView() {
    view = LoginView()
  }
  
  override func viewDidLayoutSubviews() {
//    NSLayoutConstraint(item: loginView.userTextField, attribute: .Top, relatedBy: .Equal, toItem: topLayoutGuide, attribute: .Bottom, multiplier: 1.0, constant: 20).active = true
    loginView.userTextField.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 20).active = true
  }
}
