//
//  MasterViewController.swift
//  ViewControllersContainment
//
//  Created by Diseño on 10/02/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    
    lazy var summaryViewController: SummaryViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        var viewController = storyboard.instantiateViewController(withIdentifier: "SummaryViewController") as! SummaryViewController
    
        self.addChildViewController(viewController)
            
        return viewController
    }()
    lazy var summaryViewController: SessionsViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        var viewController = storyboard.instantiateViewController(withIdentifier: "SessionsViewController") as! SessionsViewController
        
        self.addChildViewController(viewController)
        
        return viewController
    }()
}
    
    func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    // Mark : -View a Methods
    private func setupView(){
        setupSegmentedControl()
    }
    
    private func updateView(){
    
    }
    
    
    //MArk: -
    private func setupSegmentedControl(){
        segmentedControl.removeAllSegments()
        segmentedControl.insertSegment(withTitle: "summary", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "sessions", at: 1, animated: false)
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(sender:)), for:   valueChanged)
        segmentedControl.selectedSegmentIndex = 0
    }
    // Mark: actions
    func selectionDidChange(sender: UISegmentedControl){
        updateView()
    }

    // MArk: Helper Methods

    private func addViewControllerAsChildViewController(ChildViewController: viewController){
        
    }
}


