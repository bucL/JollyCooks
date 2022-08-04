//
//  ProfileFood.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI

struct ProfileFood: View {
    var body: some View {
        ZStack{
            Image("Chicken")
                
                .resizable()
                .aspectRatio(contentMode: .fit)
                .mask(
                    Rectangle()
//                        .frame(width: 250, height: 300)
                        .frame(width: 230, height: 300)
                        .cornerRadius(20)
                )
                .shadow(radius: 10)
            Text("Fried")
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 28))
            
            
        }//Vstack
        
        
       
    }
}

struct ProfileFood_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFood()
    }
}
