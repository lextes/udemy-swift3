//
//  ViewController.swift
//  animateButton
//
//  Created by Diseño on 13/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//
    
import UIKit
class ViewController: UIViewController {
        
        @IBOutlet weak var popUp: UIVisualEffectView!
        
        
        
        @IBOutlet weak var hanging: UISwitch!
        var originalCenter: CGPoint!
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            popUp.alpha = 0
            originalCenter = popUp.center
        }
        
   
        @IBAction func sync(_ sender: Any) {
            
            if hanging.isOn{
                
                popUp.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
                popUp.center.y = popUp.center.y - (popUp.frame.height / 2)
                popUp.transform = CGAffineTransform(rotationAngle: 1.8)
                
            }else{
                popUp.transform = CGAffineTransform(scaleX: 0.3, y: 2)
            }
            
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.3 , initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
                
                self.popUp.transform = .identity
            }) {(success) in
                
                self.popUp.center = self.originalCenter
                self.popUp.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                
            }
            popUp.alpha = 1
            
        }
        
        @IBAction func ok(_ sender: Any) {
            popUp.alpha = 0
            
        }
        
    }

   


