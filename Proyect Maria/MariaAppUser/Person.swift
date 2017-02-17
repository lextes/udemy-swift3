//
//  Person.swift
//  MariaAppUser
//
//  Created by Diseño on 16/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation

class Person {
    
    private var _name = "Name";
    private var _lastName = "Last Name";
    
    var name: String{
        get{
            return _name;
        }
        
        set {
            _name = newValue;
        }
    }
    
    var lastName: String{
        
        get {
            return _lastName;
        }
        set {
            _lastName = newValue;
        }
    }
    
    var fullName: String {
        get {
            return "\(name) \(lastName)";
        }
    }
    
    
    
    
    
    
    
    
}
