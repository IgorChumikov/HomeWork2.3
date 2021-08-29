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
    
    let users = User.getUser()

    private var userName = ""
    private var password = ""
    private var person = Person(name: "", lastName: "", work: "", hobby: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for user in users {
            userName = user.name
            password = user.password
            person = user.person
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if userNameTextField.text == userName, passwordTextField.text == password {
            
            let tabBarController = segue.destination as! UITabBarController
            
            for viewController in tabBarController.viewControllers! {
                
                if let welcomeVC = viewController as? WelcomeViewController {
                    welcomeVC.newWelcome = userName
                    
                } else if let navigationVC = viewController as? UINavigationController {
                    let aboutMeVC = navigationVC.topViewController as! AboutMeViewController
                    aboutMeVC.title = "\(person.name) \(person.lastName)"
                    aboutMeVC.newPerson = person
                }
            }
        } else {
            showAlert(
                title: "Oops!",
                massage: "The username or password is not correct, don't worry, try again 😀")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotNameUser() {
        showAlert(title: "Oops!", massage: "Your name is \(userName)")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!",massage: "Your password is \(password)")
    }
    
}

extension UIViewController {
    func showAlert(title: String, massage: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)
    }
}


