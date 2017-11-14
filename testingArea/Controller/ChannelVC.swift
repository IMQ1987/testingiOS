//
//  ChannelVC.swift
//  testingArea
//
//  Created by Quast, Malte on 13.11.17.
//  Copyright © 2017 Quast, Malte. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//side menu vergrößern oder verkleinern
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
