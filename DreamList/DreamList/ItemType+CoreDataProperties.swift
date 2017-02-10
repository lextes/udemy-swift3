//
//  ItemType+CoreDataProperties.swift
//  DreamList
//
//  Created by Diseño on 09/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
