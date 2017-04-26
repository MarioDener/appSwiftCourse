//
//  RegisterViewController.swift
//  Platzigram
//
//  Created by Mario Sanchez on 26/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit
class RegisterViewController: UITableViewController {
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var singupButton: UIButton!
    
    var userName : String?
    var user: String?
    var email : String?
    var password : String?
    
    
    @IBAction func textFieldValueChanged(_ sender: UITextField) {
        switch sender {
        case userTextField:
            user = userTextField.text
        case nameTextField:
            userName = nameTextField.text
        case emailTextField:
            email = emailTextField.text
        case passwordTextField:
            password = passwordTextField.text
        default: break
        }
        if let userNameOptional = userName, let userOptional = user, let emailOptional = email, let passwordOptional = password, !userNameOptional.isEmpty && !userOptional.isEmpty && !emailOptional.isEmpty && !passwordOptional.isEmpty{
            singupButton.isEnabled = true
        }
        else{
            singupButton.isEnabled = false
        }
    }
    @IBAction func signupButtonPressed(_ sender: UIButton) {
    }
}
