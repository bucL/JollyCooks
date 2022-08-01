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
    
    /*
     ==========================================
     ====== Variables for logIn function ======
     ==========================================
     */
    
    @Published var email = ""
    @Published var password = ""
    @Published var loginSuccess = false
    @Published var displayFailedLogin = false
    @Published var failedLoginMessage = ""
    
    /*
     ===========================================
     ====== Variables for SignUp function ======
     ===========================================
     */
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var newEmail = ""
    @Published var newPassword = ""
    @Published var verifyPassword = ""
    @Published var accountSuccess = false
    @Published var failedRegister = false
    @Published var failedRegisterMessage = ""
    
    /*
     ===========================================
     ====== Variables for logOut function ======
     ===========================================
     */
    
    @Published var logoutMessage = ""
    @Published var displayLogoutMessage = false
    
    /*
     =================================================================================
     ===== Log In function communinicating with Firebase to allow user to login. =====
     =================================================================================
     */
    
    
    func login() {
        Auth.auth().signIn(withEmail: self.email, password: self.password) { result, error in     // Firebase login function
            if error != nil {                                                                     // Checking if the login with firebase function returns an error
                self.failedLoginMessage = error!.localizedDescription                             // Updating the alert message to display the specific error encountered by the user
                self.displayFailedLogin = true                                                    // Updating variable for the alert to activate when the error is encountered.
            } else {
                self.loginSuccess = true                                                          // Updating variable determining if the suer is successfully logged in and navigating to the homepage.
            }
        }
    }
    
    /*
     ==============================================================================================
     ===== Sign up function communinicating with Firebase to allow user to create an account. =====
     ==============================================================================================
     */
    func signUp() {
        Auth.auth().createUser(withEmail: newEmail, password: newPassword) { result, error in    // Firebase signup function.
            if error != nil {                                                                    // Checking if the signup function
                self.failedRegisterMessage = error!.localizedDescription                         // Updating Error Message to be displayed by alert in SignUpView.swift
                self.failedRegister = true                                                       // Updating the variable to display the alert with the error message.
            } else {
                self.accountSuccess = true                                                       // Updating variable to display alert with success message directing user to go back and sign in with main page.
            }
        }
     
    
    }
    
    
    
    // ====================================================================================
    // ===== Log out function communinicating with Firebase to allow user to log out. =====
    // ====================================================================================
    
    // Altered logout function from https://stackoverflow.com/questions/37943616/firebase-sign-out-not-working-in-swift and https://firebase.google.com/docs/auth/ios/password-auth

    func logOut() {
        do {
            try Auth.auth().signOut()                                                            // Firebase logout function.
            self.loginSuccess = false                                                            // Setting the user's current login status to false after successful operation of the function.
            self.logoutMessage = "Logged Out Successfully!"                                      // Updating the alert message to display "Logged Out Successfully"
            self.displayLogoutMessage = true                                                     // Updating variable to display the alert.
        } catch {
            self.logoutMessage = "Failed to log out"                                             // Updating alert message to display "failed to log out" message.
            self.displayLogoutMessage = true                                                     // Updating variable to display alert
        }
        
    }
    
}
