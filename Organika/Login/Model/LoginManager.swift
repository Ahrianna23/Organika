//
//  LoginManager.swift
//  Organika
//
//  Created by Artem Vaniukov on 20.09.2020.
//  Copyright © 2020 Ahrianna Daniels. All rights reserved.
//

import Foundation

class LoginManager {
    
    // TODO: Connect to other Log In procedures
    enum State {
        case unregistered
        case loggedIn(User)
        case sessionExpired(User)
    }
    
    /// Hardcoded login and password to check completion handler
    static var createdEmail = "1@2.com"
    static var createdPassword = "123456"
    
    // TODO: Connect all login things to a database
    static func loginUser(with email: String, _ password: String, completion: @escaping (Bool) -> Void) {
        /// Change this to database response 
        if email == createdEmail && password == createdPassword {
            print(" - Login procedure launched for User: \(email)")
            completion(true)
        } else {
            completion(false)
        }
    }
    
    static func createUser(with email: String, _ password: String) {
        print(" - User creation procedure launched with Email: \(email) and Password: \(password)")
        createdEmail = email
        createdPassword = password
    }
    
    static func logoutUser() {
        print(" - Log out procedure launched")
    }
    
    static func forgotPassword(for email: String) {
        print(" - Password recovery procedure launched for: \(email)")
    }
    
    //TODO: Create email checker to match "xxx@xxx.xxx" scheme (?)
}
