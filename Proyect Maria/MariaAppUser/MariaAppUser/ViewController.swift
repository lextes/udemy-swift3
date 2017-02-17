//
//  ViewController.swift
//  MariaAppUser
//
//  Created by Diseño on 16/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtLabel: UILabel!
    
    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var lastNameTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func displayFullName(_ sender: AnyObject){
        let person = Person();
        
        person.name = nameTxt.text!;
        person.lastName = lastNameTxt.text!;
        
        txtLabel.text = "\(person.fullName)";
    }

}

