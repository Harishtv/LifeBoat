//
//  ViewController.swift
//  Lifeboat
//
//  Created by Kav Interactive on 18/09/19.
//  Copyright © 2019 Kav Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTextField:UITextField!
    @IBOutlet var passWordTextField:UITextField!
    @IBOutlet var loginButton:UIButton!
    var URLSessionObj:URLSession!
    var URLRequestObj:URLRequest!
    var dataTaskObj:URLSessionDataTask!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func initUI(){
        self.loginButton.clipsToBounds = true
        self.loginButton.layer.cornerRadius = 9
        self.emailTextField.clipsToBounds = true
        self.emailTextField.layer.borderWidth = 1
        self.emailTextField.layer.borderColor = UIColor.gray.cgColor
        self.emailTextField.layer.cornerRadius = 9
        self.passWordTextField.clipsToBounds = true
        self.passWordTextField.layer.borderWidth = 1
        self.passWordTextField.layer.borderColor = UIColor.gray.cgColor
        self.passWordTextField.layer.cornerRadius = 9
    }

    @IBAction private func loginAction( _ sender: UIButton){
        let email = self.emailTextField.text ?? ""
        let password = self.passWordTextField.text ?? ""
        let params = ["username": email,
                      "plainTextPassword": password]
        
        webServicePostRequest(baseString: "http://172.20.10.2:9093/admin/login", parameters: params) { json, error in
            if let error = error {
                debugPrint("Error occuring while fetching provider.service :disappointed: | \(error.localizedDescription)")
            }else {
                if let json = json {
                    print("json ========== \(json)success")
                }else {
                    debugPrint("invalid json :disappointed:")
                }

            }

        }
        
        ///////
         if (textFieldValidations()){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(vc, animated: true)
        }
   }
    func textFieldValidations() -> Bool {
        var validation = true
        if emailTextField.text == "" {
            AlertClass.sharedInstance.alert(view: self, title: alertMessages.alertTitle, message: alertMessages.email)
            validation =  false
        }else if !(emailTextField.text!.isValidEmail()){
            AlertClass.sharedInstance.alert(view: self, title: alertMessages.alertTitle, message: alertMessages.emailValidmsg)
            validation = false
            
        }else if passWordTextField.text == "" {
            AlertClass.sharedInstance.alert(view: self, title: alertMessages.alertTitle, message: alertMessages.password)
            validation = false
        }
        return validation
        
    }
}
