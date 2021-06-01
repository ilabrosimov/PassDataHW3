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
    var user : Profile!
    
    //MARK:- LifeCycle Methods
    override func viewDidLoad() {
        self.title = "Информация о себе"
        
        nameLabel.text = user.person.name
        lastNameLabel.text = user.person.lastName
        ageLabel.text = String(user.person.age)
        hobbyLabel.text = user.person.hobby
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photoVC = segue.destination as? PhotoViewController else {return}
        photoVC.user = user
        
    }
    
    
}
