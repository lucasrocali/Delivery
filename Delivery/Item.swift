//
//  Item.swift
//  Delivery
//
//  Created by Lucas Rocali on 1/12/16.
//  Copyright © 2016 Lucas Rocali. All rights reserved.
//

import Foundation

class Item {
    var name : String
    var description : String
    var value : Float
    
    init() {
        self.name = ""
        self.description = ""
        self.value = 0
    }
    
    init(name : String, description : String, value : Float) {
        self.name = name
        self.description = description
        self.value = value
    }
}