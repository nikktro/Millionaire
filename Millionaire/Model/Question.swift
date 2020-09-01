//
//  Question.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 01.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var answers: [String:String]
    var rightAnswer: String
}

struct Game {
    let questions = [
        Question(question: "Какой газ преобладает в атмосфере Земли?",
                 answers: ["A": "Кислород",
                           "B": "Азот",
                           "C": "Углекислый газ",
                           "D": "Водород"
            ],
                 rightAnswer: "B"),
        Question(question: "Что искал Колумб, а в результате открыл Америку?",
                 answers: ["A": "Голливуд",
                           "B": "Диснейленд",
                           "C": "Путь в Индию",
                           "D": "Кафе с гамбургерами"
            ],
                 rightAnswer: "C")
    ]
    
}
