//
//  AddPage.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct AddPage: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    Text("Manual Add")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .bold()
                        .offset(x: -210, y: 55)
                    Divider()
                        .offset(y: 50)
                    NavigationLink(
                        destination: ManualAddView() .navigationBarBackButtonHidden(true),
                        label: {
                            Text("< Back")
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                                .font(.system(size: 20))
                        })
                        .offset(x: -305, y: 70)
                    Text("Title")
                        .font(.system(size: 35))
                        .bold()
                        .offset(x: -300, y: 110)
                    NavigationLink(
                        destination: SettingsPage() .navigationBarBackButtonHidden(true),
                        label: {
                            Image(systemName: "plus")
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                               
                        })
                        .offset(x: 325, y: 80)
                        .font(.system(size: 35))
                    
                    AddMintBox()
                        .overlay(Text("Click here to add a photo,video, etc").offset(y:0)).font(.system(size: 20)).foregroundColor(Color("BlueElements"))
                        .offset(y:90)
                    
                    
                    AddRedBox()
                        .overlay(Text("Ingredients").fontWeight(.bold).offset(x:-120, y:-100)).font(.system(size: 25)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                        
                        
                        .overlay(Text("Press here to start typing! Fonts, size and other options appear along with your virtual keyboard").offset(x: 5, y:-30)) .font(.system(size: 20))
                        
                        .offset(x: -143, y:100)
                    
                    AddNotes()
                        .overlay(Text("Notes:").fontWeight(.bold).offset(x:0, y:-100)).font(.system(size: 25)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)

                        .overlay(Text("Press here to start adding notes!").offset(x: 0, y:-50)) .font(.system(size: 20))
                        
                        
                        .offset(x: 215, y:-207)
                        .shadow(radius: 1)
                    
                    
                    
                    AddYellowBox()
                        .overlay(Text("Steps").fontWeight(.bold).offset(x:-150, y:-100)).font(.system(size: 25)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                        .overlay(Text("Type here...").offset(x: -130, y:-50)) .font(.system(size: 20))
                        
                        
                        .offset(x: -143, y: -200)
                    

                }//End of Vstack
                
                .ignoresSafeArea()
            }//End of Scroll
            .ignoresSafeArea()
            
        }//End of Navigation
        .navigationViewStyle(StackNavigationViewStyle())





    }
}

struct AddPage_Previews: PreviewProvider {
    static var previews: some View {
        AddPage()
    }
}
