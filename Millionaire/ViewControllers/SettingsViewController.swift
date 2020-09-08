//
//  SettingsViewController.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 06.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var sequenceSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sequenceSelector.selectedSegmentIndex = Game.shared.selectedSequenceIndex
    }
        
}
