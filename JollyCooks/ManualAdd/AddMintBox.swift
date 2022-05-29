//
//  AddMintBox.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct AddMintBox: View {
    var body: some View {
        
        Color("Mint")
            .opacity(0.9)
            .frame(width:700,height:200)
            .cornerRadius(25)
    }
}


struct AddMintBox_Previews: PreviewProvider {
    static var previews: some View {
        AddMintBox()
    }
}
