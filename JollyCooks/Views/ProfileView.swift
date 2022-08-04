//
//  ProfileView.swift
//  JollyCooks
//
//  Created by Andrew Chatfield on 26/7/22.
//This creates the backgorund for the Profile Page and calls the Profile Content into the view. 

import SwiftUI

struct ProfileView: View {
    
    let gradient = Gradient(colors: [.orange, .white])
    
    var body: some View {
        
        ZStack{
            
            //This creates a white rectange which actes as the backdrop for the text
            Rectangle()
                .frame(width: 1000, height: 950,alignment: .bottom)
                .foregroundColor(.white)
                .padding(.top, 200)
            
            
            //Calls for the Content which is in the ProfileView file
            ProfileContent()
            
        }
        
        .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
