//
//  ViewController.swift
//  imageScroll
//
//  Created by Diseño on 06/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainScrollView: UIScrollView!
    
    @IBAction func playScroll(_ sender: Any) {
    }
    
    
    var imageArray = [UIImage()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        do
        {
        mainScrollView.frame = view.frame

        imageArray = [#imageLiteral(resourceName: "image5"), #imageLiteral(resourceName: "image4"), #imageLiteral(resourceName: "image3"), #imageLiteral(resourceName: "image2"), #imageLiteral(resourceName: "image1")]
    
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
            
        }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

