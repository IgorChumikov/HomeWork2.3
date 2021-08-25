//
//  WelcomeViewController.swift
//  HomeWork2.3
//
//  Created by Игорь Чумиков on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    
    var newWelcome = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.setTitle("Log out", for: .normal)
        welcomeLabel.text = "Welcome, \(newWelcome)"

    }
}
