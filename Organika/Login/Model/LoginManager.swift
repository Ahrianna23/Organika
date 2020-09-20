//
//  LoginManager.swift
//  Organika
//
//  Created by Artem Vaniukov on 20.09.2020.
//  Copyright © 2020 Ahrianna Daniels. All rights reserved.
//

import Foundation

class LoginManager {
    
    // TODO: Connect all login things to a database
    static func loginUser(with email: String, password: String) {
        print("login procedure launched for User: \(email)")
    }
    
    static func createUser(with email: String, password: String) {
        print("User creation procedure launched with Email: \(email) and Password: \(password)")
    }
    
    static func logoutUser() {
        print("log out procedure launched")
    }
    
    static func forgotPassword(for email: String) {
        print("forgot password procedure launched")
    }
}
