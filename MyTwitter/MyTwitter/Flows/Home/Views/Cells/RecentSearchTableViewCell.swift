//
//  RecentSearchTableViewCell.swift
//  MyTwitter
//
//  Created by Baidetskyi Jurii on 08.11.2022.
//

import UIKit

class RecentSearchTableViewCell: UITableViewCell {
    
    private var followers = [Follower]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configCell(_ followers: [Follower]) {
        self.followers = followers
        registerCollectionCell()
        collectionView.delegate = self
        collectionView.dataSource =  self
        collectionView.reloadData()
        
    }
    
    private func registerCollectionCell() {
        collectionView.register(FollowersCollectionViewCell.self, forCellWithReuseIdentifier: "FollowersCollectionViewCell")
        collectionView.register(UINib(nibName: "FollowersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FollowersCollectionViewCell")
    }
}


extension RecentSearchTableViewCell: UICollectionViewDelegate {
    
}

extension RecentSearchTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        followers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FollowersCollectionViewCell", for: indexPath) as? FollowersCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configCell(with: followers[indexPath.row])
        return cell
    }
    
    
}
