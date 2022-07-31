//
//  JollyCooksApp.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//
/* Mvvm Notes
 Model - Data
 View - UI
 ViewModel - manages Models for View (Like puts/connects them together).
 */

// Importing necessary library/api's to allow proper functionality.
import SwiftUI
import Firebase

@main
struct JollyCooksApp: App {
    

    
    // Firebase Initialisation.
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            AuthView()
                .onAppear() {
                    //For getting Device model (I need this for emailing support feature
                    //What each prints is stated by the name e.g the first one prints the system version of the Device
                    print(UIDevice.current.systemVersion)
                    print(UIDevice.current.modelName)
                    print(Bundle.main.displayName)
                    print(Bundle.main.appVersion)
                    print(Bundle.main.appBuild)
                }
        }
    }
}
