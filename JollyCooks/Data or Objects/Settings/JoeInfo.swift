//
//  JoeInfo.swift
//  JollyCooks
//
//  Created by Phillip Shen on 23/7/2022.
//

import SwiftUI

struct JoeInfo: View {
    var body: some View {
        VStack{
            Image("Person3")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay {

                    Circle().stroke(.white, lineWidth: 4)

                }
                .shadow(radius: 7)
                .padding()
            Text("Hey there I'm Phillip!" + "\n" + "You may call me just Phil, I am the founder of JollyCooks. However that definitely doesn't mean I created it all by myself, make sure to check the other three memembers as they probably played are bigger role than me!")
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

struct JoeInfo_Previews: PreviewProvider {
    static var previews: some View {
        JoeInfo()
    }
}
