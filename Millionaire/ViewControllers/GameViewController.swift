//
//  GameViewController.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 01.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, GameVCDelegate {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButtonA: UIButton!
    @IBOutlet weak var answerButtonB: UIButton!
    @IBOutlet weak var answerButtonC: UIButton!
    @IBOutlet weak var answerButtonD: UIButton!
    
    var gameSession = GameSession()
    
    weak var gameSessionDelegate: GameSessionDelegate?
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        Game.shared.gameSession = gameSession
        gameSessionDelegate = gameSession
        gameSession.gameVCDeledate = self
        showLevel(gameSession.gameLevel)
    }
    
    func showLevel(_ level: Int) {
        let questions = gameSession.questions
        
        questionLabel.text = questions[level].question
        answerButtonA.setTitle(questions[level].answers["A"], for: .normal)
        answerButtonB.setTitle(questions[level].answers["B"], for: .normal)
        answerButtonC.setTitle(questions[level].answers["C"], for: .normal)
        answerButtonD.setTitle(questions[level].answers["D"], for: .normal)
    }
    
    func endGame() {
        let record = Statistic(date: Date(),
                               gameLevel: gameSession.rightAnswer,
                               questionsCount: gameSession.questions.count)
        Game.shared.addStatistic(record)
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func pressedA() {
        gameSessionDelegate?.checkAnswer(userAnswer: "A") //TODO
        showLevel(gameSession.gameLevel)
    }
    
    @IBAction func pressedB() {
        gameSessionDelegate?.checkAnswer(userAnswer: "B") //TODO
        showLevel(gameSession.gameLevel)
    }
    
    @IBAction func pressedC() {
        gameSessionDelegate?.checkAnswer(userAnswer: "C") //TODO
        showLevel(gameSession.gameLevel)
    }
    
    @IBAction func pressedD() {
        gameSessionDelegate?.checkAnswer(userAnswer: "D") //TODO
        showLevel(gameSession.gameLevel)
    }
    

    
    
}
