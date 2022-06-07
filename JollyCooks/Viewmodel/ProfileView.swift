//
//  ProfileView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI

struct ProfileView: View{
    var body: some View{
        NavigationView{
            ScrollView{
                VStack {
                    Image("Banner")
                        .resizable()
                        .frame(width:.infinity, height:400)
                        .offset(y:-100)
                        
                    Text("Hello World")
                    ZStack{
                        ProfileBox()
                            .overlay(CircleImage().offset(y:-150))
                            .offset(y:-180)
                        ProfileBoxWords()
                            .offset(y:-100)
                    }
                    VStack(alignment: .leading){
                        Text("Bibliography:")
                            .font(.system(size: 24))
                            .bold()
                            .multilineTextAlignment(.leading)
                            .offset(y:-150)
                        Text("Welcome to my profile! My name is Marie James, but you can just call me Jami. I am a 23 year old free lance artist and I love to cook at home. I would love it if you could share your recipes with me, I am always eager to try new food.")
                            .offset(y:-130)
                            .font(.system(size: 22))
                        Text("Favourite recipes:")
                            .font(.system(size: 28))
                            .bold()
                            .multilineTextAlignment(.leading)
                            .offset(y:-80)
                       
                        }
                        .padding()
                    
                    
                    ZStack{
                        ProfileFood()
                            .offset(x:260, y:-120)
                        DessertView()
                            .offset(x:-260, y:-120)
                        Salads()
                            .offset(y:-120)
                      
                
                    }//End of HStack
                    .offset(y:-80)
                    .padding(30)
                    Spacer()
                }//End of Vstack
                
                .ignoresSafeArea()
            }//End of Scroll
            .ignoresSafeArea()
            
        }//End of Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.light)

        ProfileView()
            .preferredColorScheme(.dark)

    }
}
