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
            
            ListView()
                .tabItem {
                    Label("ToDo", systemImage: "house")
                }
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TabBar()
        }.environmentObject(ListViewModel())
        }

}
