//
//  TwitterTextTableViewCell.swift
//  MyTwitter
//
//  Created by Baidetskyi Jurii on 04.11.2022.
//

import UIKit

struct TwitterTextCellModel {
    var isShowFullText: Bool
    var isFavourites: Bool
    var fullText: String
    var userIcon: UIImage
}

class TwitterTextTableViewCell: UITableViewCell {
    
    var isShow: Bool = true
    var updateCell: ((Bool) -> Void)?
    
    @IBOutlet weak var showFullText: UIButton!
    @IBOutlet weak var favouriteButtonOutlet: UIButton!
    @IBOutlet weak var fullTextLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        showFullText.setImage(UIImage(named: "icon.arrow.up"), for: .normal)

    }
    
    @IBAction func showFullTextButtonPressed(_ sender: Any) {
        isShow = !isShow
        if isShow {
            fullTextLabel.numberOfLines = 0
            updateConstraints()
        } else {
            fullTextLabel.numberOfLines = 3
            updateConstraints()
        }
        updateCell?(isShow)
    }
    
    @IBAction func favouriteButtonPressed(_ sender: Any) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configureCell ( with model: TwitterTextCellModel) {
        favouriteButtonOutlet.setTitle("", for: .normal)
        showFullText.setTitle("", for: .normal)
        isShow = model.isShowFullText
        if model.isShowFullText {
            fullTextLabel.numberOfLines = 3
        } else {
            fullTextLabel.numberOfLines = 0
        }
        fullTextLabel.text = model.fullText
        userImage.image = model.userIcon
        
        
    }
    
}
