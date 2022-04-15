//
//  ContentView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//



import SwiftUI



struct ContentView: View {
    init(){
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    var body: some View {
       
        TabView{
           HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }//Tab 1
            ManualAddView()
                .tabItem{
                    Text("Manual Add")
                    Image(systemName: "plus.diamond")
                }//tab2
            PlannerView()
                .tabItem{
                    Text("Planner")
                    Image(systemName: "calendar")
                }//tab3
            FavouriteView()
                .tabItem{
                    Image(systemName: "heart")
                    Text("Favourite")
                }//tab4
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }//Tab 5
        }//TabView End
        .accentColor(.orange)
        
        
        
    } // Body End
} //Content View end

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)

    }
}

