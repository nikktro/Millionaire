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
    var gameSession: GameSession?
    var results: [GameSession] = []
    
    private init() { }
    
    func calcRightAnswer() -> Double {
        guard let gameSession = gameSession else { return 0 }
        return Double((gameSession.rightAnswer * 100) / gameSession.questions.count)
    }
    
    func storeResult() {
        guard let gameSession = gameSession else { return }
        results.append(gameSession)
    }
    
}
