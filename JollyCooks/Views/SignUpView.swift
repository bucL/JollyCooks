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
    
    @StateObject var viewModelAuth = AuthViewModel()                                    // Referencing AuthViewModel for access to signUp function
    @StateObject var viewModelDB = FirestoreViewModel()                                 // Referencing FirestoreViewModel for access to database related functions
    
    
    
    
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
                        .frame(width: 500)
                    Text("Create an Account")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .offset()
                    VStack (spacing: 0) {
                        TextField("First Name...", text: $viewModelAuth.firstName)          //Referencing variables for the AuthViewModel to make them accessible to the sign up function
                            .padding()
                            .background()
                            .frame(width: 400, height: 50)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        TextField("Last Name...", text: $viewModelAuth.lastName)          //Referencing variables for the AuthViewModel to make them accessible to the sign up function
                            .padding()
                            .frame(width: 400, height: 50)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .background()
                        TextField("Email...", text: $viewModelAuth.email)          //Referencing variables for the AuthViewModel to make them accessible to the sign up function
                            .padding()
                            .frame(width: 400, height: 50)
                            .autocapitalization(.none)
                            .background()
                            .disableAutocorrection(true)
                        //Using SecureField to hide the password created by the user to prevent a lack of security
                        SecureField("Password...", text: $viewModelAuth.newPassword)          //Referencing variables for the AuthViewModel to make them accessible to the sign up function
                            .padding()
                            .frame(width: 400, height: 50)
                            .autocapitalization(.none)
                            .background()
                            .disableAutocorrection(true)
                        //Using SecureField to hide the password created by the user to prevent a lack of security
                        SecureField("Re-enter Password...", text: $viewModelAuth.verifyPassword)          //Referencing variables for the AuthViewModel to make them accessible to the sign up function
                            .padding()
                            .frame(width:400, height: 50)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .background()
                        Spacer()
                        Button {
                            viewModelAuth.signUp() // Referncing the SignUp function from the AuthViewModel to create a new account.
                            //viewModelDB.addUser() // Function commented out as it results in a crash and is not viable to fix within the time period that is left as of 3/8/22
                        } label: {
                            Text("Sign Up")
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .cornerRadius(5)
                            
                        }
                        // Displaying alerts for if the User encounters an error in creating the account
                        .alert("\(viewModelAuth.failedRegisterMessage)", isPresented:$viewModelAuth.failedRegister) { Button("OK", role: .cancel) {} }
                        // Displaying alert notifying user to navigate back to the login page once they successully make an account.
                        .alert("Successfully Created Account! Please go back to the login page to sign in. ", isPresented:$viewModelAuth.accountSuccess) { Button("OK", role: .cancel) {} }
                        
                        Spacer()
                    }
                    .offset(y: 50)
                    
                    
                }
            }
            
        }
    
    
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
