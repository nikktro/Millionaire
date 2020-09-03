//
//  GameSession.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 02.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import Foundation

class GameSession {
    
    let questions = Question.getQuestions()
    var gameLevel = 0
    var rightAnswer = 0
    weak var gameVCDeledate: GameVCDelegate?
}

extension GameSession: GameSessionDelegate {
    
    func checkAnswer(userAnswer: String) {
        if  userAnswer == questions[gameLevel].rightAnswer {
            print("Right answer")
            rightAnswer += 1
            
            if gameLevel >= (questions.count - 1)  {
                gameVCDeledate?.endGame()
            } else {
                gameLevel += 1
            }
        
        } else {
            print("You lose")
            gameVCDeledate?.endGame()
        }
        
    }
    
}
