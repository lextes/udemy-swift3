//
//  ViewController.swift
//  WebView2
//
//  Created by Diseño on 06/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var WebView: UIWebView!

override func viewDidLoad() {
        super.viewDidLoad()
        
        // Simple html
        
        //WebView.loadHTMLString("<html><body> <h1> Hello World !!!! </h1></body></html>", baseURL: nil)
    
        let ecoURL = URL(string: "https://www.apple.com")
        let ecoURLRequest = URLRequest(url: ecoURL!)
        WebView.loadRequest(ecoURLRequest)

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

