//
//  NotificationViewController.swift
//  MyTwitter
//
//  Created by Lesia Vorozhbyt on 01.11.2022.
//

import UIKit

class NotificationViewController: UIViewController {

    private enum NotificationTabType: Int {
        case all
        case mentions

        var title: String {
            switch self {
            case .all:
                return "All"
            case .mentions:
                return "Mentions"
            }
        }

        var vc: UIViewController {
            let stotyboard = UIStoryboard(name: "Notifications", bundle: nil)
            switch self {
            case .all:
                return stotyboard.instantiateViewController(withIdentifier: "AllNotifactionsViewController")
            case .mentions:
                return stotyboard.instantiateViewController(withIdentifier: "MentionsViewController")
            }
        }
    }

    private let segmentTabs = [
        NotificationTabType.all,
        NotificationTabType.mentions
    ]
    private var selectedVC: UIViewController? = nil

    @IBOutlet weak var notificationSegment: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let selectedType = segmentTabs[0]
        changeVC(with: selectedType)
    }
    
    @IBAction func tabDidChanged(_ sender: Any) {
        let selectedType = segmentTabs[notificationSegment.selectedSegmentIndex]
        changeVC(with: selectedType)
    }

    private func changeVC(with newNotificationType: NotificationTabType) {
        if let selectedVC = selectedVC {
            selectedVC.willMove(toParent: nil)
            selectedVC.view.removeFromSuperview()
            selectedVC.removeFromParent()
        }

        let newVC = newNotificationType.vc
        selectedVC = newVC

        addChild(newVC)
        newVC.view.frame = containerView.bounds
        containerView.addSubview(newVC.view)
        newVC.didMove(toParent: self)
    }

}
