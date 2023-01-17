//
//  MentionsTableViewCell.swift
//  MyTwitter
//
//  Created by Baidetskyi Jurii on 13.11.2022.
//

import UIKit

struct MentionsCellModel {
    var isShowFullText: Bool
    var userName: String
    var userText: String
    var userIcon: UIImage
    var textImage: UIImage
    var photoInfo: String
}

class MentionsTableViewCell: UITableViewCell {
    
    var isShow: Bool = true
    var updateCell: ((Bool) -> Void)?

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userTextLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var photoInfoLabel: UILabel!
    @IBOutlet weak var userTextImageView: UIImageView!
    
    @IBOutlet weak var showFullTextButtonOutlet: UIButton! {
        didSet {
            showFullTextButtonOutlet.setImage(UIImage(named: "icon.arrow.down"), for: .normal)
            showFullTextButtonOutlet.setTitle("", for: .normal)
        }
    }
    
    @IBOutlet var buttonCollection: [UIButton]! {
        didSet {
            let images = ["icon.comment", "icon.retweet", "icon.like", "icom.share" ]
            var index = 0
            buttonCollection.forEach { button in
                button.setTitle("", for: .normal)
                button.setImage(UIImage(named: images[index]), for: .normal)
                index += 1
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    @IBAction func showFullTextButtonPressed(_ sender: Any) {
        isShow = !isShow
//        if isShow {
//            userTextLabel.numberOfLines = 0
//            updateConstraints()
//        } else {
//            userTextLabel.numberOfLines = 3
//            updateConstraints()
//        }
        updateCell?(isShow)
    }
    
    @IBAction func commentButtonPressed(_ sender: Any) {
    }
    
    @IBAction func retweetButtonPressed(_ sender: Any) {
    }
    
    @IBAction func likeButtonPressed(_ sender: Any) {
    }
    
    @IBAction func shareButtonPressed(_ sender: Any) {
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCell ( with model: MentionsCellModel) {
        isShow = model.isShowFullText
        if model.isShowFullText {
            userTextLabel.numberOfLines = 3
        } else {
            userTextLabel.numberOfLines = 0
        }
        userNameLabel.text = model.userName
        userTextLabel.text = model.userText
        userImageView.image = model.userIcon
        photoInfoLabel.text = model.photoInfo
        userTextImageView.image = model.textImage
    }
    
}
