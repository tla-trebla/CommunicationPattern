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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Actions

    @IBAction func animalSelectionButtonClicked(_ sender: Any) {
        let animalVC = storyboard?.instantiateViewController(withIdentifier: "AnimalViewController") as! AnimalViewController
        
        animalVC.modalPresentationStyle = .fullScreen
        
        present(animalVC, animated: true, completion: nil)
    }
}

