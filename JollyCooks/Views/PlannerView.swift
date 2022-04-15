//
//  PlannerView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI

struct PlannerView: View{
    
    var body: some View{
        VStack{
            Text("Planner")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .bold()
                .offset(x: -255, y: -280)
            Divider()
                .offset(y: -280)
            VStack{
                Text("Important Tasks")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .offset(x: -259, y: -270)
                Text("Secondary Tasks")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .offset(x: -259, y: 73)
                
                NavigationLink(
                    destination: SettingsPage() .navigationBarBackButtonHidden(true),
                    label: {
                        Image(systemName: "plus")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                           
                    })
                    .offset(x: -140, y: -330)
                    .font(.system(size: 35))
                NavigationLink(
                    destination: SettingsPage() .navigationBarBackButtonHidden(true),
                    label: {
                        Text("Edit Lists")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                           
                    })
                    .offset(x: 280, y: -360)
                    .font(.system(size: 24))
     
                NavigationLink(
                    destination: SettingsPage() .navigationBarBackButtonHidden(true),
                    label: {
                        Image(systemName: "plus")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                           
                    })
                    .offset(x: -140, y: -25)
                    .font(.system(size: 35))
                
                Color("Orange")
                    .frame(width: 700, height: 50)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                    .overlay(Text("-Buy Cabbage").foregroundColor(.white).font(.system(size: 24)).offset(x:-240))
                    .offset(y:-380)
                Color("Orange")
                    .frame(width: 700, height: 50)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                    .overlay(Text("-Buy Milk").foregroundColor(.white).font(.system(size: 24)).offset(x:-265))
                    .offset(y:-375)
                
                Color("Orange")
                    .frame(width: 700, height: 50)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                    .overlay(Text("-Buy Eggs").foregroundColor(.white).font(.system(size: 24)).offset(x:-260))
                    .offset(y:-370)
                
                
                Color("Orange")
                    .frame(width: 700, height: 50)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                    .overlay(Text("-Cook Cookies for Upcoming Party").foregroundColor(.white).font(.system(size: 24)).offset(x:-140))
                    .offset(y:-180)


            }
        }
        //End of Vstack
    }
}

struct PlannerView_Previews: PreviewProvider {
    static var previews: some View {
        PlannerView()
            .preferredColorScheme(.light)

        PlannerView()
            .preferredColorScheme(.dark)

    }
}
