//
//  WelcomeViewController.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 25.05.2021.
//

import UIKit
class WelcomeViewController : UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    //MARK: - Public Properties
    var loginName: String?
    
    //MARK:- LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image =  UIImage(named: "WelcomeBackground")
      welcomeLabel.text = "Welcome, \(loginName ?? "")!"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}

