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
    
    // TODO: Move to constants
    let loginButtonOriginalColor = UIColor.systemGray3.cgColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loginButton.layer.backgroundColor = loginButtonOriginalColor
    }

    func setupView() {
        usernameView.layer.cornerRadius = usernameView.frame.height / 2
        passwordView.layer.cornerRadius = passwordView.frame.height / 2
        loginButton.layer.cornerRadius = loginButton.frame.height / 4
        
        usernameView.dropShadow()
        passwordView.dropShadow()
        loginButton.dropShadow()
        
        // TODO: Create Constant for every important variable
        usernameTextField.attributedPlaceholder = NSAttributedString(string: "Username or Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        self.navigationController?.isNavigationBarHidden = true
        
        usernameTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    func clearTextFields() {
        usernameTextField.text = ""
        passwordTextField.text = ""
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if let username = usernameTextField.text, let password = passwordTextField.text {
            LoginManager.loginUser(with: username, password) { [weak self] isLoggedIn in
                if isLoggedIn {
                    self?.clearTextFields()
                    self?.performSegue(withIdentifier: "LoginToMain", sender: self)
                } else {
                    // TODO: Create Error Handler to display error messages.
                    print("Wrong email or password!")
                }
            }
        }
    }
    
    @objc func textFieldDidChange() {
        if usernameTextField.text != "" && passwordTextField.text != "" {
            // Think about color scheme
            loginButton.layer.backgroundColor = UIColor.green.cgColor
        } else {
            loginButton.layer.backgroundColor = loginButtonOriginalColor
        }
    }
    
}

