//
//  AppDelegate.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 7/20/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    private let coordinator = MasterCoordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     
        coordinator.start()
        
        return true
    }



}

