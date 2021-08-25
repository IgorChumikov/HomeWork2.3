//
//  ViewController.swift
//  HomeWork2.3
//
//  Created by Игорь Чумиков on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logButton: UIButton!
    @IBOutlet weak var userNameHelpButton: UIButton!
    @IBOutlet weak var passwordHelpButton: UIButton!
    
    let userName = "Alex"
    let password = "Paris"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logButton.setTitle("Log In", for: .normal)
        userNameHelpButton.setTitle("Forgot User name?", for: .normal)
        passwordHelpButton.setTitle("Forgot password?", for: .normal)
        
    }
    
    @IBAction func logInButton() {
    }
    
    @IBAction func forgotNameUser() {
        
        let alert = UIAlertController(title: "Oops!", message: "Your name is \(userName)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)
        
    }
    
    @IBAction func forgotPassword() {
        let alert = UIAlertController(title: "Oops!", message: "Your name is \(password)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)
    }
}

