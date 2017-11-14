//
//  CategoryVC.swift
//  testingArea
//
//  Created by Quast, Malte on 10.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//    @IBOutlet weak var Lbl: UILabel!
//    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var categoryTable: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        categoryTable?.dataSource = self
        categoryTable?.delegate = self
        
//        let cat = Category()
//        cat.title = "bla"
        
    }
    
//???
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
//     ???
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            
//            cell.imageView?.image = category.imageName
            return cell
        }else {
            return CategoryCell()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VC: GridVC = segue.destination as! GridVC
        
//         let VC = segue.destination as? GridVC
//        print(VC)
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
        VC.initProducts(category: sender as! Category)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category  = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "GridVC", sender: category)
    }

}
