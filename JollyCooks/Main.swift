//
//  SwiftUIView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("93-937875_m")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 1800, height: 1034)
                    .opacity(0.95)
                //testing commit a seocnd time
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:500, height:1000)
                    .offset(y:-100)
                
                
                Text("Username...")
                    .frame(width:310, height:55)
                    .foregroundColor(Color.gray)
                    .background(Color.white)
                    .offset(y:150)
                Text("Password...")
                    .frame(width:310, height:55)
                    .foregroundColor(Color.gray)
                    .background(Color.white)
                    .padding(.bottom,5)
                    .offset(y:205)
                HStack{
                    Text("Sign up")
                        .frame(width:120, height:55)
                        .foregroundColor(Color.white)
                        .background(Color("Orange"))
                        .padding(.bottom,5)
                        .offset(x: -1, y:340)
                    Text("Continute as Guest")
                        .frame(width:180, height:55)
                        .foregroundColor(Color.white)
                        .background(Color("Orange"))
                        .padding(.bottom,5)
                        .offset(x: 1, y:340)
                }
                //Text("Sign In")
                    //.foregroundColor(Color.gray)
                   // .padding(25)
                   // .background(Color.orange)
                
                NavigationLink(
                    destination: ContentView() .navigationBarBackButtonHidden(true),
                    label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(height: 52)
                            .frame(maxWidth: 310)
                            .cornerRadius(10)
                            .background(Color.orange)
                            .cornerRadius(5)
                            .padding(.bottom,150)
                    })
                    .offset(y:350)
                
               
                
                
            } // Vstack End
            /**.background(
                Image("93-937875_m").opacity(0.87).ignoresSafeArea().)*/


        }//Navigation
        .navigationBarTitle(Text(""), displayMode: .inline)
        .navigationViewStyle(StackNavigationViewStyle())





    }
    
}
/**

NavigationView{
    VStack{
        GeometryReader{
            geo in
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.6)
                .frame(width: geo.size.width, height: geo.size.height)
        }
        Text("Username...")

            .frame(width:310, height:55)
            .foregroundColor(Color.gray)
            .background(Color.white)
        Text("Password...")
            .frame(width:310, height:55)
            .foregroundColor(Color.gray)
            .background(Color.white)
            .padding(.bottom,5)
        //Text("Sign In")
            //.foregroundColor(Color.gray)
           // .padding(25)
           // .background(Color.orange)
        
        NavigationLink(
            destination: Main() .navigationBarBackButtonHidden(true),
            label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 52)
                    .frame(maxWidth: 310)
                    .cornerRadius(10)
                    .background(Color.orange)
                    .cornerRadius(5)
                    .padding(.bottom,150)
            })
        
    } // Vstack End
    .background(
        Image("93-937875_m").opacity(0.87)      .ignoresSafeArea())


}//Navigation
.navigationBarTitle(Text(""), displayMode: .inline)
.navigationViewStyle(StackNavigationViewStyle())



*/


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
