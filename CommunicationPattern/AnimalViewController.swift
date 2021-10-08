//
//  AnimalViewController.swift
//  CommunicationPattern
//
//  Created by Albert Pangestu on 06/10/21.
//

import UIKit

protocol AnimalSelectionDelegate {
    func didTapAnimalSelection(image: UIImage, name: String, color: UIColor)
}

class AnimalViewController: UIViewController {
    
    // MARK: - Variables
    var selectionDelegate: AnimalSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func catButtonClicked(_ sender: Any) {
        selectionDelegate.didTapAnimalSelection(image: UIImage(named: "cat")!, name: "Cat Person", color: .lightGray)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dogButtonClicked(_ sender: Any) {
        selectionDelegate.didTapAnimalSelection(image: UIImage(named: "dog")!, name: "Dog Person", color: .cyan)
        dismiss(animated: true, completion: nil)
    }

}
