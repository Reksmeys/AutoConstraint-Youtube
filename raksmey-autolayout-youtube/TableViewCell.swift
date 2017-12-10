//
//  TableViewCell.swift
//  raksmey-autolayout-youtube
//
//  Created by Raksmey on 12/7/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var contentImageView: UIImageView!
//
//    @IBOutlet weak var acountTitleLabel: UILabel!
//    @IBOutlet weak var numberOfView: UILabel!
    
    @IBOutlet weak var acountTitleLabel: UILabel!
    
    @IBOutlet weak var numberOfView: UILabel!
    @IBOutlet weak var datePostLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userProfileImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        userProfileImageView.layer.cornerRadius = 25
        userProfileImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print("cell have click")
    }
    func configureCell(datePost: String, numberOfViews: String, title: String, account:  String, userProfile: UIImage, contentImage: UIImage){
        datePostLabel.text = datePost
        numberOfView.text = numberOfViews
        titleLabel.text = title
        acountTitleLabel.text = account
        userProfileImageView.image = userProfile
        contentImageView.image = contentImage
    }
    
}
