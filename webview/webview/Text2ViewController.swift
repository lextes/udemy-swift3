//
//  Text2ViewController.swift
//  First Unit
//
//  Created by Diseño on 21/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class Text2ViewController: UIViewController {
    
    
    @IBOutlet weak var myTextViewA: UITextView!
    @IBOutlet weak var myTextViewB: UITextView!
    @IBOutlet weak var myTextViewC: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTextViewA.text = ""
        myTextViewA.font = UIFont.boldSystemFont(ofSize: 30)
        
        myTextViewB.text = ""
        myTextViewB.font = UIFont.boldSystemFont(ofSize: 30)
        
        myTextViewC.text = ""
        myTextViewC.font = UIFont.boldSystemFont(ofSize: 30)
    }
}

