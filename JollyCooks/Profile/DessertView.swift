//
//  DessertView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct DessertView: View {
    var body: some View {
        ZStack{
            Image("Dessert")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .mask(
                    Rectangle()
                        .frame(width: 230, height: 300)
                        .cornerRadius(20)
                )
                .shadow(radius: 10)
            Text("Dessert")
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 28))
        } //Vstack
    }
}

struct DessertView_Previews: PreviewProvider {
    static var previews: some View {
        DessertView()
    }
}
