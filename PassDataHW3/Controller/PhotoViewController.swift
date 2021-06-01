//
//  PhotoViewController.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 30.05.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    @IBOutlet weak var photoImage: UIImageView!
    
    var user : Profile!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: user.person.image)
        
    }

}
