//
//  AaditiyaInfo.swift
//  JollyCooks
//
//  Created by Phillip Shen on 23/7/2022.
//

import SwiftUI

struct AaditiyaInfo: View {
    var body: some View {
        VStack{
            Image("Person4")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay {

                    Circle().stroke(.white, lineWidth: 4)

                }
                .shadow(radius: 7)
                .padding()
            Text("")//Suggestion from Phil: Maybe talk about how you were the brain of the app. Cuz u literally coded like 90% of our app
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding()
                .background(Image("orangegradient")
                    .resizable()
                    .scaledToFill()
                    )
                .cornerRadius(10)
                .padding()
            
            Spacer()
        }
        
    }
}

struct AaditiyaInfo_Previews: PreviewProvider {
    static var previews: some View {
        AaditiyaInfo()
    }
}
