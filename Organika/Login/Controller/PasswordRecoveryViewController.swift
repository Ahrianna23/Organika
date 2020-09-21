//
//  PasswordRecoveryViewController.swift
//  Organika
//
//  Created by Artem Vaniukov on 20.09.2020.
//  Copyright © 2020 Ahrianna Daniels. All rights reserved.
//

import UIKit

class PasswordRecoveryViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func resetPasswordButtonTapped(_ sender: UIButton) {
        if let email = emailTextField.text {
            if !email.isEmpty {
                LoginManager.forgotPassword(for: email)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
