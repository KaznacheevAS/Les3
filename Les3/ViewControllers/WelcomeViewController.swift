//
//  UserViewController.swift
//  Les3
//
//  Created by Anton Kaznacheev on 11.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text =  "Welcom \(user.person.descriptor)!"
    }

    @IBAction func censelLog() {
        dismiss(animated: true)
        
    }
    
}
