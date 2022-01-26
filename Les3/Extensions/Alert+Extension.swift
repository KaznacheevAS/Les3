//
//  Alert+Extension.swift
//  Les3
//
//  Created by Anton Kaznacheev on 26.01.2022.
//

import UIKit

// MARK: Alert Error methods
extension LoginViewController {
    private func setAlert(title: String, message: String, textField: UITextField? = nil){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertActive = UIAlertAction(title: "OK", style: .default){ _ in
            textField?.text = ""
        }
        alert.addAction(alertActive)
        self.present(alert, animated: true, completion: nil)
    }
}
