//
//  partyRock.swift
//  PartyRockApp
//
//  Created by Diseño on 24/01/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import Foundation

class partyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String{
        return _imageURL
    }
    
    var videoURL: String{
        return _videoURL
    }
    
    var videotitle: String{
        return _videoTitle 
    }
    
    init (imageURL: String, videoURL: String, videoTitle: String){
            _imageURL = imageURL
            _videoURL = videoURL
            _videoTitle = videoTitle
        
    }

}
