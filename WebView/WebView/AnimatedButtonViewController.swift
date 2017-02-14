//
//  AnimatedButtonViewController.swift
//  animateButton
//
//  Created by Diseño on 13/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation

class AnimatedButtonViewController: UIViewController {

    
   // Selector image 1
    
    @IBOutlet weak var popUp: UIVisualEffectView!
    
    // declare var sound
    var btnSound: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUp.alpha = 0
        
        //path for sound
        
        let path = Bundle.main.path(forResource: "boing", ofType: "mp3")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
            
        }catch let err as NSError{
            print(err.debugDescription)
         }
        
    }
    
    
    // button send action animated
    
    @IBAction func sync(_ sender: Any) {
    
        popUp.transform = CGAffineTransform(scaleX: 0.3, y: 2)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.3 , initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            
            self.popUp.transform = .identity
        }) {(success) in
    }
        popUp.alpha = 1
        
    }
    
   // func and play sound
    
    @IBAction func numberPressed(sender: UIButton){
        playSound()
    }
    
    func playSound() {
        if btnSound.isPlaying{
            btnSound.stop()
        }
        btnSound.play()
    }
    
    
  // button refresh screen
    
    @IBAction func ok(_ sender: UIButton) {
        popUp.alpha = 0

    }

}
