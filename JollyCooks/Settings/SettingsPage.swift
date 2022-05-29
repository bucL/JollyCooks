//
//  SettingsPage.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct SettingsPage: View {
    
    @State private var showGreeting = true
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Orange")
                    .frame(width: 820, height: 150)
                    .offset(y:-568)
                    .ignoresSafeArea()
                    .overlay(Text("Settings").fontWeight(.semibold ).offset(y:-550)        .font(.system(size: 35))).foregroundColor(.white)
                
                Color.orange
                    .frame(width:820, height:30)
                    .offset(y:-628)
                
                NavigationLink(
                    destination: ProfileView() .navigationBarBackButtonHidden(true),
                    label: {
                        Text("< Back")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 25))
                    })
                    .offset(x:-310)
                    .offset(y: -460)
                
                
                SettingsListView()
                    .offset(y:-350)
                Other_Random_Accounts()
                    .offset(y:-10)
              

            }
            .ignoresSafeArea()
            
        }
        .ignoresSafeArea()
        .navigationViewStyle(StackNavigationViewStyle())

        //Naviga
            
    }
    
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
            .preferredColorScheme(.light)

        SettingsPage()
            .preferredColorScheme(.dark)

    }
}

