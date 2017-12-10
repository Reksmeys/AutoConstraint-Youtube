//
//  TitleTableViewCell.swift
//  raksmey-autolayout-youtube
//
//  Created by Raksmey on 12/8/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    @IBOutlet weak var numberOfLike: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setValueToTitleLabel(numberOfLikes: String, tilteVideo: String){
        self.numberOfLike.text = numberOfLikes
        self.titleLabel.text = tilteVideo
    }
    
    
    
}
