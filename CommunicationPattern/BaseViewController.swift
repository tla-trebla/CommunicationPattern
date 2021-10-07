//
//  BaseViewController.swift
//  CommunicationPattern
//
//  Created by Albert Pangestu on 06/10/21.
//

import UIKit

let catNotificationKey = "com.tla-trebla.cat"
let dogNotificationKey = "com.tla-trebla.dog"

class BaseViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Variables
    
    let catNotification = NSNotification.Name(catNotificationKey)
    let dogNotification = NSNotification.Name(dogNotificationKey)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Notifications
    
    func createObservers() {
        
        // Cat
        NotificationCenter.default.addObserver(self, selector: #selector(changeImageView(notification:)), name: catNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeLabel(notification:)), name: catNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeBackgroundColor(notification:)), name: catNotification, object: nil)
        
        // Dog
        NotificationCenter.default.addObserver(self, selector: #selector(changeImageView(notification:)), name: dogNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeLabel(notification:)), name: dogNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeBackgroundColor(notification:)), name: dogNotification, object: nil)
    }
    
    // MARK: - Notification's Implementation
    
    @objc func changeImageView(notification: NSNotification) {
        let isCat = notification.name == catNotification
        let image = isCat ? UIImage(named: "cat") : UIImage(named: "dog")
        animalImageView.image = image
    }
    
    @objc func changeLabel(notification: NSNotification) {
        let isCat = notification.name == catNotification
        let text = isCat ? "Cat Person" : "Dog Person"
        nameLabel.text = text
    }
    
    @objc func changeBackgroundColor(notification: NSNotification) {
        let isCat = notification.name == catNotification
        let backgroundColor : UIColor = isCat ? .gray : .cyan
        view.backgroundColor = backgroundColor
    }

    // MARK: - Actions

    @IBAction func animalSelectionButtonClicked(_ sender: Any) {
        let animalVC = storyboard?.instantiateViewController(withIdentifier: "AnimalViewController") as! AnimalViewController
        
        animalVC.modalPresentationStyle = .fullScreen
        
        present(animalVC, animated: true, completion: nil)
    }
}

