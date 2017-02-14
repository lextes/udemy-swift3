//
//  itemCell.swift
//  DreamList
//
//  Created by Diseño on 10/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class itemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
   
    func configureCell(item: Item){
        
        title.text = item.title
        price.text = "$\(item.price)"
        details.text = item.details
        
    }

}
