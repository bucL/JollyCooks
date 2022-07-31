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
    
    // Setting reference for users database.
    let docRef = db.collection("users")
    
    func test() {
        
    }
    
}
