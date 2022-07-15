//
//  AuthViewModel.swift
//  JollyCooks
//
//  Created by Aaditya Shankar on 11/7/2022.
//

// Importing Firebase and Swift Frameworks

import Foundation
import Firebase
import FirebaseCore
import FirebaseAuth

class AuthViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var loginSuccess = false
    @Published var displayFailedLogin = false
    @Published var failedLoginMessage = ""
    
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var newEmail = ""
    @Published var newPassword = ""
    @Published var verifyPassword = ""
    @Published var accountSuccess = false
    @Published var failedRegister = false
    @Published var failedRegisterMessage = ""
    
    func login() {
        Auth.auth().signIn(withEmail: self.email, password: self.password) { result, error in
            if error != nil {
                self.failedLoginMessage = error!.localizedDescription
                self.displayFailedLogin = true
            } else {
                self.loginSuccess = true
            }
        }
    }
    
    func signUp() {
        Auth.auth().createUser(withEmail: newEmail, password: newPassword)
    }
    
}
