//
//  Item+CoreDataClass.swift
//  DreamList
//
//  Created by Diseño on 09/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
    }
}
