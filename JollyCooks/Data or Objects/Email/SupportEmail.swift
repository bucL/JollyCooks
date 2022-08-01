//
//  SupportEmail.swift
//  JollyCooks
//
//  Created by Phillip Shen on 31/7/2022.
//


import UIKit
import SwiftUI

//struct for what a basic support email will look like
struct SupportEmail {
    let toAddress: String
    let subject: String
    let messageHeader: String
    var data: Data?
    var body: String {"""
        Application Name: \(Bundle.main.displayName)
        iOS: \(UIDevice.current.systemVersion)
        Device Model: \(UIDevice.current.modelName)
        Appp Version: \(Bundle.main.appVersion)
        App Build: \(Bundle.main.appBuild)
        \(messageHeader)
    --------------------------------------
    """
    } //var body is all the information that will be printed at the top, the dashes is to indicate to the user to type below the dash the description of their problem.
    
    
    //OpenURLAction which will take the user to their mail app to sender which is defined by the var toAddress. 
    func send(openURL: OpenURLAction) {
        let urlString = "mailto:\(toAddress)?subject=\(subject.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? "")&body=\(body.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? "")"
        guard let url = URL(string: urlString) else { return }
        openURL(url) { accepted in
            if !accepted {
                print("""
                This device does not support email please contact us at sddgroupc@gmail.com
                \(body)
                """
                )
            }
        }
    }
    
}

