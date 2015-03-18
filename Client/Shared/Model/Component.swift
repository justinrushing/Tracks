//
//  Component.swift
//  Tracks
//
//  Created by Justin Rushing on 3/17/15.
//  Copyright © 2015 Justin Rushing. All rights reserved.
//

import Foundation

class Component {
    // MARK: Non-Optional vars
    var id: Int
    var name: String
    var version: String
    
    init(id: Int, name: String, version: String) {
        self.id = id
        self.name = name
        self.version = version
    }
}