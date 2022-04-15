//
//  JollyCooksApp.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI
import UIKit
import Firebase

@main
struct JollyCooksApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let user  = UserViewModel()

                Main()
                .environmentObject(user)
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
                   [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
