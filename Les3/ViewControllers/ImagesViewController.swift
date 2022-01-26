//
//  ImagesViewController.swift
//  Les3
//
//  Created by Anton Kaznacheev on 26.01.2022.
//

import UIKit

class ImagesViewController: UIViewController {

    @IBOutlet weak var imgUIImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slilsLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgUIImageView.image = UIImage(named: user.person.foto)
        nameLabel.text = user.person.descriptor
        slilsLabel.text = user.person.skil
        
        button.layer.cornerRadius = 15
        

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userInfoVS = segue.destination as? UserInfoViewController else { return }
        userInfoVS.user = user
    
    }

}
