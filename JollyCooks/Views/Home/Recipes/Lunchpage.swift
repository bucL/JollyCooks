//
//  Lunchpage.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct Lunchpage: View {
    var body: some View {
        VStack{
            Text("Home > Lunch")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .bold()
                .offset(x: -190, y: 28)
            Divider()
                .offset(y: 20)
            
            
            Text("Popular Today >")
                .font(.system(size:26))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .offset(x: -265, y: 60)
                .foregroundColor(Color("BlueElements"))
            
            Text("Browse by category >")
                .font(.system(size:26))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .offset(x: -238, y: 500)
                .foregroundColor(Color("BlueElements"))
            
            ZStack{
                

                FriedRice()
                    .offset(x: -250, y: -30)
                Bun()
                    .offset(x: 10, y: -30)
                Foood2()
                    .offset(x: 266, y: -30)
            }
            .offset(y:0)
            
            ZStack{
                

                Pizza()
                    .offset(x: -250, y: -30)
                ProfileFood()
                    .offset(x: 10, y: -30)
                Noodle()
                    .offset(x: 266, y: -30)
            }
            .offset(y:-13)
        }//End of largest Vstack
        .ignoresSafeArea()
        
        }
}

struct Lunchpage_Previews: PreviewProvider {
    static var previews: some View {
        Lunchpage()
    }
}
