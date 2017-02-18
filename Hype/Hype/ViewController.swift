//
//  ViewController.swift
//  Hype
//
//  Created by Diseño on 17/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var webView: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let localFilePath = Bundle.main.url(forResource: "animated1", withExtension: "html");
        let myRequest = NSURLRequest(url: localFilePath!);
        
        webView.loadRequest(myRequest as URLRequest);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

