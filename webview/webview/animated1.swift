//
//  animated1.swift
//  First Unit
//
//  Created by Diseño on 18/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class animated1: UIViewController {
    
    
    @IBOutlet var webView: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let localFilePath = Bundle.main.url(forResource: "animated3", withExtension: "html");
        let myRequest = NSURLRequest(url: localFilePath!);
        
        webView.loadRequest(myRequest as URLRequest);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
