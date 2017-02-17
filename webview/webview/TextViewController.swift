//
//  TextViewController.swift
//  WebView
//
//  Created by Diseño on 14/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var myTextView2: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTextView.text = ""
        myTextView.font = UIFont.boldSystemFont(ofSize: 30)
        
        myTextView2.text = ""
        myTextView2.font = UIFont.boldSystemFont(ofSize: 30)
    }
}


