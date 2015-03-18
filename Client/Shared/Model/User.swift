//
//  User.swift
//  Tracks
//
//  Created by Justin Rushing on 3/17/15.
//  Copyright © 2015 Justin Rushing. All rights reserved.
//

import Foundation

class User {
    // MARK: Non-Optional vars
    var id: Int
    var name: String
    var email: String
    
    
    init(id: Int, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
}