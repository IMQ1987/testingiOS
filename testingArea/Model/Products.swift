//
//  Products.swift
//  testingArea
//
//  Created by Quast, Malte on 13.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String,  imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}


//struct category {
//    private (set) public var title: String
//    private (set) public var imageName: String
//
//    init(title: String, imageName: String){
//        self.title = title
//        self.imageName = imageName
//    }

//}

