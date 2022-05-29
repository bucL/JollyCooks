//
//  FavouriteView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI

struct FavouriteView: View{
    var body: some View{
        VStack{
            Text("Favourite")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .bold()
                .offset(x: -240, y: 54)
            Divider()
                .offset(y: 45)
            
            Text("Recently Added >")
                .font(.system(size:24))
                .fontWeight(.semibold)
                .offset(x: -250, y: 70)
            
            NavigationLink(
                destination: SettingsPage() .navigationBarBackButtonHidden(true),
                label: {
                    Text("All")
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                        .font(.system(size:24))
                       
                })
                .offset(x: 330, y: 40)
            
            //Note this take to settings, but is not fully coded. Due to time restrictions everything most likely leads to the Settings Page
            NavigationLink(
                destination: SettingsPage() .navigationBarBackButtonHidden(true),
                label: {
                    Text("All")
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                        .font(.system(size:24))
                        .offset(x: 330, y: 490)
                })
            
            
            ZStack{
                FriedRice()
                    .offset(x: -250, y: -30)
                Noodle()
                    .offset(x: 10, y: -30)
                Pizza()
                    .offset(x: 266, y: -30)

            }//End of ZStack for food
            
            ZStack{
                Mark1()
                    .offset(x: -250, y: -30)
                Mark2()
                    .offset(x: 10, y: -30)
                Mark3()
                    .offset(x: 266, y: -30)
                
            }
            
            
            Text("People and Blogs you follow >")
                .font(.system(size:24))
                .fontWeight(.semibold)
                .offset(x: -200, y: -500)

            
        }
        .ignoresSafeArea()
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView()
            .preferredColorScheme(.light)
        FavouriteView()
            .preferredColorScheme(.dark)

    }
}


