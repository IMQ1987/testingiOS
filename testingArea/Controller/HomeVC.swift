//
//  ViewController.swift
//  testingArea
//
//  Created by Quast, Malte on 09.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var MenuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MenuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

  

    @IBAction func pressedBtn(_ sender: Any) {
        if textName.text != ""  {
            performSegue(withIdentifier: "moveSegue", sender: self)
            
        }else{
            let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
            
    }
    
//    darf nicht in fkt eingebettet sein & muss override sein
//Übergabe der Variable an anderen Controller /dieser ist nach as! definiert
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destView: SecondVC = segue.destination as! SecondVC
        
        // erstellen einer variablen mit der klasse SecondViewController
        //                danach wird das Ziel von homeVC auf SecondVC gestellt
        
        destView.labelText = textName.text!
        // links steht der die Variable:String als Label und wir im viewdidload übergeben label
        //                auf der rechten Seite steht das textfeld mit text und wird übergeben an den String im zweiten Controller
    }

    @IBAction func backBtn(unwind: UIStoryboardSegue) {
    }
    
//    @IBAction func menu(sender: any){
//
//    }
}
