//
//  AlertController.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 06.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import UIKit

class AlertController: UIAlertController {
    func showAlert(fromController controller: UIViewController, title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Close", style: .default) { (action:UIAlertAction) in
        }
        alertController.addAction(action1)
        controller.present(alertController, animated: true, completion: nil)
    }
}
