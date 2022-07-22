//
//  SettingsView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 22/7/2022.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("Main")) {
                    Text("Account Settings")
                        .foregroundColor(Color.white)
                        .listRowBackground(Color.orange)
//                    Button(action: testing, label: Text(""))
                    
                }
                Section(header: Text("About Us")) {
                    Text("About JollyCooks")
                        .foregroundColor(Color.white)
                        .listRowBackground(Color.orange)
                }
                
                Section(header: Text("Meet the team")){
                    NavigationLink {
                        PhillipInfo()
                        
                    } label: {
                        PersonThree()
                    }
                 
                    NavigationLink {
                        AaditiyaInfo()
                        
                    } label: {
                        PersonTwo()
                    }
                    
                    NavigationLink {
                        AndrewInfo()
                        
                    } label: {
                       PersonOne()
                    }
                    
                    NavigationLink {
                        JoeInfo()
                        
                    } label: {
                        PersonFour()
                    }//sorry joe the image I had, had only three male avatar and I wasn't bothered to find a new palatte of avatars  so I just gave you a female avatar.
                }
              
                
            }// ENd of List
            .listStyle(.insetGrouped)
            .navigationTitle("Settings")
            
        } //Navigation view end
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
