//
//  signinVC.swift
//  Schoolender
//
//  Created by Abdulrahman Al-mutawa on 01/05/2021.
//

import UIKit
import Firebase

class signinVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        signinButtonLabel.layer.cornerRadius = 10
        signinButtonLabel.clipsToBounds = true
        
        signupButtonLabel.layer.cornerRadius = 10
        signupButtonLabel.clipsToBounds = true
    }
    @IBOutlet weak var signinButtonLabel: UIButton!
    @IBOutlet weak var signupButtonLabel: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signinIsTapped(_ sender: UIButton) {
        guard let email = emailTextField.text,
              email != "",
              let password = passwordTextField.text,
              password != ""
        else {
            AlertController.showAlert(self, title: "Missing Info", message: "Please fill in all required fields")
            return
        }
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            guard error == nil else {
                AlertController.showAlert(self, title: "Error", message: error!.localizedDescription)
                return
            }
            guard let user = user else{return}
            print(user.user.email ?? "Missing Email")
            print(user.user.displayName ?? "Missing Display Name")
            print(user.user.uid)
            self.performSegue(withIdentifier: "signinSegue", sender: nil)
              
    }
    }

}
