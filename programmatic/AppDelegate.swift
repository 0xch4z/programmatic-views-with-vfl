//
//  AppDelegate.swift
//  programmatic
//
//  Created by Charles Kenney on 9/6/17.
//  Copyright © 2017 Charles Kenney. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // init ui application with navigation controller
        window = UIWindow(frame: UIScreen.main.bounds)
        let mainViewController = ViewController() as ViewController
        let navigationController = UINavigationController(rootViewController: mainViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}

