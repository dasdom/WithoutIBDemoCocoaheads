//
//  LoginView.swift
//  WithoutIBDemo
//
//  Created by dasdom on 21.09.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class LoginView: UIView {

  let userTextField: UITextField
  let passwordTextField: UITextField
  let loginButton: UIButton
  
  override init(frame: CGRect) {
    
    let makeTextFieldWithPlaceholder = { (placeholder: String) -> UITextField in
      let textField = UITextField()
      textField.translatesAutoresizingMaskIntoConstraints = false
      textField.placeholder = placeholder
      textField.borderStyle = .Bezel
      return textField
    }
    
    userTextField = makeTextFieldWithPlaceholder("Username")
    passwordTextField = makeTextFieldWithPlaceholder("Password")
    passwordTextField.secureTextEntry = true
    
    loginButton = UIButton(type: .System)
    loginButton.translatesAutoresizingMaskIntoConstraints = false
    loginButton.backgroundColor = .greenColor()
    loginButton.setTitle("Login", forState: .Normal)
    
    super.init(frame: frame)

    backgroundColor = .whiteColor()
    
    addSubview(userTextField)
    addSubview(passwordTextField)
    addSubview(loginButton)
    
    let views = ["user": userTextField, "password": passwordTextField, "login": loginButton]
    let metrics = ["left": 20, "right": 60]
    NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-left-[user]-right-|", options: [], metrics: metrics, views: views))
    NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[user(50,password,login)]-15-[password]-30-[login]", options: [.AlignAllLeading, .AlignAllTrailing], metrics: nil, views: views))
    
    
  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
}
