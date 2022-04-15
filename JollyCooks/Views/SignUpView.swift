//
//  SignUpView.swift
//  JollyCooks
//
//  Created by Aaditya Shankar on 15/4/22.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var user: UserViewModel
    @State private var email: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Image("93-937875_m")
                .resizable()
                .ignoresSafeArea()
                .frame(width: 1800, height: 1034)
                .opacity(0.95)
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width:500, height:1000)
                .offset(y:-100)
            
            VStack (spacing: 0) {
                TextField("First Name", text: $firstName)
                    .padding()
                    .background(Color.white)
                    .foregroundColor(Color.black)


                TextField("Last Name", text: $lastName)
                    .padding()
                    .background(Color.white)
                    .foregroundColor(Color.black)


                TextField("Email", text: $email)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color.white)

                    .disableAutocorrection(true)
                SecureField("Password", text: $password)
                    .autocapitalization(.none)
                    .padding()
                    .disableAutocorrection(true)
                    .background(Color.white)
                    .foregroundColor(Color.black)

                
            }
            .frame(width: 350)
            .offset(y: 250)
            
            
            Button(action: {
                user.signUp(email: email, firstName: firstName, lastName: lastName, password: password)
            }) {
                Text("Sign Up")
            }
            
            .frame(width:100, height: 40)
            .background(Color.orange)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .offset(y: 390)
            
            
            
            
           
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

