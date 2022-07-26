//
//  SettingsView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 22/7/2022.
//  This is the settings page, doesn't have a lot of feature apart from logging out(?) and just displaying information about JollCooks.

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("Account Settings")) {
                    Button {
                        AuthViewModel().logOut()
                    } label: {
                        Text("\(Image(systemName:"person.crop.circle.fill.badge.minus")) Log Out")
                    }
                    Text("\(Image(systemName: "power")) Deactivate")
                }
                .listRowBackground(Color("LightDarkColor"))

                
                
                Section(header: Text("About Us")) {
                    Text("\(Image(systemName: "questionmark.circle")) About JollyCooks")
                }
                .listRowBackground(Color("LightDarkColor"))

                
                Section(header: Text("Meet the team")){
                    NavigationLink {
                        PhillipInfo()
                        
                    } label: {
                        PersonThree()
                    }                .listRowBackground(Color("LightDarkColor"))

                 
                    NavigationLink {
                        AadityaInfo()
                        
                    } label: {
                        PersonTwo()
                    }                .listRowBackground(Color("LightDarkColor"))

                    
                    NavigationLink {
                        AndrewInfo()
                        
                    } label: {
                       PersonOne()
                    }                .listRowBackground(Color("LightDarkColor"))

                    
                    NavigationLink {
                        JoeInfo()
                        
                    } label: {
                        PersonFour()
                    }                .listRowBackground(Color("LightDarkColor"))

                    
                    //sorry joe the image I had, had only three male avatar and I wasn't bothered to find a new palatte of avatars  so I just gave you a female avatar.
                }
                
                NavigationLink {
                    EmailView()
                    
                } label: {
                    Text("\(Image(systemName: "headphones")) Contact Us")
                    .foregroundColor(Color.red)
                }
                .listRowBackground(Color("LightDarkColor"))
                
            }// ENd of List
            .onAppear {
                // Set the default to clear
                UITableView.appearance().backgroundColor = .clear
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Settings")
            
        } //Navigation view end
        .navigationViewStyle(StackNavigationViewStyle())
        
      
    }
    
        
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SettingsView()

            SettingsView()
                .preferredColorScheme(.dark)
        }
    }
}
