//
//  ViewController.swift
//  Ternovskoy_IA_HW2.3
//
//  Created by Илья Терновской on 28.01.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let topColor = UIColor(displayP3Red: 0, green: 80 / 100, blue: 100, alpha: 1)
    private let bottomColor = UIColor(displayP3Red: 100, green: 100, blue: 100, alpha: 1)
            
    private let userOne = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientColor(topColor: topColor, bottomColor: bottomColor)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.labelValue = userOne
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func loginButtonPressed() {
        if userTF.text != userOne || passwordTF.text != password{
            showAlert(with: "Invalid login or password",
                      and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func showUserName() {
        showAlert(with: "Oops! 😱", and: "Your name is \(userOne)")
    }
    
    @IBAction func showPassword() {
        showAlert(with: "Oops! 😱", and: "Your password is \(password)")
    }
    
}

// - MARK: - extension
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.passwordTF.text = ""
        }
        present(alert, animated: true)
        alert.addAction(okAction)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonPressed()
            performSegue(withIdentifier: "welcomeVC", sender: nil)
        }
        return true
    }
    
}

