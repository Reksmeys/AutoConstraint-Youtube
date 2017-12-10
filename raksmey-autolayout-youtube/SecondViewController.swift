//
//  SecondViewController.swift
//  raksmey-autolayout-youtube
//
//  Created by Raksmey on 12/8/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var titles: String!
    var views: String!
    var img:UIImage!
    var profileImg:UIImage!
    var channelTitle: String!
    
    @IBOutlet weak var displayVideoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewDidAppear(_ animated: Bool) {
        displayVideoImageView.image = img
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        
        if indexPath.item == 0 {
            cell = Bundle.main.loadNibNamed("TitleTableViewCell", owner: self, options: nil)?.first as! TitleTableViewCell
            (cell as! TitleTableViewCell).setValueToTitleLabel(numberOfLikes: views, tilteVideo: titles)
        }
        else if indexPath.item == 1 {
            cell = Bundle.main.loadNibNamed("ActionTableViewCell", owner: self, options: nil)?.first as! ActionTableViewCell
        }
        else {
            cell = Bundle.main.loadNibNamed("SubscribeTableViewCell", owner: self, options: nil)?.first as! SubscribeTableViewCell
            (cell as! SubscribeTableViewCell).configureSubscribe(channel: channelTitle, profileImage: profileImg)
            
        }
        cell?.separatorInset = UIEdgeInsets.zero
        cell?.layoutMargins = UIEdgeInsets.zero
        return cell!
    }
    
   
    

 

}
