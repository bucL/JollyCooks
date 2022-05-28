//
//  SettingsListView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct SettingsListView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person")
                    .font(.system(size: 40))
                    .scaledToFit()
                    .frame(maxWidth: 50, alignment: .leading)
                Text("Account")
                    .font(.system(size: 40))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Image(systemName: "arrow.forward")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .font(.system(size:40))
                    
                
            }//End of Hstack
            .padding()
            .frame(width: 800)
            .background(Color.white)
            .shadow(radius: 2)
            
            
            
        }
        
        
    }
}

struct SettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListView()
    }
}
