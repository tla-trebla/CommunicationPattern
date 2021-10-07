//
//  AnimalViewController.swift
//  CommunicationPattern
//
//  Created by Albert Pangestu on 07/10/21.
//

import UIKit

class AnimalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func catButtonClicked(_ sender: Any) {
        let name = Notification.Name(catNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dogButtonClicked(_ sender: Any) {
        let name = Notification.Name(dogNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
}
