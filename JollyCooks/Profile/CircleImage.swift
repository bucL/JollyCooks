//
//  CircleImage.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Marie")
            .resizable()
            .scaledToFit()
            .frame(width:380)
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle().stroke(Color.white, lineWidth: 12))
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
