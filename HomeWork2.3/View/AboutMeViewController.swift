//
//  AboutMeViewController.swift
//  HomeWork2.3
//
//  Created by Игорь Чумиков on 29.08.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var workLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    

    var newPerson = Person(name: "", lastName: "", work: "", hobby: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Name: \(newPerson.name)"
        lastNameLabel.text = "Last name: \(newPerson.lastName)"
        workLabel.text = "Work: \(newPerson.work)"
        hobbyLabel.text = "Hobby: \(newPerson.hobby)"
        
    }
}
