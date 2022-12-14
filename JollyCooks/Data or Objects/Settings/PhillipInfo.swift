//
//  PhillipInfo.swift
//  JollyCooks
//
//  Created by Phillip Shen on 23/7/2022.
//

import SwiftUI

struct PhillipInfo: View {
    
    var body: some View {
        VStack{
            Image("Person2")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay {

                    Circle().stroke(.white, lineWidth: 4)

                }
                .shadow(radius: 7)
                .padding()
            Text("Hey there I'm Phillip!" + "\n" + "You can just call me just Phil, I am the founder of JollyCooks and am responsible for the To-Do feature and UI design of the app. However that definitely doesn't mean I created it all by myself, make sure to check the other three memembers as they probably played a bigger role than me!")
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding()
//                .background(Color.white.opacity(0.8))
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

struct PhillipInfo_Previews: PreviewProvider {
    static var previews: some View {
        PhillipInfo()
    }
}
