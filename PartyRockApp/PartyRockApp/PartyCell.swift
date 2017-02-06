//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Diseño on 24/01/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    
    @IBOutlet weak var previewVideoImages: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func updateUI(partyRock: partyRock){
        videoTitle.text = partyRock.videotitle
        
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            
            do{
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.previewVideoImages.image = UIImage(data: data)
                }
                
            }catch {
                // Handle the error
            }
        }
    }

}
