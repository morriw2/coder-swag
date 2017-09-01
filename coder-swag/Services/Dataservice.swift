//
//  Dataservice.swift
//  coder-swag
//
//  Created by Billy Morris on 8/31/17.
//  Copyright © 2017 Billy Morris. All rights reserved.
//

import Foundation

class Dataservice {
    
    static let instance = Dataservice()
    
    private let categories = [
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
