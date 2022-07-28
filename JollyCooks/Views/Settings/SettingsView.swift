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
                    .alert("\(viewModel.logoutMessage)", isPresented:$viewModel.displayLogoutMessage) { Button("OK", role: .cancel) {} } // Display alert when attmepting to logout. 
                    
                    
                    //.listRowBackground(Color.orange)
                    // Button(action: testing, label: Text(""))
                    Text("\(Image(systemName: "power")) Deactivate")
                }
                
                
                Section(header: Text("About Us")) {
                    Text("\(Image(systemName: "questionmark.circle")) About JollyCooks")
                }
                
                Section(header: Text("Meet the team")){
                    NavigationLink {
                        PhillipInfo()
                        
                    } label: {
                        PersonThree()
                    }
                    
                    NavigationLink {
                        AadityaInfo()
                        
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
                
                NavigationLink {
                    PhillipInfo()
                    
                } label: {
                    Text("\(Image(systemName: "headphones")) Contact Us")
                        .foregroundColor(Color.red)
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
