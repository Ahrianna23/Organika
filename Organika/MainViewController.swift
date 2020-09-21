//
//  MainViewController.swift
//  Organika
//
//  Created by Artem Vaniukov on 22.09.2020.
//  Copyright © 2020 Ahrianna Daniels. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        LoginManager.logoutUser()
        navigationController?.popToRootViewController(animated: true)
    }
   
}
