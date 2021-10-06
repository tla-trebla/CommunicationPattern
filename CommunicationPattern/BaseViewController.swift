//
//  BaseViewController.swift
//  CommunicationPattern
//
//  Created by Albert Pangestu on 06/10/21.
//

import UIKit

class BaseViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Actions
    
    @IBAction func selectAnimalButtonClicked(_ sender: Any) {
        let animalVC = storyboard?.instantiateViewController(withIdentifier: "AnimalViewController") as! AnimalViewController
        
        animalVC.modalPresentationStyle = .fullScreen
        animalVC.selectionDelegate = self
        
        present(animalVC, animated: true, completion: nil)
    }
    
}
