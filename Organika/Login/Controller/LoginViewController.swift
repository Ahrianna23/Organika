//
//  LoginViewController.swift
//  Organika
//
//  Created by Ahrianna Daniels on 9/17/20.
//  Copyright © 2020 Ahrianna Daniels. All rights reserved.
//

import UIKit

@IBDesignable
class LoginViewController: UIViewController {

    @IBOutlet weak var backgroundView: UILabel!
    
    @IBOutlet weak var usernameView: UIView!
    @IBOutlet weak var passwordView: UIView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    func setupView() {
        usernameView.layer.cornerRadius = usernameView.frame.height / 2
        passwordView.layer.cornerRadius = passwordView.frame.height / 2
        loginButton.layer.cornerRadius = loginButton.frame.height / 4
        
        usernameView.dropShadow()
        passwordView.dropShadow()
        loginButton.dropShadow()
        
        // TODO: Create Constant for every important variable
        usernameTextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if let username = usernameTextField.text, let password = passwordTextField.text {
            LoginManager.loginUser(with: username, password: password)
        }
    }
    
}

