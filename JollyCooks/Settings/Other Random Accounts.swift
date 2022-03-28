//
//  Other Random Accounts.swift
//  JollyCooks
//
//  Created by Phillip Shen on 16/3/22.
//

import SwiftUI

struct Other_Random_Accounts: View {
    @State private var showGreeting = true

    var body: some View {
        VStack{
            HStack{
                Image(systemName: "bell")
                    .font(.system(size: 40))
                    .scaledToFit()
                    .frame(maxWidth: 50, alignment: .leading)
                Text("Notification")
                    .font(.system(size: 40))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Toggle("", isOn: $showGreeting )
                    .offset(y:0)
                    .toggleStyle(SwitchToggleStyle(tint: .orange))
                if showGreeting {
                    Text("")
                }
                
                    
                
            }//End of Hstack
            .padding()
            .frame(width: 800)
            .background(Color.white)
            .shadow(radius: 2)
            
            HStack{
                Image(systemName: "eye.circle")
                    .font(.system(size: 40))
                    .scaledToFit()
                    .frame(maxWidth: 50, alignment: .leading)
                Text("Apperance")
                    .font(.system(size: 40))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "arrow.forward")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .font(.system(size:40))

                    
                
            }//End of Hstack
            .padding()
            .frame(width: 800)
            .background(Color.white)
            .shadow(radius: 2)
            
            HStack{
                Image(systemName: "lock")
                    .font(.system(size: 40))
                    .scaledToFit()
                    .frame(maxWidth: 50, alignment: .leading)
                Text("Privacy & Security")
                    .font(.system(size: 40))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "arrow.forward")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .font(.system(size:40))

                    
                
            }//End of Hstack
            .padding()
            .frame(width: 800)
            .background(Color.white)
            .shadow(radius: 2)
            
            HStack{
                Image(systemName: "headphones")
                    .font(.system(size: 40))
                    .scaledToFit()
                    .frame(maxWidth: 50, alignment: .leading)
                Text("Help & Support")
                    .font(.system(size: 40))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "arrow.forward")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .font(.system(size:40))

                    
                
            }//End of Hstack
            .padding()
            .frame(width: 800)
            .background(Color.white)
            .shadow(radius: 2)
            HStack{
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 40))
                    .scaledToFit()
                    .frame(maxWidth: 50, alignment: .leading)
                Text("About")
                    .font(.system(size: 40))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "arrow.forward")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .font(.system(size:40))

                    
                
            }//End of Hstack
            .padding()
            .frame(width: 800)
            .background(Color.white)
            .shadow(radius: 2)
            
            
        }//Vstack end
        
        
        
        

    }
}

struct Other_Random_Accounts_Previews: PreviewProvider {
    static var previews: some View {
        Other_Random_Accounts()
    }
}
