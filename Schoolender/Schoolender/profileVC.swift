//
//  profileVC.swift
//  Schoolender
//
//  Created by Abdulrahman Al-mutawa on 01/05/2021.
//

import UIKit
import Firebase

class profileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userName = Auth.auth().currentUser?.displayName
        label.text = "\(userName ?? "")"
        
        signoutButtonLabel.layer.cornerRadius = 10
        signoutButtonLabel.clipsToBounds = true
    }
    
    @IBOutlet weak var signoutButtonLabel: UIButton!
    @IBOutlet weak var label: UILabel!
    
    
    
    @IBAction func signout(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "signoutSegue", sender: nil)
        }
        catch {
            print(error)
        }
    }
    
    

}
