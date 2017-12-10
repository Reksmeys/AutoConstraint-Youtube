//
//  SubscribeTableViewCell.swift
//  raksmey-autolayout-youtube
//
//  Created by Raksmey on 12/7/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class SubscribeTableViewCell: UITableViewCell {
  
    
    @IBOutlet weak var channelTitleLabel: UILabel!
    @IBOutlet weak var channelImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()

        channelImageView.layer.cornerRadius = 25
        channelImageView.clipsToBounds = true
        
    }
    func configureSubscribe(channel: String, profileImage: UIImage){
        channelImageView.image = profileImage
        channelTitleLabel.text = channel
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
