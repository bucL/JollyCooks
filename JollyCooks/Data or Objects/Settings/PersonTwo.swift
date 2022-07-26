//
//  PersonTwo.swift
//  JollyCooks
//
//  Created by Phillip Shen on 22/7/2022.
//

import SwiftUI

struct PersonTwo: View {
    var body: some View {
        HStack{
            Image("Person4")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .clipShape(Circle())

                .overlay {

                    Circle().stroke(.white, lineWidth: 4)

                }
                .shadow(radius: 2)
            Text("Aaditiya Shankar")
            
            Spacer()
        }
    }
}

struct PersonTwo_Previews: PreviewProvider {
    static var previews: some View {
        PersonTwo()
    }
}
