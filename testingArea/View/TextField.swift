//
//  TextField.swift
//  testingArea
//
//  Created by Quast, Malte on 09.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import UIKit

class TextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 0.249812714) // color literal auswählen und farbe eintragen
        layer.cornerRadius = 5.0
        textAlignment = .center
    
        if placeholder == nil {
            placeholder = " " // wichtig hier ein leerzeichen zu setzen
        }
        
        //        alternative:
        //        if let p = placeholder{}
        
//        if bedingung ist ein safety check, so dass placeholder nicht komplett leer ist, sondern "" --> da placerholder! implicit optional ist
        
        let place = NSAttributedString(string: placeholder! , attributes: [.foregroundColor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)])
            attributedPlaceholder = place
//        überschreiben des kompletten placeholders mit place um text an eigene bedürfnisse anzupassen
        textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        }
    }


