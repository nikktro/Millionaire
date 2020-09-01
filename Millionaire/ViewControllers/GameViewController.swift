//
//  GameViewController.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 01.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButtonA: UIButton!
    @IBOutlet weak var answerButtonB: UIButton!
    @IBOutlet weak var answerButtonC: UIButton!
    @IBOutlet weak var answerButtonD: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let game = Game()
        
        questionLabel.text = game.questions[0].question
        answerButtonA.setTitle(game.questions[0].answers["A"], for: .normal)
        answerButtonB.setTitle(game.questions[0].answers["B"], for: .normal)
        answerButtonC.setTitle(game.questions[0].answers["C"], for: .normal)
        answerButtonD.setTitle(game.questions[0].answers["D"], for: .normal)
        
    }

    
    
}
