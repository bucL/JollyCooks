//
//  ProfileBoxWords.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI

struct ProfileBoxWords: View {
    var body: some View {
        VStack{
            HStack{
                Text("Marie James")
                    .font(.system(size: 30))
                    .bold()
                
                
                
                NavigationLink(
                    destination: SettingsPage() .navigationBarBackButtonHidden(true),
                    label: {
                        Image(systemName: "gearshape")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 50))
                    })

            }
            Text("Chelsa, London")
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                .font(.system(size: 20))

            HStack{
                VStack{
                    Text("Date Joined:")
                        .padding(5)
                        .font(.system(size: 18))

                    Text("10/2/21")
                        .font(.system(size: 18))

                }
                
                VStack{
                    Text("Date Joined:")
                        .font(.system(size: 18))
                        .padding(5)
                    Text("10/2/21")
                        .font(.system(size: 18))

                }
                
                VStack{
                    Text("Date Joined:")
                        .font(.system(size: 18))
                        .padding(5)
                    Text("10/2/21")
                        .font(.system(size: 18))

                }
            }
        }
        .frame(width:580,height:350)
        
        
    }
}

struct ProfileBoxWords_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBoxWords()
    }
}
