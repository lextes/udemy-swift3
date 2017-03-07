//
//  ViewController.swift
//  insertGift
//
//  Created by Diseño on 07/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var GifView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        GifView.loadGif(name: "bruhsing4")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

                                                                                                                                                                
