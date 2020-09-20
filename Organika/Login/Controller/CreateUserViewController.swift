//
//  CreateUserViewController.swift
//  Organika
//
//  Created by Artem Vaniukov on 20.09.2020.
//  Copyright © 2020 Ahrianna Daniels. All rights reserved.
//

import UIKit

class CreateUserViewController: UIViewController {

    @IBOutlet weak var usernameView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var secondPasswordView: UIView!
    
    @IBOutlet weak var createButton: UIButton!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var secondPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    func setupView() {
        usernameView.layer.cornerRadius = usernameView.frame.height / 2
        passwordView.layer.cornerRadius = passwordView.frame.height / 2
        secondPasswordView.layer.cornerRadius = secondPasswordView.frame.height / 2
        createButton.layer.cornerRadius = createButton.frame.height / 4
        
        usernameView.dropShadow()
        passwordView.dropShadow()
        secondPasswordView.dropShadow()
        createButton.dropShadow()
        
        // TODO: Create Constant for every important variable
        usernameTextField.attributedPlaceholder = NSAttributedString(string: "Username or Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        secondPasswordTextField.attributedPlaceholder = NSAttributedString(string: "Repeat password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    @IBAction func createButtonPressed(_ sender: UIButton) {
        if let email = usernameTextField.text, let password = passwordTextField.text, let secondPassword = secondPasswordTextField.text {
            if !email.isEmpty && !password.isEmpty && password == secondPassword {
                LoginManager.createUser(with: email, password: password)
                
                // TODO: Go to confirmation screen
                /// Should we generate first password for the user and send it to the email?
                /// And then ask user to change password in Settings
                
            }
        }
    }
    
}
