//
//  Foood2.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct Foood2: View {
    var body: some View {
        VStack{
            Image("Insanity Burger")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .mask(
                    Rectangle()
//                        .frame(width: 250, height: 300)
                        .frame(width: 230, height: 300)
                        .cornerRadius(20)
                )
                .overlay(Text("Insanity Burger").foregroundColor(.white).font(.system(size: 25)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/))
                .shadow(radius: 10)

            
        }//Vstack
        .frame(width: 400,height:400)
        
    }
}

struct Foood2_Previews: PreviewProvider {
    static var previews: some View {
        Foood2()
    }
}
