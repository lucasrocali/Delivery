//
//  Category.swift
//  Delivery
//
//  Created by Lucas Rocali on 1/12/16.
//  Copyright © 2016 Lucas Rocali. All rights reserved.
//

import Foundation

class Category {
    var name : String
    var items : [Item]
    
    init(name : String, items : [Item]) {
        self.name = name
        self.items = items
    }
}