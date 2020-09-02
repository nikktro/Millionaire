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
    
    var gameSession = GameSession()
    
    weak var gameDelegate: GameDelegate?
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        Game.shared.gameSession = gameSession
        gameDelegate = gameSession
        showLevel(with: gameSession.gameLevel)
    }
    
    func showLevel(with level: Int) {
        let questions = gameSession.questions
        questionLabel.text = questions[level].question
        answerButtonA.setTitle(questions[level].answers["A"], for: .normal)
        answerButtonB.setTitle(questions[level].answers["B"], for: .normal)
        answerButtonC.setTitle(questions[level].answers["C"], for: .normal)
        answerButtonD.setTitle(questions[level].answers["D"], for: .normal)
    }
    
    func endGame() {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func pressedA() {
        gameDelegate?.sendData(userAnswer: "A") //TODO
        showLevel(with: gameSession.gameLevel)
    }
    
    @IBAction func pressedB() {
        gameDelegate?.sendData(userAnswer: "B") //TODO
        showLevel(with: gameSession.gameLevel)
    }
    
    @IBAction func pressedC() {
        gameDelegate?.sendData(userAnswer: "C") //TODO
        showLevel(with: gameSession.gameLevel)
    }
    
    @IBAction func pressedD() {
        gameDelegate?.sendData(userAnswer: "D") //TODO
        showLevel(with: gameSession.gameLevel)
    }
    

    
    
}
