//
//  signoutVC.swift
//  Schoolender
//
//  Created by Abdulrahman Al-mutawa on 01/05/2021.
//

import UIKit
import Firebase

class signoutVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let userName = Auth.auth().currentUser?.displayName
        label.text = "Hello \(userName)"
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func signoutIsTapped(_ sender: UIButton) {
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "signoutSegue", sender: nil)
        }
        catch {
            print(error)
        }
    }
    

}
