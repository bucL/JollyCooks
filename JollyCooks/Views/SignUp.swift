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


struct SignUp: View {
    
    @StateObject var viewModel = AuthViewModel()
    
    var body: some View {
        
        VStack {
            
            TextField("First Name", text: $viewModel.firstName)
                .foregroundColor(Color.white)
                .frame(width: 450, height: 50)
            
            
            
            
        }
        .background(.orange)
    }
    
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
