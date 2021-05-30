//
//  PhotoViewController.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 30.05.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    @IBOutlet weak var photoImage: UIImageView!
    
    var userIndex : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let index = userIndex else {
            return
        }
        photoImage.image = UIImage(named: users[index].imageName ?? "")
        
    }

}
