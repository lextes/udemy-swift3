//
//  videoVC.swift
//  PartyRockApp
//
//  Created by Diseño on 23/01/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class videoVC: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    
    private var _partyRock: partyRock!
    
    var partyRock: partyRock{
        get {
            return _partyRock
        }set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       titleLbl.text = partyRock.videotitle
        webview.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
