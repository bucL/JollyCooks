//
//  SettingsRowView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 22/7/2022.
//

import SwiftUI

struct PersonThree: View {
    var body: some View {
            HStack{
                Image("Person2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())

                    .overlay {

                        Circle().stroke(.white, lineWidth: 4)

                    }
                
                    .shadow(radius: 2)
                Text("Phillip Shen")
                
                Spacer()
            }        
    }
}

struct PersonThree_Previews: PreviewProvider {
    static var previews: some View {
        PersonThree()
    }
}
