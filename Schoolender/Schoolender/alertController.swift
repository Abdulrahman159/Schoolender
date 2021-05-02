//
//  alertController.swift
//  Schoolender
//
//  Created by Abdulrahman Al-mutawa on 01/05/2021.
//

import Foundation
import UIKit

class AlertController {
    static func showAlert(_ inViewController:UIViewController, title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        inViewController.present(alert, animated: true, completion: nil)
    }
}
