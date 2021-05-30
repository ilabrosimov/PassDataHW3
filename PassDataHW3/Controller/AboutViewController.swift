//
//  AboutViewController.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 29.05.2021.
//

import UIKit
class AboutViewController : UIViewController {
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var index: Int?
    override func viewDidLoad() {
        guard let userIndex = index else {
            return
        }
        nameLabel.text = users[userIndex].name
        lastNameLabel.text = users[userIndex].lastName
        ageLabel.text = String(users[userIndex].age)
        
    }
    
    
}
