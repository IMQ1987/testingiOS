//
//  CategoryCell.swift
//  testingArea
//
//  Created by Quast, Malte on 10.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import UIKit
//definiert die einzelne Zelle in TableView
//updateviews notwendig um  bilder neu zu laden bei scrollen???

class CategoryCell: UITableViewCell {
@IBOutlet weak var categoryImage: UIImageView!
@IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text  = category.title
    }
}
