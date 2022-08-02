//
//  AndrewInfo.swift
//  JollyCooks
//
//  Created by Phillip Shen on 23/7/2022.
//

import SwiftUI

struct AndrewInfo: View {
    var body: some View {
        VStack{
            Image("Person1")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay {

                    Circle().stroke(.white, lineWidth: 4)

                }
                .shadow(radius: 7)
                .padding()
            Text("Hey there I'm Andrew!" + "\n" + "I am the planner and designer for JollyCooks. I work along Phil on the user interface of this app. But my main line of work is the algorithims and flowcharts that you won't get to see but it was the the first step we took in making JollyCooks.")//Suggestion from Phil: Maybe talk about how you designed early algorithms and prototypes for the app.
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

struct AndrewInfo_Previews: PreviewProvider {
    static var previews: some View {
        AndrewInfo()
    }
}
