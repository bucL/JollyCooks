//  Home.swift
//
//  JollyCooks
//
//  Created by Phillip Shen on 22/7/2022.
// This view is literally an image because Joe was supposed to do this but then at the last minute i made the decision that if
// I had the time I would do it but we don't have timne at this point so yeah -- Aaditya.

//
//  HomeView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 15/3/22.
//

import SwiftUI


// Dummy model for the hoemview because we didn't have enough time to finish this and Joe didn't do it cause he's lazy af.


struct HomeView: View{
    
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    Text("Home")
                        .fontWeight(.heavy)
                        .font(.system(size: 50))
                        .bold()
                        .offset(x: -270, y: -390)
                    Divider()
                        .offset(y: -320)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 28))
                        Text("Search for dishes, meals, ingredients...")
                            .font(.system(size: 28))
                        Image(systemName: "mic")
                            .font(.system(size: 28)).offset(x:60).opacity(0.5)
                        
                        
                        
                    }//Hstack end
                    .frame(width: 750, height: 80)
                    .background(Color("Whitegray"))
                    .cornerRadius(10)
                    .offset(y:-265)
                    .shadow(radius: 0.5)
                                    VStack{
                        HStack{
                            
                            Dinner()
                                .overlay(Text("Dinner").fontWeight(.bold)).font(.system(size: 25)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                     
                            
                            Dinner()
                                .overlay(Text("Breakfast").fontWeight(.bold)).font(.system(size: 25)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                        }
                        
                                        HStack{
                                            Dinner()
                                                .overlay(Text("Lunch").fontWeight(.bold)).font(.system(size: 25)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                                     
                                            
                                            Dinner()
                                                .overlay(Text("Drinks & Tea").fontWeight(.bold)).font(.system(size: 25)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                                        }
                                        
                                        HStack{
                                            Dinner()
                                                .overlay(Text("Desserts").fontWeight(.bold)).font(.system(size: 25)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                                     
                                            
                                            Dinner()
                                                .overlay(Text("Pastry").fontWeight(.bold)).font(.system(size: 25)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                                        }
                                        
                                        Text("Browse more categories >")
                                            .font(.system(size:23))
                                            .offset(x: -200, y: 20)
                                        
                                        ZStack{
                                            Image("Insanity Burger")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .mask(
                                                    Rectangle()
                                //                        .frame(width: 250, height: 300)
                                                        .frame(width: 350, height: 300)
                                                        .cornerRadius(20)
                                                )
                                                .overlay(Text("Learn how to cook an Insanity Burger with Jamie Oliver").foregroundColor(.black).font(.system(size: 25)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).offset(y:200))
                                                .shadow(radius: 10)
                                                .offset(x:-185)
                                            
                                            Rectangle()
                                                .overlay(Text("Top Blogs").foregroundColor(.black).offset(y:-160).font(.system(size:24)))
                                                .frame(width:340, height: 500)
                                                .foregroundColor(.white)
                                                .shadow(radius: 5)
                                                .offset(x: 200, y: 53)
                                        
                                            Image("Salads")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .mask(
                                                    Rectangle()
                                //                        .frame(width: 250, height: 300)
                                                        .frame(width: 100, height: 100)
                                                        .cornerRadius(20)
                                                )
                                                .overlay(Text("Which Salad is the best for you?").foregroundColor(.black).font(.system(size: 25)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).offset(x:160, y:0).frame(width: 200))
                                                .shadow(radius: 10)
                                                .offset(x:100, y:0)
                                            
                                            Image("Chicken")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .mask(
                                                    Rectangle()
                                //                        .frame(width: 250, height: 300)
                                                        .frame(width: 100, height: 100)
                                                        .cornerRadius(20)
                                                )
                                                .overlay(Text("How unhealthy is fried food?").foregroundColor(.black).font(.system(size: 25)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).offset(x:160, y:0).frame(width: 200))
                                                .shadow(radius: 10)
                                                .offset(x:100, y:120)
                                            
                                            Image("Rest")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .mask(
                                                    Rectangle()
                                //                        .frame(width: 250, height: 300)
                                                        .frame(width: 100, height: 100)
                                                        .cornerRadius(20)
                                                )
                                                .overlay(Text("Best Restaurants that anyone can afford ").foregroundColor(.black).font(.system(size: 25)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).offset(x:160, y:0).frame(width: 200))
                                                .shadow(radius: 10)
                                                .offset(x:100, y:240)
                                            
                                        }//Vstack
                                        .frame(width: 400,height:400)

                                        
                                        
                                        

                    }//End of Vstack
                        
                    .offset(y:240)
                    
                    
                    
                    
                    
                    
                    
                    
                   

                }//End of VStack
      
                
            }//End of Scroll
            .ignoresSafeArea()
            
            
          
        }
        .ignoresSafeArea()
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.light)

        HomeView()
            .preferredColorScheme(.dark)
        
    }
}

        
        

