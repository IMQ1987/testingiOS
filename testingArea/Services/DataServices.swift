//
//  DataServices.swift
//  testingArea
//
//  Created by Quast, Malte on 10.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import Foundation
//hier werden die daten hinterlegt mittels array und verweis auf die jeweiligen bilder
//mit getCategories erhält man eine function die die categories zurückgibt in form des Objektes Category


class DataService {
    static let instance = DataService()
    
//    Dictionary erstellen wie ein Object Array (object wird definiert durch model und array ist [] mit komma separiert
//    danach ist func wichtig, die den array zurückgibt mit return
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie",  imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black",  imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White",  imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback",  imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red",  imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey",  imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", imageName: "hoodie04.png"),
        
        ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black",  imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey",  imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red",  imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey",  imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black",  imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
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
    
    func shuffledCat() -> [Category]{
        return categories.shuffled()
    }
}

//Erweiterung zum Shufflen von Array!!!

extension MutableCollection {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        print(result)
        return result
    }
}
