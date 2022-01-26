//
//  UserInfoViewController.swift
//  Les3
//
//  Created by Anton Kaznacheev on 24.01.2022.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contentTV: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.descriptor
        contentTV.text = user.person.content
        
    }

    @IBAction func close() {
        dismiss(animated: true)
    }
}
