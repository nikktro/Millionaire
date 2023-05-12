//
//  Game.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 02.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import Foundation

class Game {
    
    static let shared = Game()
    
    private let statisticCaretaker = StatisticsCaretaker()
    private let userQuestionCaretaker = UserQuestionCaretaker()
    private(set) var statistics: [Statistic] {
        didSet {
            statisticCaretaker.save(statistics: statistics)
        }
    }
    
    var userQuestions: [Question] {
        didSet {
            userQuestionCaretaker.save(userQuestions: userQuestions)
        }
    }
    
    var gameSession: GameSession?
    
    var selectedSequenceIndex = 0
    
    private init() {
        self.statistics = statisticCaretaker.load()
        self.userQuestions = userQuestionCaretaker.load()
    }
    
    func calcRightAnswer(_ statistic: Statistic) -> Double {
        return Double((statistic.gameLevel * 100) / statistic.questionsCount)
    }
    
    func addStatistic(_ record: Statistic) {
        statistics.append(record)
        gameSession = nil
    }
}
