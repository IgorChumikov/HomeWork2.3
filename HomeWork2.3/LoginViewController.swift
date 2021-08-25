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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        
        if userNameTextField.text == userName, passwordTextField.text == password {
            welcomeVC.newWelcome = userName
        } else {
            let alert = UIAlertController(title: "Oops!", message: "The username or password is not correct, don't worry, try again 😀", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true)
        }
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
        userNameTextField.text = ""
        passwordTextField.text = ""
       
    }
    
    @IBAction func forgotNameUser() {
        
        let alert = UIAlertController(title: "Oops!", message: "Your name is \(userName)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)
        
    }
    
    @IBAction func forgotPassword() {
        
        let alert = UIAlertController(title: "Oops!", message: "Your password is \(password)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)
        
    }
}

