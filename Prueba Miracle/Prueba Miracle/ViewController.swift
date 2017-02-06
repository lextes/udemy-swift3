//
//  ViewController.swift
//  Prueba Miracle
//
//  Created by Diseño on 05/01/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePcikerBtn: UIButton!
    
    @IBOutlet weak var HiddenBtn: UIButton!
    
    @IBAction func HiddenBtnAct(_ sender: Any) {
    }
    
    let states = ["Alaska", "Arkansas", "Alabama", "New York", "California", "Maine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPress(_ sender: Any) {
        statePicker.isHidden = false
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePcikerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
    }
    
}

