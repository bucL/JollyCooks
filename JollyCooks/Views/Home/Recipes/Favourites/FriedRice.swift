//
//  FriedRice.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct FriedRice: View {
    var body: some View {

                Image("Rice")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .mask(
                        Rectangle()
    //                        .frame(width: 250, height: 300)
                            .frame(width: 230, height: 300)
                            .cornerRadius(20)
                    )
                    .overlay(Text("Fried Rice").foregroundColor(.white).font(.system(size: 25)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/))
                    .shadow(radius: 10)
          

    }
}

struct FriedRice_Previews: PreviewProvider {
    static var previews: some View {
        FriedRice()
    }
}
