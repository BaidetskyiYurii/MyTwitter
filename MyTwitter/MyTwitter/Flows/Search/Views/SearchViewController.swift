//
//  SearchViewController.swift
//  MyTwitter
//
//  Created by Lesia Vorozhbyt on 01.11.2022.
//

import UIKit

class SearchViewController: UIViewController {
    
    private let cellIdentifier = "TrendsTableViewCell"
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSearchBar()
        configTableView()
    }
    
    private func setSearchBar() {
        self.navigationItem.titleView = searchBar
        searchBar.placeholder = "Search Twitter"
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil),
                           forCellReuseIdentifier: cellIdentifier)
    }
}

extension SearchViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 201
        }
        return 100
    }
}

extension SearchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TrendsTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}
