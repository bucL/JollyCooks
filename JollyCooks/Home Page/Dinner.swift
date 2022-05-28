//
//  Dinner.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct Dinner: View {
    var body: some View {
      
            
        
        NavigationLink(
            destination: Lunchpage() .navigationBarBackButtonHidden(true),
            label: {
                Color("Orange")
                    .frame(width:350,height:120)
                    .cornerRadius(25)
                    .padding()
            })

           

    }
}

struct Dinner_Previews: PreviewProvider {
    static var previews: some View {
        Dinner()
    }
}
// TESTSTSTST
