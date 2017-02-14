//
//  ViewController.swift
//  VARIOS
//
//  Created by Diseño on 14/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableView {

    @IBOutlet weak var myTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTextView.text = ""
        myTextView.backgroundColor = UIColor(red: 212/255, green: 212/255, blue: 212/255, alpha: 1)
        myTextView.font = UIFont.boldSystemFont(ofSize: 25)    
        }
}

