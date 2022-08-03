//
//  ProfileView.swift
//  JollyCooks
//
//  Created by Andrew Chatfield on 26/7/22.
//

import SwiftUI

struct ProfileView: View {
    
    let gradient = Gradient(colors: [.orange, .white])
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .frame(width: 1000, height: 950,alignment: .bottom)
                .foregroundColor(.white)
                .padding(.top, 200)
            
            VStack{
            
            ProfileContent()
                
            }
            
            
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
