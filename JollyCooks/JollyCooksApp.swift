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
            //NavigationView{
            //  SwiftUIView()
            //}
            //.navigationViewStyle(StackNavigationViewStyle())
            //.environmentObject(listViewModel)
        }
    }
}
