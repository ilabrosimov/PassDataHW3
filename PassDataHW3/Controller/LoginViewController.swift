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
    
    private let user = Profile.getProfileData()
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
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            LogInTapped(_sender: logInButton)
            performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
        default:
            textField.resignFirstResponder()
        }
       return true
   }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabViewController = segue.destination as? UITabBarController else {return}
        let viewControllers = tabViewController.viewControllers!
        viewControllers.forEach() {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            }
            if let navigationVc = $0 as? UINavigationController {
                let aboutVC = navigationVc.topViewController as! AboutViewController
                aboutVC.user = user
            }
        }
    }
    
    @IBAction func unwind ( _segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    //MARK: - IB ACTIONS
    @IBAction func LogInTapped (_sender: UIButton!) {
        guard validateLogin(login: loginTextField.text ?? ""), validatePassword(password: passwordTextField.text ?? "") else {
            showBasicAlert(on: self, with: "Mistake!", message: "Check your login and password or Sign Up")
            return
        }
    }
    
    @IBAction func forgotLoginTapped (_sender: UIButton!) {
        if !validateLogin(login: loginTextField.text ?? "") {
            showBasicAlert(on: self, with: "Oooops", message: "Check your Login")
        }
    }
    
    @IBAction func forgotPasswordTapped (_sender: UIButton!) {
        if !validatePassword(password: passwordTextField.text ?? "") {
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

    func validateLogin (login:String) -> Bool {
       if  login == user.login {
                return true
       } else {return false}
    }
    
    func validatePassword(password:String) -> Bool {
        if  password == user.password {
                 return true
        } else {return false}
     }
}


  

