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
    
    var viewModelAuth = AuthViewModel()
    
    @Published var firstName = ""
    @Published var lastName = ""
    
    // Setting reference for users database.
    
    
    /*
     ===================================================================
     ====== Function for retrieving names from Firestore Database ======
     ===================================================================
     */
    func getInfo() {
        /*
        Letting the reference for the document in the collection called "users" be the users email. This ensures that there are no duplicate users as each
        email can only have one account therefore making them unique. This will eventaully later on duirng the maintaing stage need to be tied to a delete function which
        deletes user data if they chose to delete their account.
         */
        let docRef = db.collection("users").document(viewModelAuth.email)
        
        // Sequence from https://stackoverflow.com/questions/48312485/how-to-access-a-specific-field-from-cloud-firestore-firebase-in-swift
        // Allowing for retrieval of specific document from firestore database collection.
        docRef.getDocument { (document, error) in                           // Getting the actual document from firestore that stores the users data.
            if let document = document, document.exists {                   // Checking if the document actually exists.
                self.firstName = document.get("firstname") as! String       // letting the "firstName" variable = the firstname of the user as stored on the database.
            } else {
                print("Document does not exist")                            // Display if error occurs.
            }
        }

        docRef.getDocument{ (document, error) in
            if let document = document, document.exists {                   //Same function as above for this block except it retrieves the lastname instead of
                self.lastName = document.get("lastname") as! String         // the firstname. 
            } else {
                print("Document does not exist")
            }
        }
        
        print(firstName, lastName)
    }
    
    func addUser() {
        let docRef = db.collection("users").document(viewModelAuth.newEmail)
        
        docRef.setData([
            "firstname": viewModelAuth.firstName,
            "lastname" : viewModelAuth.lastName
        ]) { err in
            if let err = err {
                print("Error entering new user into database")
            } else {
                print("New User added Successfully")
            }
        }
    }
    
}
