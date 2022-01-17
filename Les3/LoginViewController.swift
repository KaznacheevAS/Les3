//
//  ViewController.swift
//  Les3
//
//  Created by Anton Kaznacheev on 11.01.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: Не укказал что контстанта приватная должна быть
    private let user = "User"
    private let password = "Password"

    override func viewDidLoad() {
        super.viewDidLoad()
        //nameTF.text = user
        //passwordTF.text = password
    }

    // MARK: Prepare WelcomVC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let WelcomVC = segue.destination as? WelcomeViewController else { return }
        WelcomVC.text = nameTF.text
    }
    
    @IBAction func loginPass() {
        if nameTF.text != user || passwordTF.text != password {
            setAlert(
                    title: "Error!",
                    message: "Не заолненно корректно одно из полей: User is Password!",
                    textField: passwordTF // удвление поля с паролем если не коректно заполненны данные
            )
            return
        }
    }
    
    @IBAction func getForgot(_ sender: UIButton) {
        switch sender.tag {
        case 0: setAlert(title: "Forgot User:", message: "is User")
            break
        default: setAlert(title: "Forgot Password:", message: "is Password")
            break
        }
    }
    
    @IBAction func unwind(for sender: UIStoryboardSegue) {
        passwordTF.text = ""
        nameTF.text = ""
    }
}

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

// MARK: Work whith keyboard
// скрываем клавиатуру при клике на view
extension LoginViewController:UITextViewDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShoulReturn(_ textField: UITextField) -> Bool {
        if textField == nameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginPass()
        }
        return true
    }
}
