//
//  LoginView.swift
//  JollyCooks
//
//  Created by Aaditya Shankar on 9/7/2022.
//

import SwiftUI

struct AuthView: View {
    
    
    @StateObject var viewModel = AuthViewModel() // Referencing AuthViewModel to call functions from this file in the View.
    @StateObject var listViewModel: ListViewModel = ListViewModel() // Referncing ListViewModel to set environment Object in the view. 

    @Environment(\.colorScheme) var colorScheme // identify if the colorscheme changes from light to dark.


    
    var body: some View {
        
        if viewModel.loginSuccess == false {                                            // Checking if the User is currently logged in or not.
            
            NavigationView {
                ZStack {
                    Image("background")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(width: 1800, height: 1250)
                        .blur(radius: 7)
                    
                    VStack {
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500)
                        TextField("Username...", text: $viewModel.email)                // Referencing AuthViewModel().email to let signIn function work
                            .padding()
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .frame(width: 300, height: 50)
                            .background(Color(UIColor.systemBackground))
                        SecureField("Password...", text: $viewModel.password)           // Referencing AuthViewModel().password to let signIn function work
                            .padding()
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .frame(width: 300, height: 50)
                            .background(Color(UIColor.systemBackground))
                            .offset(y:-8)
                        
                        
                        Button {
                            viewModel.login()                                           //Calling the login function from the AuthViewModel
                        } label: {
                            Text("Login")
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .cornerRadius(5)
                        
                            // Akert to display error when the User fails to login.
                        }.alert("\(viewModel.failedLoginMessage)", isPresented:$viewModel.displayFailedLogin) { Button("OK", role: .cancel) {} }
                        
                        
                        
                        NavigationLink(destination: SignUpView()) {                     //Navigation Link to direct user to the signup view if they want to create a new account.
                            Text("Sign Up")
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .cornerRadius(5)
                        }
                    }
                    
                }
            }
            .navigationBarHidden(true)
            .navigationViewStyle(StackNavigationViewStyle())
            
            
            
        } else {                                                                        //Displaying the HomeView if the user successfully logs in.

                SwiftUIView()
            .environmentObject(listViewModel)
        }
        
    }
}







struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}


// Extension from https://www.youtube.com/watch?v=6b2WAePdiqA&list=WL&index=6 allowing for placeholder text that can be recolored. Doesn't work atm with current setup of login screen hoping to get it working in the near future.
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}
