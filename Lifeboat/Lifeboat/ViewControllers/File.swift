//
//  File.swift
//  Lifeboat
//
//  Created by Kav Interactive on 10/10/19.
//  Copyright © 2019 Kav Interactive. All rights reserved.
//

import Foundation
import UIKit
class AlertClass: NSObject {
    static let sharedInstance = AlertClass()
    //Show alert
    func alert(view: UIViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: { action in
        })
        alert.addAction(defaultAction)
        DispatchQueue.main.async(execute: {
            view.present(alert, animated: true)
        })
    }
    
    private override init() {
    }
}
struct alertMessages {
    static let email = "Enter email address"
    static let password = "Enter password"
    static let alertTitle = "Kishor-Task"
    static let fullName = "Enter full name"
    static let mobileNumber = "Enter vaild mobile number"
    static let emailValidmsg = "Enter valid email address"
    static let name = "Enter valid name"
    static let companyname = "Enter valid companyname"
    static let conformpassword = "Enter validpassword"
    static let pswdchanges = "password not matched"
}
