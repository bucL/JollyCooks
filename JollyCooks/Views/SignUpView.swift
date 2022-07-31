//
//  SignUp.swift
//  JollyCooks
//
//  Created by Aaditya Shankar on 15/7/2022.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore


struct SignUpView: View {
    
    @StateObject var viewModelAuth = AuthViewModel()
    @StateObject var viewModelDB = FirestoreViewModel()
    
    var body: some View {
        
        VStack {
            
            Button {
                viewModelDB.test()
            } label: {
                Text("Check if Data Retrieved")
                    .padding()
                
            }
            
            
            
            
        }
        .background(.orange)
    }
    
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
