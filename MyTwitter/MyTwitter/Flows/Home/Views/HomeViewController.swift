//
//  HomeViewController.swift
//  MyTwitter
//
//  Created by Lesia Vorozhbyt on 01.11.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    enum HomeTableCellTypes {
        case recentSearch([Follower])
        case post(Post)
        
        var nibName: String {
            switch self {
            case .recentSearch(_):
                return "RecentSearchTableViewCell"
            case .post(_):
                return "PostTableViewCell"
            }
        }
        
        var indentifier: String {
            switch self {
            case .recentSearch(_):
                return "RecentSearchTableViewCell"
            case .post(_):
                return "PostTableViewCell"
            }
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    private var items = [HomeTableCellTypes]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
    }
    
    private func loadData() {
        let followers = TwitterDataHelper.shared.mockFollowers()
        let posts = TwitterDataHelper.shared.mockPost()
        
        
        items.append(.recentSearch(followers))
        items.append(contentsOf: posts.map{ HomeTableCellTypes.post($0)})
        configTableView()
        tableView.reloadData()
    }
    
    private func configTableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        items.forEach{ tableView.register(UINib(nibName: $0.nibName, bundle: nil),
                                          forCellReuseIdentifier: $0.indentifier)}
        tableView.reloadData()
    }
    
}

extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: item.indentifier)
        
        switch item {
        case let .recentSearch(follower):
            guard let cell = cell as? RecentSearchTableViewCell else {
                return UITableViewCell()
            }
            cell.configCell(follower)
        case var .post(post):
            guard let cell = cell as? PostTableViewCell else {
                return UITableViewCell()
            }
            cell.updateCell = { [weak self] isShow in
                post.isShowFullText = isShow
                self?.items[indexPath.row] = .post(post)
                tableView.reloadRows(at: [indexPath], with: .automatic)
            }
            cell.configCell(with: post)
        }
        return cell ?? UITableViewCell()
    }
}
