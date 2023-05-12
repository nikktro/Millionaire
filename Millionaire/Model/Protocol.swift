//
//  Protocol.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 03.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import Foundation

protocol GameSessionDelegate: AnyObject {
    func checkAnswer(userAnswer: String)
}

protocol GameVCDelegate: AnyObject {
    func endGame()
}
