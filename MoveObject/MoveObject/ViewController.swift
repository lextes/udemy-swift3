//
//  ViewController.swift
//  MoveObject
//
//  Created by Diseño on 21/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var location = CGPoint(x: 0, y: 0)
    
    
    @IBOutlet weak var Person : UIImageView!
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var touch: UITouch! = touches as UITouch
        
        location = touch.location(in: self.view)
        Person.center = location
        
        
    }
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch! = touches as UITouch
        
        location = touch.location(in: self.view)
        Person.center = location
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        Person.center = CGPointMake(160, 330)
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

