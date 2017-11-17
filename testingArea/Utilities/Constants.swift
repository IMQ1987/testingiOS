//
//  Constants.swift
//  testingArea
//
//  Created by Quast, Malte on 16.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()
//renaming a type
//CompletionHandler is of this type
//rechte seite ist ein closure
//closure first class function be passed around in code
// we use a webrequest, done and now check if data passed or not

//Segues


//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


// URL Constants
let BASE_URL = "https://chatychat-malte.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
