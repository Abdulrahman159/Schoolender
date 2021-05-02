//
//  signupVC.swift
//  Schoolender
//
//  Created by Abdulrahman Al-mutawa on 01/05/2021.
//

import UIKit
import Firebase


class signupVC: UIViewController {

    var ref : DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        signupButtonLabel.layer.cornerRadius = 10
        signupButtonLabel.clipsToBounds = true
        
        signinButtonLabel.layer.cornerRadius = 10
        signinButtonLabel.clipsToBounds = true
        
    }

    @IBOutlet weak var signinButtonLabel: UIButton!
    @IBOutlet weak var signupButtonLabel: UIButton!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signupIsTapped(_ sender: UIButton) {
        guard let username = usernameTextField.text,
              username != "",
              let email = emailTextField.text,
              email != "",
              let password = passwordTextField.text,
              password != ""
        else {
            AlertController.showAlert(self, title: "Missing Info", message: "Please fill out all fields")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            guard error == nil else {
                AlertController.showAlert(self, title: "Error", message: error!.localizedDescription)
                return
            }
            guard let user = user else {return}
            print(user.user.email ?? "Missing Email")
            print(user.user.uid)
            
            let changeRequest = user.user.createProfileChangeRequest()
            changeRequest.displayName = username
            changeRequest.commitChanges { (error) in
                guard error == nil else {
                    AlertController.showAlert(self, title: "Error", message: error!.localizedDescription)
                    return
                }
                
                self.performSegue(withIdentifier: "signupSegue", sender: nil)
            }
            
            
            
        }
        
        
    }
    
}
