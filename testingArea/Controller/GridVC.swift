//
//  GridVC.swift
//  testingArea
//
//  Created by Quast, Malte on 13.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import UIKit

class GridVC: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var ProductsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ProductsCollection.dataSource = self
        ProductsCollection.delegate = self
    }

    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }
    

}
