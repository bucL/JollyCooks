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
            Text("Hey there I'm Joe!" + "\n" + "I am the data analyist and tester. I am incharge of all the data behind the screen that allows JollyCooks to run. I am responsbile for things like data dictionary.")//Suggestion from Phil: Maybe talk about how you are the data and logistic manager? Cuz u did do a lot of data work
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
