//
//  ViewController.swift
//  PassDataHW3
//
//  Created by ilabrosimov on 25.05.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
   //MARK: - IB Outlets
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotLoginButton: UIButton!
    @IBOutlet weak var fotgotPasswordButton: UIButton!
    
    //MARK: - Private Propereties
    private let loginName = "Ilia"
    private let password = "Password"
    
    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.delegate = self
        passwordTextField.delegate = self
        passwordTextField.enablesReturnKeyAutomatically = true
    }
    //MARK: - KeyBoard Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.text = ""
        if textField == loginTextField {
        textField.returnKeyType = .next
        } else {
            textField.returnKeyType = .done
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case loginTextField:
            if  let nextResponder: UIResponder = passwordTextField.superview?.viewWithTag(1) {
                nextResponder.becomeFirstResponder()
            }
        case passwordTextField:
            LogInTapped(_sender: logInButton)
        default:
            textField.resignFirstResponder()
        }
       return true
   }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? WelcomeViewController else {return}
        destinationVC.loginName = loginTextField.text
    }
    
    @IBAction func unwind ( _segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    //MARK: - IB ACTIONS
    @IBAction func LogInTapped (_sender: UIButton!) {
        guard loginTextField.text == loginName,
              passwordTextField.text == password else {
            showBasicAlert(on: self, with: "Mistake!", message: "Check out your login or password!")
            return
        }
        performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotLoginTapped (_sender: UIButton!) {
        if  loginTextField.text != loginName {
            showBasicAlert(on: self, with: "Oooops", message: "Check your Login")
        }
    }
    
    @IBAction func forgotPasswordTapped (_sender: UIButton!) {
        if  passwordTextField.text != password {
            showBasicAlert(on: self, with: "Oooops", message: "Check your Password")
        }
    }
   
    // MARK: - PUBLIC METHODS
    func showBasicAlert (on vc : UIViewController, with title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        vc.present(alert, animated: true, completion: nil)
        }

}


  

