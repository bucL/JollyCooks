//
//  LoginView.swift
//  JollyCooks
//
//  Created by Aaditya Shankar on 9/7/2022.
//

import SwiftUI

struct AuthView: View {
    
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .frame(width: 1800, height: 1250)
                .blur(radius: 7)
            
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500)
                TextField("Username...", text: <#Binding<String>#>)
                
            }
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
