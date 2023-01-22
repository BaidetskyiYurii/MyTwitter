//
//  MessagesViewController.swift
//  MyTwitter
//
//  Created by Lesia Vorozhbyt on 01.11.2022.
//

import UIKit

class MessagesViewController: UIViewController {
    
    private let cellIdentifier = "MessagesTableViewCell"
    
    var messagesArray = TwitterDataHelper.shared.mockMessages()

    @IBOutlet weak var searchBarOutlet: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil),
                           forCellReuseIdentifier: cellIdentifier)
    }
}

extension MessagesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
}

extension MessagesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        messagesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MessagesTableViewCell else {
            return UITableViewCell()
        }
        let message = messagesArray[indexPath.row]
        cell.configCell(with: message)
       return cell
    }
}
