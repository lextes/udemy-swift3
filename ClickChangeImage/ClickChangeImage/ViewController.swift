//
//  ViewController.swift
//  ClickChangeImage
//
//  Created by Diseño on 16/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    var checked = false
   
    override func viewDidLoad() {
    
    func tick(sender: UIButton) {
        
        if checked {
            sender.setImage( UIImage(named:"fotoA.jpg"), for: .normal)
            checked = false
        } else {
            sender.setImage(UIImage(named:"fotoB.jpg"), for: .normal)
            checked = true
        }
    }
    }
}

