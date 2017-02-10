//
//  Image+CoreDataProperties.swift
//  DreamList
//
//  Created by Diseño on 09/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image");
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var toItem: Item?
    @NSManaged public var toStore: Store?

}
