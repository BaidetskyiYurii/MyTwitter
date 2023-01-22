//
//  MessagesTableViewCell.swift
//  MyTwitter
//
//  Created by Baidetskyi Jurii on 22.01.2023.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userNickName: UILabel!
    @IBOutlet weak var lateMessageActionText: UILabel!
    @IBOutlet weak var messageDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configCell( with model: Message){
        userImage.image = UIImage(named: model.userImage)
        userName.text = model.userName
        userNickName.text = model.userNickName
        lateMessageActionText.text = model.lateMessageAction
        messageDate.text = model.messageDate
    }
    
}
