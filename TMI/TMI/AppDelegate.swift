//
//  AppDelegate.swift
//  TMI
//
//  Created by CHOMINJI on 2019/11/28.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
//        let view = EntryViewController()
//        let view = LoadingViewController()
        let view = MainViewController()
        
        window?.rootViewController = view
        window?.makeKeyAndVisible()
        return true
    }

}
