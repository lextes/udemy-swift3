//
//  ViewController.swift
//  iCarousel
//
//  Created by Diseño on 06/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDataSource, iCarouselDelegate {

    @IBOutlet var iCarousel: iCarousel!
    
    var images = [UIImage]()
    
    
    func numberOfItems(in Carousel: iCarousel) ->{
        return images.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: int, reusing view: UIView?) -> UIView{
        
        // Create a UIView
        
        let tempView = UIView(frame: CGRect(x: 0, y: 0, width: 200, heigth: 200))
        
        // Create a UIImageView
        
        let frame = CGRect(x:0, y: 0, width: 200, heigth: 200)
        let imageView = UIImageView()
        imageView.frame = frame
        imageView.contentMode = .scaleAspectFit
        
        // Set the images to the imageView and add it to the tempView
        
        imageView.image = images[index]
        imageView.addSubview(imageView)
        
        return tempView
        
    }
    
    func carousel(_ carousel: iCarousel, valueFor option : iCarouselOption, withDefault value: CGFloat) -> CGFloat{
        if option == iCarouselOption.spacing{
            print(value)
            return value * 1.2
        }
        return value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carouselView.reloadData()
        carouselView.type = .timeMachine
    }

}

