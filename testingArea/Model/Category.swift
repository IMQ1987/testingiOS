//
//  Category.swift
//  testingArea
//
//  Created by Quast, Malte on 10.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import Foundation
//einfache Klasse zum erstellen von neuen Objekten
//init notwendig für die initialisierung
struct Category{
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
