//
//  MentionsViewController.swift
//  MyTwitter
//
//  Created by Lesia Vorozhbyt on 04.11.2022.
//

import UIKit

class MentionsViewController: UIViewController {
    
    let cellIdentifier = "MentionsTableViewCell"

    @IBOutlet weak var tableView: UITableView!
    
    private var items: [MentionsCellModel] = {
        TwitterDataHelper.shared.mockAllMentionsData()
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

extension MentionsViewController: UITableViewDelegate {

}

extension MentionsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MentionsTableViewCell else {
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
