//
//  AppDelegate.swift
//  WithoutIBDemo
//
//  Created by dasdom on 21.09.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

    let tabBarController = UITabBarController()
    
    let loginNavi = UINavigationController(rootViewController: LoginViewController())
    loginNavi.tabBarItem = UITabBarItem(title: "Login", image: nil, tag: 0)
    
    let toDoVC = ToDoTableViewController()
    toDoVC.dataProvider = ToDoDataProvider()
    let toDoNavi = UINavigationController(rootViewController: toDoVC)
    toDoNavi.tabBarItem = UITabBarItem(title: "ToDo", image: nil, tag: 1)

    tabBarController.viewControllers = [loginNavi, toDoNavi]
    
    window!.rootViewController = tabBarController
    window!.makeKeyAndVisible()
    
    return true
  }

}

