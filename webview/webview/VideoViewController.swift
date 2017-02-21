//
//  VideoViewController.swift
//  First Unit
//
//  Created by Diseño on 21/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideoViewController: UIViewController {
    
    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let videoString: String? = Bundle.main.path(forResource: "trans", ofType: ".mp4")
        if let url = videoString{
            let videoURL = NSURL(fileURLWithPath: url)
            self.player = AVPlayer(url: videoURL as URL)
            self.playerController.player = self.player
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playVideo(_ sender: Any) {
        self.present(self.playerController, animated: true, completion: {
            
            self.playerController.player?.play()
        })
    }
    
    
}

