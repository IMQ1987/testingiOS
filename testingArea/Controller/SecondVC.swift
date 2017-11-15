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
        
        
        
//        let breite = view.frame.size.width/3
//        let laenge = view.frame.size.height/4
        
        
//        let categories = [
//            Category(title: "SHIRTS", imageName: "shirts.png"),
//            Category(title: "HOODIES", imageName: "hoodies.png"),
//            Category(title: "HATS", imageName: "hats.png"),
//            Category(title: "DIGITAL", imageName: "digital.png")
//        ]
        
        var array123 = ["shirt01","shirt01.png","hoodie01","hat01.png","digital","digital.png","hat01","hoodie01.png"]
//        array123 = array123.shuffled()
        
        var counter: Int  = 1
        var x_axis:CGFloat = 50.0
        var y_axis:CGFloat = 50.0
        
        for _ in 0...2  {
            for _ in 0...2 {
                //            newBtn.frame.origin.y += 100
                //                let newBtn = UIButton(frame: CGRect(
                let newBtn = UIButton(frame: CGRect(
                    x: x_axis,
                    y: y_axis,
                    width: 100,
                    height: 100)
                )
                    x_axis += 110
                    print(counter-1)
                if array123[counter-1].contains(".png") {
                    //                if counter % 2 == 1 {
                    //                    if j%2 == 0 && i%2 == 0 {
                    let btnImage = UIImage(named: array123[counter-1] )
                    newBtn.setImage(btnImage , for: UIControlState.normal)
                    newBtn.setTitle(array123[counter-1], for: .normal)
                    newBtn.titleLabel!.isHidden = true

                } else {
                    newBtn.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
                    newBtn.setTitle(array123[(counter-1)], for: .normal)
                    newBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
                    //                    newBtn.tag as String = array123[i]
                }
                
                if counter == array123.count {
                    print (counter)
                    print (array123.count)
                    counter += 1
                    newBtn.addTarget(self, action: #selector(SecondVC.calculate), for: .touchUpInside)
                    self.view.addSubview(newBtn)
                    return
                }else{
                    counter += 1
                }
            
                newBtn.addTarget(self, action: #selector(SecondVC.calculate), for: .touchUpInside)
                self.view.addSubview(newBtn)
                
            }
            x_axis = 50.0
            y_axis += 110.0
        }
        
        //        DataService.instance.shuffledCat()
        
    }
    var title1:String?
    var title2: String?
    
    @objc func calculate(sender : UIButton){

        if sender.currentImage != nil  && title1 == nil {
             //        case: erster klick bild
            title1 = sender.currentTitle!.components(separatedBy: ".").first
            title2 = "bild"
        } else if sender.currentImage == nil  && title1 == nil {
             //        case erster klick text
            title1 = sender.currentTitle!.components(separatedBy: ".").first
            title2 = "text"
         //       zweiter klick
        }else if sender.currentImage != nil && title2=="bild"{
        //        bild und bild
            print("honk, bild und bild passt nicht")
            title1 = nil
            title2 = nil
        } else if sender.currentImage == nil && title2 == "text" {
            //        text und text
            print("honk, text und text passt nicht")
            title1 = nil
            title2 = nil
        } else {
            var title3 = sender.currentTitle!.components(separatedBy: ".").first
            if title1 == title3 {
                //        bild und text richtig
                print("richtig")
                title1 = nil
                title2 = nil
                title3 = nil
            }else {
            //        bild und text falsch
                title1 = nil
                title2 = nil
                title3 = nil
                print ("leider falsch")
            }
        
        }
    }

}

