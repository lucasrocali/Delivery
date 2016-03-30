//
//  DataManager.swift
//  Delivery
//
//  Created by Lucas Rocali on 1/12/16.
//  Copyright © 2016 Lucas Rocali. All rights reserved.
//
/*
13/01/16 - 20:20 - 00:20

*/

import Foundation

class DataManager {
    
    var categories : [Category] = []
    
    init(){
        for i in 0...5{
            var items : [Item] = []
            for j in 0...8 {
                let item = Item(name: "Item \(i)\(j)",description: "Description \(i)\(j)",value: (Float)(i*j))
                items.append(item)
            }
            let category = Category(name: "Category \(i)", items: items)
            self.categories.append(category)
            
        }
    }
}