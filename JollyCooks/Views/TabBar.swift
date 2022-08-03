//
//  TabBar.swift
//  JollyCooks
//
//  Created by Phillip Shen on 4/7/2022.
// TabBar is the bottom bar navigation for our app

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            
            //Other views here and add a .tabitem underneath them
            
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Color.red
                .tabItem {
                    Label("Add", systemImage: "plus")
                }
            
            ListView()
                .tabItem {
                    Label("ToDo", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        
            TabBar()
                .environmentObject(ListViewModel())
        
    }

}
