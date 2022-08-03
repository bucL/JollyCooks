//
//  SettingsView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 22/7/2022.
//  This is the settings page, doesn't have a lot of feature apart from logging out(?) and just displaying information about JollCooks.

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @StateObject var viewModel = AuthViewModel() //Referencing AuthViewModel.swift
    @Environment(\.openURL) var openURL
    private var email = SupportEmail(toAddress: "sddgroupc@gmail.com", subject: "Support Ticket", messageHeader: "Please describe issue below")
    
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("Account Settings")) {
                    Button {
                        // Calling logOut function from AuthViewModel.swift
                        viewModel.logOut()
                    } label: {
                        Text("\(Image(systemName:"person.crop.circle.fill.badge.minus")) Log Out")
                    }
                    .alert("\(viewModel.logoutMessage) Please quit and relaunch the app to login again.", isPresented:$viewModel.displayLogoutMessage) { Button("OK", role: .cancel) {} } // Display alert when attmepting to logout.
                    
                    
                    //.listRowBackground(Color.orange)
                    // Button(action: testing, label: Text(""))
                }
                .listRowBackground(Color("LightDarkColor"))

                
                
                Section(header: Text("About Us")) {
                    NavigationLink {
                        JollycooksInfo()
                        
                    } label: {
                        Text("\(Image(systemName: "questionmark.circle")) About JollyCooks")
                    }
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
                Section(footer: Text("Alternatively, contact us at sddgroupc@gmail.com")){
                    Button {
                        email.send(openURL: openURL)
                    } label: {
                        Text("\(Image(systemName: "headphones")) Contact Us")
                            .foregroundColor(Color.red)
                    }
                    .listRowBackground(Color("LightDarkColor"))
                }
                
                
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
