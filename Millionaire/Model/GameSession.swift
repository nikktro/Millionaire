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
    
}

extension GameSession: GameDelegate {
    func sendData(userAnswer: String) {
        if questions[gameLevel].rightAnswer == userAnswer {
            print("Right")
            gameLevel += 1
            // TODO
        } else {
            let percentAnswer = Game.shared.calcRightAnswer()
            print("You lose, right answers \(percentAnswer)%") // TODO
            
            
        }
    }
    
    
}
