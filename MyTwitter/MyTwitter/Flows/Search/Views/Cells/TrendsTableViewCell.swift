//
//  TrendsTableViewCell.swift
//  MyTwitter
//
//  Created by Baidetskyi Jurii on 20.01.2023.
//

import UIKit

class TrendsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var changeLocationButtonOutlet: UIButton! {
        didSet {
            changeLocationButtonOutlet.layer.cornerRadius = 16
            changeLocationButtonOutlet.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func changeLocationButtonPressed(_ sender: Any) {}
}
