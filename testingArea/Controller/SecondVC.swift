//
//  SecondVC.swift
//  testingArea
//
//  Created by Quast, Malte on 09.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
//    definition der variablen um textfieldwert aus prepare zu bekommen
    var labelText = ""
//outlet notwendig um labeltext variable in namelabel zu schreiben (aber erst in viewdidload)
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func test(_ sender: Any) {
        
        let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
//    var buttons = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = labelText
//        var hoehe = view.frame.size.height
//        var breite = view.frame.size.width
//        print (breite)
        
//        weiteren Button einfügen aus swift heraus!!
//        button hinzufügen nur in viewdidload möglich
        
//        let newBtn = UIButton(frame: CGRect(x:0 ,y:(view.frame.size.height/2-60/2) ,width: (view.frame.size.width/2), height: 60))
//        newBtn.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
//        newBtn.setTitle("calculate", for: .normal)
//        newBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//        buttons.append(newBtn)
//        buttons.append(newBtn)
//        buttons.append(newBtn)

        let breite = view.frame.size.width/3
        let laenge = view.frame.size.height/4
        
        
        let categories = [
            Category(title: "SHIRTS", imageName: "shirts.png"),
            Category(title: "HOODIES", imageName: "hoodies.png"),
            Category(title: "HATS", imageName: "hats.png"),
            Category(title: "DIGITAL", imageName: "digital.png")
        ]
        
        var array123 = ["shirts","shirts.png","hoodies","hats.png"]
        array123 = array123.shuffled()
        
        var counter: Int  = 1
        
        for i in 0...3  {
            for j in 0...4 {
//            newBtn.frame.origin.y += 100
                let newBtn = UIButton(frame: CGRect(
                    x: CGFloat(i) * CGFloat(breite),
                    y: CGFloat(j) * CGFloat(laenge),
                    width: (view.frame.size.width/3),
                    height: 60)
                )
                
                if array123[i].contains(".png"){
//                if counter % 2 == 1 {
//                    if j%2 == 0 && i%2 == 0 {
                        let btnImage = UIImage(named: array123[i] )
                        newBtn.setImage(btnImage , for: UIControlState.normal)
//                    print(btnImage)
//                    newBtn.tag as String = array123[i]
//                    }
                
                } else {
                    newBtn.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
                    newBtn.setTitle(array123[i], for: .normal)
                    newBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//                    newBtn.tag as String = array123[i]

                }
                
                
                newBtn.addTarget(self, action: #selector(SecondVC.calculate), for: .touchUpInside)
                self.view.addSubview(newBtn)
            }
            counter += 1
        }
        
//        DataService.instance.shuffledCat()
    
    }
    
    @objc func calculate(sender : UIButton!){
//        performSegue(withIdentifier: "lastSegue", sender: self)
        let button = sender as UIButton
        print ("button \(button)")
//        print("button \(button.imageName)")
//        print("made it")
//        nameLabel.text = "tach"
    }
}
