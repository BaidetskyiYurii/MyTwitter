//
//  PostTableViewCell.swift
//  MyTwitter
//
//  Created by Baidetskyi Jurii on 08.11.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var userIconImage: UIImageView!
    @IBOutlet weak var infoIconImage: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userTagLabel: UILabel!
    @IBOutlet weak var userTimeLabel: UILabel!
    @IBOutlet weak var userTextLabel: UILabel!
    @IBOutlet weak var showFullTextButtonOutlet: UIButton! {
        didSet {
            showFullTextButtonOutlet.setTitle("", for: .normal)
        }
    }
    @IBOutlet weak var commentButtonOutlet: UIButton!{
        didSet {
            commentButtonOutlet.setTitle("", for: .normal)
        }
    }
    @IBOutlet weak var commentNumberLabel: UILabel!
    
    @IBOutlet weak var retweetButtonOutlet: UIButton!{
        didSet {
            retweetButtonOutlet.setTitle("", for: .normal)
        }
    }
    @IBOutlet weak var retweetNumberLabel: UILabel!
    @IBOutlet weak var likeButtonOutlet: UIButton!{
        didSet {
            likeButtonOutlet.setTitle("", for: .normal)
        }
    }
    @IBOutlet weak var likeNumberLabel: UILabel!
    @IBOutlet weak var shareButtonOutlet: UIButton!{
        didSet {
            shareButtonOutlet.setTitle("", for: .normal)
        }
    }
    
    var isShow: Bool = true
    var updateCell: ((Bool) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func showFullTextButtonPressed(_ sender: Any) {
        isShow = !isShow
//        if isShow {
//            userTextLabel.numberOfLines = 0
//            updateConstraints()
//        } else {
//            userTextLabel.numberOfLines = 1
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
    
    func configCell(with model: Post) {
        isShow = model.isShowFullText
        if model.isShowFullText {
            userTextLabel.numberOfLines = 0
        } else {
            userTextLabel.numberOfLines = 1
        }
        userIconImage.image = UIImage(named: model.userIcon)
        infoIconImage.image = UIImage(named: model.actionInfoIcon)
        infoLabel.text = model.actionInfo
        userNameLabel.text = model.userName
        userTagLabel.text = model.userTagName
        userTimeLabel.text = model.postTime
        userTextLabel.text = model.postMessage
        commentNumberLabel.text = String(model.commentNumber)
        retweetNumberLabel.text = String(model.retweetNumber)
        likeNumberLabel.text = String(model.likeNumber)
    }
}
