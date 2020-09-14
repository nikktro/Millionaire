//
//  MainViewController.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 01.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        guard let identifier = seg.identifier else { return }
        switch identifier {
        case "settings":
            let settingsVC = seg.source as! SettingsViewController
            Game.shared.selectedSequenceIndex = settingsVC.sequenceSelector.selectedSegmentIndex
        default:
            break
        }
        
    }


}

