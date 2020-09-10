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
    @IBOutlet weak var questionNumberLabel: UILabel!
    
    var gameSession = GameSession()
    
    weak var gameSessionDelegate: GameSessionDelegate?
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        Game.shared.gameSession = gameSession
        gameSessionDelegate = gameSession
        gameSession.gameVCDeledate = self
        showLevel(gameSession.gameLevel.value)
        
        gameSession.gameLevel.addObserver(self, options: [.new, .initial]) { [weak self] (gameLevel, _) in
            guard let self = self else { return }
            self.questionNumberLabel.text = "Question # \(gameLevel + 1) / \(self.gameSession.questions.count)"
        }
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
        showLevel(gameSession.gameLevel.value)
    }
    
    @IBAction func pressedB() {
        gameSessionDelegate?.checkAnswer(userAnswer: "B") //TODO
        showLevel(gameSession.gameLevel.value)
    }
    
    @IBAction func pressedC() {
        gameSessionDelegate?.checkAnswer(userAnswer: "C") //TODO
        showLevel(gameSession.gameLevel.value)
    }
    
    @IBAction func pressedD() {
        gameSessionDelegate?.checkAnswer(userAnswer: "D") //TODO
        showLevel(gameSession.gameLevel.value)
    }
    

    
    
}
