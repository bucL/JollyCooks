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
    
    @Published var logoutMessage = ""
    @Published var displayLogoutMessage = false
    
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
        Auth.auth().createUser(withEmail: newEmail, password: newPassword) { result, error in
            if error != nil {
                self.failedRegisterMessage = error!.localizedDescription // Updating Error Message to be displayed by alert in SignUpView.swift
                self.failedRegister = true
            } else {
                self.accountSuccess = true
            }
        }
    }
    
    // Altered logout function from https://stackoverflow.com/questions/37943616/firebase-sign-out-not-working-in-swift
    
    func logOut() {
        do {
            try Auth.auth().signOut()
            self.loginSuccess = false
            self.logoutMessage = "Logged Out Successfully!"
            self.displayLogoutMessage = true
        } catch {
            self.logoutMessage = "Failed to log out"
            self.displayLogoutMessage = true
        }
        
    }
    
}
