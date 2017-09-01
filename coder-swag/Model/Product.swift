//
//  Product.swift
//  coder-swag
//
//  Created by Billy Morris on 8/31/17.
//  Copyright © 2017 Billy Morris. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var imageName: String
    private(set) public var title: String
    private(set) public var price: String
    
    init(imageName: String, title: String, price: String) {
        self.imageName = imageName
        self.title = title
        self.price = price
        
    }
}
