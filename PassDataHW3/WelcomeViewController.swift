//
//  WelcomeViewController.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 25.05.2021.
//

import UIKit
class WelcomeViewController : UIViewController {
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var loginName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.image =  UIImage(named: "WelcomeBackground")
      welcomeLabel.text = "Welcome, \(loginName ?? "")!"
    }
    
    @IBAction func logOutTapped (_sender: UIButton!) {
       // dismiss(animated: true)
        
    }
}
