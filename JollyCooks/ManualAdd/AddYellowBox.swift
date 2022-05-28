//
//  AddYellowBox.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct AddYellowBox: View {
    var body: some View {
        Color("Yellow")
            .opacity(0.9)
            .frame(width:410,height:300)
            .cornerRadius(25)
    }
}

struct AddYellowBox_Previews: PreviewProvider {
    static var previews: some View {
        AddYellowBox()
    }
}
