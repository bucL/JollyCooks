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
        if viewModelAuth.accountSuccess == true {
            NavigationView {
                ZStack {
                    Image("signup")
                        .resizable()
                        .ignoresSafeArea()
                        .blur(radius: 20)
                    Button {
                        viewModelDB.addUser()
                        viewModelDB.addUser()
                    } label: {
                        NavigationLink(destination: AuthView()) {
                            Text("Go back")
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .cornerRadius(5)
                        }
                        
                    }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        } else {
            ZStack {
                Image("signup")
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius: 20)
                VStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500)
                    Text("Create an Account")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .offset()
                    VStack (spacing: 0) {
                        TextField("First Name...", text: $viewModelAuth.firstName)
                            .padding()
                            .background()
                            .frame(width: 400, height: 50)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        TextField("Last Name...", text: $viewModelAuth.lastName)
                            .padding()
                            .frame(width: 400, height: 50)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .background()
                        TextField("Email...", text: $viewModelAuth.email)
                            .padding()
                            .frame(width: 400, height: 50)
                            .autocapitalization(.none)
                            .background()
                            .disableAutocorrection(true)
                        SecureField("Password...", text: $viewModelAuth.newPassword)
                            .padding()
                            .frame(width: 400, height: 50)
                            .autocapitalization(.none)
                            .background()
                            .disableAutocorrection(true)
                        SecureField("Re-enter Password...", text: $viewModelAuth.verifyPassword)
                            .padding()
                            .frame(width:400, height: 50)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .background()
                        Spacer()
                        Button {
                            viewModelAuth.signUp()
                        } label: {
                            Text("Sign Up")
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .cornerRadius(5)
                            
                        }
                        
                        .alert("\(viewModelAuth.failedRegisterMessage)", isPresented:$viewModelAuth.failedRegister) { Button("OK", role: .cancel) {} }
                        .alert("Successfully Created Account! Please go back to the login page to sign in. ", isPresented:$viewModelAuth.accountSuccess) { Button("OK", role: .cancel) {} }
                        
                        Spacer()
                    }
                    .offset(y: 50)
                    
                    
                }
            }
            
        }
    }
    
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
