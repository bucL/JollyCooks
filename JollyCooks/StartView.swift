//
//  StartView.swift
//  JollyCooks
//
//  Created by Aaditya Shankar on 15/4/22.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var user: UserViewModel
    
    var body: some View {
        NavigationView{
            if user.userIsAuthenticatedAndSynced {
                HomeView()
            } else {
                Main()
            }
                
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
        //Hiding navigation bar and converting the view style to stack so that it behaves like an iphone. 
        
    }
    
}
