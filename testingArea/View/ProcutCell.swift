//
//  ProcutCell.swift
//  testingArea
//
//  Created by Quast, Malte on 10.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
    }
}
