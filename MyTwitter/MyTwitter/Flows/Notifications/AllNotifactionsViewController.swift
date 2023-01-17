//
//  AllNotifactionsViewController.swift
//  MyTwitter
//
//  Created by Lesia Vorozhbyt on 04.11.2022.
//

import UIKit

class AllNotifactionsViewController: UIViewController {
    
    private let cellIdentifier = "TwitterTextTableViewCell"

    @IBOutlet weak var tableView: UITableView!
    
    private var items: [TwitterTextCellModel] = {
        TwitterDataHelper.shared.mockAllNotificationsData()
    }()

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

extension AllNotifactionsViewController: UITableViewDelegate {

}

extension AllNotifactionsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? TwitterTextTableViewCell else {
            return UITableViewCell()
        }
        cell.updateCell = { [weak self] isShow in
            self?.items[indexPath.row].isShowFullText = isShow
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
        cell.configureCell(with: self.items[indexPath.row])
        return cell
    }
}
