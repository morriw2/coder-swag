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
    
    private let hats = [
        Product(imageName: "hat-01.png", title: "Devslopes Logo Graphic Beanie", price: "$18"),
        Product(imageName: "hat-02.png", title: "Devslopes Logo Hat Black", price: "$22"),
        Product(imageName: "hat-03.png", title: "Devslopes Logo Hat White", price: "$22"),
        Product(imageName: "hat-04.png", title: "Devslopes Logo Snapback", price: "$20")
    ]
    
    private let hoodies = [
        Product(imageName: "hoodie-01.png", title: "Devslopes Logo Hoodie Grey", price: "$32"),
        Product(imageName: "hoodie-02.png", title: "Devslopes Logo Hoodie Red", price: "$32"),
        Product(imageName: "hoodie-03.png", title: "Devslopes Hoodie Grey", price: "$32"),
        Product(imageName: "hoodie-04.png", title: "Devslopes Hoodie Black", price: "$32")
    ]
    
    private let shirts = [
        Product(imageName: "shirt-01.png", title: "Devslopes Logo Shirt Black", price: "$18"),
        Product(imageName: "shirt-02.png", title: "Devslopes Badge Shirt Light Grey", price: "$18"),
        Product(imageName: "shirt-03.png", title: "Devslopes Logo Shirt Red", price: "$18"),
        Product(imageName: "shirt-04.png", title: "Hustle Delegate Grey", price: "$18"),
        Product(imageName: "shirt-05.png", title: "Kickflip Studios Black", price: "$18")
    ]
    
    private let digitalGoods = [Product]()
        
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategory title: String) -> [Product] {
        
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL"
            return getDigitalGoods()
        default:
            return getShirts()
        }
        
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
}















