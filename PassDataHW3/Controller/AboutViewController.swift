//
//  AboutViewController.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 29.05.2021.
//

import UIKit
class AboutViewController : UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    //MARK: - Public Properties
    var userIndex: Int?
    
    //MARK:- LifeCycle Methods
    override func viewDidLoad() {
        self.title = "Информация о себе"
        guard let index = userIndex else {
            return
        }
        nameLabel.text = users[index].name
        lastNameLabel.text = users[index].lastName
        ageLabel.text = String(users[index].age)
        hobbyLabel.text = users[index].hobby
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photoVC = segue.destination as? PhotoViewController else {return}
        photoVC.userIndex = userIndex
        
    }
    
    
}
