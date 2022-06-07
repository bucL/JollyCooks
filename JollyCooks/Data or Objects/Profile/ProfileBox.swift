//
//  ProfileBox.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI

struct ProfileBox: View {
    var body: some View {
        Color.white
            .opacity(0.9)
            .frame(width:580,height:350)
            .cornerRadius(10)
            .shadow(radius:25)
        
    }
}

struct ProfileBox_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBox()
    }
}
