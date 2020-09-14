//
//  SequenceStrategy.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 08.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import Foundation

protocol StrategyProtocol: class {
    func generateQuestions() -> [Question]
}

class Сonsistently: StrategyProtocol {
    func generateQuestions() -> [Question] {
        let questions = Question.getQuestions() + Game.shared.userQuestions
        return questions
    }
}

class Shuffled: StrategyProtocol {
    func generateQuestions() -> [Question] {
        let questions = (Question.getQuestions() + Game.shared.userQuestions).shuffled()
        return questions
    }
}

class GenerateQuestion: StrategyProtocol {
    
    private var sequence: StrategyProtocol
    init(sequence: StrategyProtocol) {
        self.sequence = sequence
    }
    
    func generateQuestions() -> [Question] {
        return sequence.generateQuestions()
    }
    
    static func questionStrategy(selectedSequenceIndex: Int) -> [Question] {
        switch selectedSequenceIndex {
        case 0:
            return GenerateQuestion(sequence: Сonsistently()).generateQuestions()
        case 1:
            return GenerateQuestion(sequence: Shuffled()).generateQuestions()
        default:
            return Question.getQuestions()
        }
    }
}

