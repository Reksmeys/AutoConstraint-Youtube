//
//  ViewController.swift
//  raksmey-autolayout-youtube
//
//  Created by Raksmey on 12/7/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var youtubeBarButton: UIBarButtonItem!
    @IBOutlet weak var youtubeTableView: UITableView!
    
    var contentImage = [#imageLiteral(resourceName: "firstVideo"),#imageLiteral(resourceName: "couple"), #imageLiteral(resourceName: "rememberme"), #imageLiteral(resourceName: "fighter")]
    
    var datePostArray = ["2 hours", "1 week ago", "1 month ago", "2 mins"]
    var numberOfViewArray = ["2 Views", "7M Views", "890 Views", "9110 views"]
    var titleArray = ["Three Words(세 단어) - Sechs Kies(젝스키스) || HAN/ROM/ENG", "웃어줘(SMILE)’ 0924 SBS Inkigayo", "Sechskies - Remember Me [Hangul, Rom, English Lyrics]", "Road Fighter(로드파이터) - Sechs Kies(젝스키스) || HAN/ROM/ENG || Color Coded Lyrics"]
    var accountName = "Reksmeys"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.youtubeTableView.delegate = self
        self.youtubeTableView.dataSource = self
        //register nib file
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        youtubeTableView.register(nib, forCellReuseIdentifier: "YoutubeCell")
        youtubeBarButton.setBackgroundImage(#imageLiteral(resourceName: "youtube-logo25"), for: .normal, barMetrics: .default)
     
      
    
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        return datePostArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //
        let cell = tableView.dequeueReusableCell(withIdentifier: "YoutubeCell") as! TableViewCell
        
        cell.configureCell(datePost: datePostArray[indexPath.item], numberOfViews: numberOfViewArray[indexPath.item], title: titleArray[indexPath.item], account: accountName, userProfile: #imageLiteral(resourceName: "profile"), contentImage: contentImage[indexPath.item])
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = self.storyboard?.instantiateViewController(withIdentifier: "SecondController") as! SecondViewController
        cell.titles = titleArray[indexPath.row]
        cell.views = numberOfViewArray[indexPath.row]
        cell.img = contentImage[indexPath.row]
        cell.channelTitle = accountName
        cell.profileImg = #imageLiteral(resourceName: "profile")
        self.navigationController?.pushViewController(cell, animated: true)

        
        
    }
    
}



