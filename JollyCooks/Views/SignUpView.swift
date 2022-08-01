//
//  SignUp.swift
//  JollyCooks
//
//  Created by Aaditya Shankar on 15/7/2022.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore


struct SignUpView: View {
    
    @StateObject var viewModelAuth = AuthViewModel()
    @StateObject var viewModelDB = FirestoreViewModel()
    
    var body: some View {
        
        ZStack {
            Image("signup")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 20)
            VStack {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400)
                Text("Create an Account")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .offset()
                Group {
                TextField("First Name", text: $viewModelAuth.firstName)
                    .padding()
                    .border(.black)
                    .background()
                    .frame(width: 400, height: 50)
                    .autocapitalization(.none)
                TextField("Last Name", text: $viewModelAuth.lastName)
                    .padding()
                    .frame(width: 400, height: 50)
                    .autocapitalization(.none)
                    .background()
                    .border(.black)
                }
                .offset(y: 50)
                
                
                
            }
            .offset(y: -100)
        }
    }
    
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
