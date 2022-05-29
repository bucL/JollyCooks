//
//  AddRedBox.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct AddRedBox: View {
    var body: some View {
        
        Color("Pink")
            .opacity(0.9)
            .frame(width:410,height:300)
            .cornerRadius(25)
        
    }
}

struct AddRedBox_Previews: PreviewProvider {
    static var previews: some View {
        AddRedBox()
    }
}
