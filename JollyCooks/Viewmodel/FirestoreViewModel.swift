//
//  FirestoreViewModel.swift
//  JollyCooks
//
//  Created by Aaditya Shankar on 31/7/2022.
//

/*
 ===============================================
 ====== Importing libraries for Firestore ======
 ===============================================
 */

import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift

// Setting reference for db to avoid typing very very long statements. Also cause firebase put this in the intialisation code here
// https://firebase.google.com/docs/firestore/quickstart#ios+
let db = Firestore.firestore()

class FirestoreViewModel: ObservableObject {
    
    @Published var firstName = ""
    
    // Setting reference for users database.
    let docRef = db.collection("users").document("test@gmail.com")
    
    func test() {
        // Sequence from https://stackoverflow.com/questions/48312485/how-to-access-a-specific-field-from-cloud-firestore-firebase-in-swift
        // Allowing for retrieval of specific document from firestore database collection.
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                self.firstName = document.get("firstname") as! String
            } else {
                print("Document does not exist")
            }
        }
        
        print(firstName)
    }
    
}
