//
//  AuthService.swift
//  testingArea
//
//  Created by Quast, Malte on 16.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard
//    usage for strings etc
//    most simple way to safe data
//    dont use it for heavy data
//    not very safe so never save pw
    var isLoggedIn : Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get {
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            defaults.set(newValue,forKey: TOKEN_KEY)
        }
    }
    
    var userEmail: String {
        get {
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        set {
            defaults.set(newValue,forKey: USER_EMAIL)
        }
    }
    
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler ){
        
        let lowerCaseEmail = email.lowercased()
        
        let header = [
            "Content-Type": "application/json; charset = utf-8"
        ]
        let body : [String: Any] = [
                "email": lowerCaseEmail,
                "password": password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body , encoding: JSONEncoding.default, headers: header).responseString{ (response) in
            
            if response.result.error == nil {
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
            
        }
    }
    
    }
    
    
    
    
