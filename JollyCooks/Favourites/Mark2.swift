//
//  Mark2.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct Mark2: View {
    var body: some View {
        VStack{
            Image("Mark2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFit()
                .mask(
                    Rectangle()
//                        .frame(width: 250, height: 300)
                        .frame(width: 230, height: 300)
                        .cornerRadius(20)
                )
                .shadow(radius: 10)
            Text("James Tine")
                .font(.system(size: 24))
                .fontWeight(.bold)
                .offset(y:5)
            
        }
        .frame(width: 300,height:400)
        //Vstack
    }
}

struct Mark2_Previews: PreviewProvider {
    static var previews: some View {
        Mark2()
    }
}
