//
//  FollowersCollectionViewCell.swift
//  MyTwitter
//
//  Created by Baidetskyi Jurii on 08.11.2022.
//

import UIKit

class FollowersCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var userIconImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userTagLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell( with model: Follower) {
        userNameLabel.text = model.name
        userIconImage.image = UIImage(named: model.icon)
        userTagLabel.text = model.userTagName
    }

}
