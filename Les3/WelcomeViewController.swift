//
//  UserViewController.swift
//  Les3
//
//  Created by Anton Kaznacheev on 11.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text =  "Welcom \(text ?? "no User")!"
    }

    @IBAction func censelLog() {
        dismiss(animated: true)
        
    }
    
}
