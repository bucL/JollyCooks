//
//  ProfileContent.swift
//  JollyCooks
//
//  Created by Andrew Chatfield on 2/8/2022.
//

import SwiftUI

struct ProfileContent: View {
    
    let gradient = Gradient(colors: [.orange, .white])
    
    var body: some View {
        
        ZStack{
            
            Text("Profile")
                .font(.system(size: 60))
                .bold()
                .foregroundColor(.white)
                .position(x: 225, y: 100)
            
            Image(systemName: "pencil")
                .resizable()
                .frame(width: 50, height: 50)
                .position(x: 800, y: 100)
                .foregroundColor(.white)
            
            Rectangle()
                .foregroundColor(Color(red: 169, green: 169, blue: 169))
                .frame(width: 700, height: 380)
                .cornerRadius(20)
                .shadow(color: .black, radius: 5)
                .padding(.bottom, 250)
        
        VStack{
            
            HStack{
                
                Spacer()
                
                VStack{
                
                        Image("Mark2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 300)
                            .clipShape(Circle())
                            .clipped()
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .shadow(color: .black, radius: 5)
                            .padding(.top, 75)
                            
                
                        Text("Mark Brown")
                        .font(.system(size: 45))
                        .bold()
                        .foregroundColor(.orange)
                        .padding(.top)
                    
                        Text("Manly, Sydeny")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(.teal)
                        .padding(.bottom)
                    
                    HStack{
                        
                        VStack{
                        
                            Text("Date Joined:")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                                .padding([.top, .leading, .trailing])
                            
                            Text("10/2/21")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(.black)
                                
                        
                        }
                        
                        VStack{
                        
                            Text("Following:")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                                .padding([.top, .leading, .trailing])
                        
                            Text("13")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(.black)
                                
                        }
                        
                        VStack{
                        
                            Text("Followers:")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                                .padding([.top, .leading, .trailing])
                        
                            Text("17")
                                .font(.system(size: 30))
                                .bold()
                                .foregroundColor(.black)
                            
                        }
                        
                        
                        
                    }
                        
                    Text("Bibliography:")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(.orange)
                        .padding(EdgeInsets(top:35, leading: 20, bottom: 1, trailing: 550))
                    
                    Text("Welcome to my profile! My name is Mark Brown, but you can call me Mark! I am 23 year old free lance artist and I love to cook at home. I would love it if you could share your recipes with me, I am always eager to try new food!")
                        .font(.system(size: 30))
                        .frame(width: 700, height: 200, alignment: .topLeading)
                        
                    Text("Links:")
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(.orange)
                        .frame(width: 700, height: 50, alignment: .topLeading)
                        .padding(EdgeInsets(top:0, leading: 0, bottom: 0, trailing: 0))
                    
                    Text("https://canvas.kings.edu.au/courses/5662/assignments/71023")
                        .font(.system(size: 30))
                        .foregroundColor(.blue)
                        .frame(width: 700, height: 100, alignment: .topLeading)
                        
                    
                    
                }
                        
                Spacer()
            
            }
            
            Spacer()
            
        }
        }
    }
}

struct ProfileContent_Previews: PreviewProvider {
    static var previews: some View {
        ProfileContent()
    }
}
