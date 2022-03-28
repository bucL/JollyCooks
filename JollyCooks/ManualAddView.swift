//
//  ManualAddView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI

struct ManualAddView: View{
    var body: some View{
        NavigationView{
            VStack{
                Text("Add your own recipes")
                    .font(.system(size: 50))
                    .fontWeight(.heavy)
                    .bold()
                    .offset(x: -95, y: -490)
                Divider()
                    .offset(y: -490)

                    Text("You currently have no recipes")
                        .font(.system(size: 28))
                        .bold()
                        .offset(y:-10)
                

                NavigationLink(
                    destination: AddPage() .navigationBarBackButtonHidden(true),
                    label: {
                       Text("Click here to start adding!")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("BlueElements")/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 20))
                        
                    })
                  
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())

          
        
        
        
        
            
    }//View end
}



struct ManualAddView_Previews: PreviewProvider {
    static var previews: some View {
        ManualAddView()
            .preferredColorScheme(.light)
        ManualAddView()
            .preferredColorScheme(.dark)


    }
}
