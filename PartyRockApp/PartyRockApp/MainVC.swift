//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Diseño on 23/01/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableview: UITableView!
    
    var partyRocks = [partyRock]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let p1 = partyRock(imageURL: "https://i.ytimg.com/vi/xGiBiHocSZM/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/inBKFMB-yPg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "New Thang")
        
        let p2 = partyRock(imageURL: "https://media0.giphy.com/media/rCCTlyKw0QROM/200_s.gif", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/m0AKJMGxwpE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Enjoy the silence")
        
        
        let p3 = partyRock(imageURL: "https://i.ytimg.com/vi/Dz1S4C1ykpA/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/s6VaeFCxta8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hunting High and Low")
        
        let p4 = partyRock(imageURL: "https://k03.kn3.net/C2F45776B.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sJt9zXtOBAY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Tom Sawyer")
        
         let p5 = partyRock(imageURL: "https://i.ytimg.com/vi/1CNiChT7sQE/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Lgo2Wc6Vj00\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Desert Roses")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        

        tableview.delegate = self
        tableview.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableview.dequeueReusableCell(withIdentifier: "partyCell", for: indexPath) as? PartyCell{
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
        }else {
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "videoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? videoVC{
            if let party = sender as? partyRock{
                destination.partyRock = party
            }
        }
    }
    
}







