//
//  ViewController.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 25.05.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotLoginButton: UIButton!
    @IBOutlet weak var fotgotPasswordButton: UIButton!
    
//    override func viewWillAppear(_ animated: Bool) {
//        loginTextField.text = ""
//        passwordTextField.text = ""
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        guard let destinationVC = segue.destination as? WelcomeViewController else {
            return
        }
        destinationVC.loginName = loginTextField.text
    }
    @IBAction func unwind ( _segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    @IBAction func LogInTapped (_sender: UIButton!) {
        guard loginTextField.text == "Login",
              passwordTextField.text == "Password" else {
            return
        }
        performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
