//
//  ViewController.swift
//  sounds2
//
//  Created by Diseño on 15/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var button1 = AVAudioPlayer()
    var button2 = AVAudioPlayer()
    var button3 = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            button1 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "heroic_children", ofType: "wav")!))
            button1.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        do{
            button2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Aplausos", ofType: "mp3")!))
            button2.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        do{
            button3 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "magico", ofType: "mp3")!))
            button3.prepareToPlay()
        }
        catch{
            print(error)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func playButton1(_ sender: AnyObject) {
        button1.play()
        if button1.isPlaying{
            button2.stop()
            button3.stop()
        }
    }
    
    
    @IBAction func playButton2(_ sender: AnyObject) {
        button2.play()
        if button2.isPlaying{
            button1.stop()
            button3.stop()
        }
    }
    
    @IBAction func playButton3(_ sender: AnyObject) {
        button3.play()
        if button3.isPlaying{
            button1.stop()
            button2.stop()
        }
    }
  
    
    
}

