//
//  DataService.swift
//  Coder-Swag
//
//  Created by Manar Laith on 9/8/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS"    , imageName: "shirts.png"),
        Category(title: "HATS"      , imageName: "hats.png"),
        Category(title: "HOODIES"   , imageName: "hoodies.png"),
        Category(title: "DIGITALS"  , imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphics Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black"      , price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White"      , price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Hat SnapBack"   , price: "$20", imageName: "hat04.png"),
        
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey"    , price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red"     , price: "$32", imageName: "hoodie02"),
        Product(title: "Devslopes Hoodie Grey"         , price: "$32", imageName: "hoodie03"),
        Product(title: "Devslopes Hoodie Black"        , price: "$32", imageName: "hoodie04")
        
    ]
 
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black"    , price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red"      , price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey"          , price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black"        , price: "$18", imageName: "shirt05.png"),

    ]
    
    private let digitalGoods = [Product]()
    
    
    func getProducts(forCategoryTitle title : String) -> [Product]{
        switch title {
            case "SHIRTS":
                return getShirts()
            case "HATS":
                return getHats()
            case "HOODIES":
                return getHoodies()
            case "DIGITALS":
                return getDigitalGoods()
            default:
                 print("I'm in default case of the switch")
                return getShirts()
            
            
        }
        
    }
    
    
    func getCategories() -> [Category] {
        return categories
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
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
