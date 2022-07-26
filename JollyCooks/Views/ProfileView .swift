//
//  ProfileView .swift
//  JollyCooks
//
//  Created by Andrew Chatfield on 22/7/22.
//

import SwiftUI

struct ProfileView_: View {
    var body: some View {
        
        ZStack{
                
            Rectangle()
                .foregroundColor(Color.orange)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
            
            Circle()
                .foregroundColor(.white)
            
            Rectangle()
                .size(width: 1000, height: 10000)
                .foregroundColor(.pink)
            
            }
                
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
                    
                
        }
    }
}

struct ProfileView__Previews: PreviewProvider {
    static var previews: some View {
        ProfileView_()
    }
}
