//
//  Home.swift
//  JollyCooks
//
//  Created by Phillip Shen on 22/7/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                Text("This is the home page")
            }
        }
        .navigationTitle("Recipes")
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HomeView()
                .preferredColorScheme(.dark)
            
            HomeView()
        }
         
    }
}
