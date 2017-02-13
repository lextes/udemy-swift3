//
//  ViewController.swift
//  animateButton
//
//  Created by Diseño on 13/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
class AnimatedButtonViewController: UIViewController {
    
    
 
    @IBOutlet weak var popUp: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUp.alpha = 0
        
    }
    
    
  
    @IBAction func sync(_ sender: Any) {
    
        popUp.transform = CGAffineTransform(scaleX: 0.3, y: 2)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.3 , initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            
            self.popUp.transform = .identity
        }) {(success) in
    }
        popUp.alpha = 1
        
    }
    
  
    @IBAction func ok(_ sender: Any) {
         popUp.alpha = 0
    }
}
