//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Diseño on 17/01/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var OutputLabel: UILabel!
    var btnSound: AVAudioPlayer!
    
    enum Operation: String{
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    
    var currentOperation = Operation.Empty
    var runnigNumber = ""
    var leftValStr = ""
    var rigthValStr = ""
    var result = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "button", ofType: "mp3")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
            
        }catch let err as NSError{
            print(err.debugDescription)
        }
        
        OutputLabel.text = "0"
    }

    @IBAction func numberPressed(sender: UIButton){
        playSound()
        runnigNumber += "\(sender.tag)"
        
        OutputLabel.text = runnigNumber
        
    }
    
    @IBAction func onDividePressed(sender: AnyObject){
        processOperation(operation: .Divide)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject){
        processOperation(operation: .Multiply)
    }
    @IBAction func onSubtractPressed(sender: AnyObject){
        processOperation(operation: .Subtract)
    }
    @IBAction func onAddPressed(sender: AnyObject){
        processOperation(operation: .Add)
    }
    
    @IBAction func onEqualPressed(sender: AnyObject){
        processOperation(operation: currentOperation)
    }
    
    func playSound() {
        if btnSound.isPlaying{
            btnSound.stop()
        }
        btnSound.play()
    }
    
    func processOperation(operation: Operation){
        playSound()
        
        if currentOperation != Operation.Empty{
            
            // A user  selected an operator, but then selected another operator without first entering a number
            
            if runnigNumber != ""{
                rigthValStr = runnigNumber
                runnigNumber = ""
                
                if currentOperation == Operation.Multiply{
                    result = "\(Double(leftValStr)! * Double(rigthValStr)!)"
                }else if currentOperation == Operation.Divide{
                    result = "\(Double(leftValStr)! / Double(rigthValStr)!)"
                }else if currentOperation == Operation.Subtract{
                    result = "\(Double(leftValStr)! - Double(rigthValStr)!)"
                }else if currentOperation == Operation.Add{
                    result = "\(Double(leftValStr)! + Double(rigthValStr)!)"
                }
                leftValStr = result
                OutputLabel.text = result
            }
        currentOperation = operation
            
        }else {
            // This is the first time an operator has been pressed
            
            leftValStr = runnigNumber
            runnigNumber = ""
            currentOperation = operation
        }
    }

}
