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


extension Question: Codable {
    static func getQuestions() -> [Question] {
        return [
            Question(question: "Какой газ преобладает в атмосфере Земли?",
                     answers: ["A": "Кислород",
                               "B": "Азот",
                               "C": "Углекислый газ",
                               "D": "Водород"],
                     rightAnswer: "B"),
            
            Question(question: "Что искал Колумб, а в результате открыл Америку?",
                     answers: ["A": "Голливуд",
                               "B": "Диснейленд",
                               "C": "Путь в Индию",
                               "D": "Кафе с бургерами"],
                     rightAnswer: "C"),
            
            Question(question: "Что, согласно известному выражению, должен сделать последовательный человек, сказавший «А»?",
                     answers: ["A": "Сказать «Б»",
                               "B": "Задать вопрос",
                               "C": "Дождаться ответа",
                               "D": "Продолжить тост"],
                     rightAnswer: "A"),
            
            Question(question: "Как называется крепкий спиртной напиток из сока сахарного тростника?",
                     answers: ["A": "Кальвадос",
                               "B": "Ром",
                               "C": "Джин",
                               "D": "Виски"],
                     rightAnswer: "B"),
            
            Question(question: "Какую птицу американцы традиционно готовят на День Благодарения?",
                     answers: ["A": "Курицу",
                               "B": "Индейку",
                               "C": "Гуся",
                               "D": "Утку"],
                     rightAnswer: "B"),
                     
            Question(question: "В каком океане находится самое глубокое место в мире — Марианская впадина?",
                     answers: ["A": "Атлантический",
                               "B": "Северный Ледовитый",
                               "C": "Тихий",
                               "D": "Индийский"],
                     rightAnswer: "C"),
                              
            Question(question: "Какой город считается родиной джаза?",
                     answers: ["A": "Чикаго",
                               "B": "Нью-Йорк",
                               "C": "Новый Орлеан",
                               "D": "Сан-Франциско"],
                     rightAnswer: "C"),
                                       
            Question(question: "Что борцы сумо разбрасывают по рингу перед поединком?",
                     answers: ["A": "Соль",
                               "B": "Опилки",
                               "C": "Пшено",
                               "D": "Песок"],
                     rightAnswer: "A"),
                                                
            Question(question: "Какое европейское государство является Великим Герцогством?",
                     answers: ["A": "Андорра",
                               "B": "Люксембург",
                               "C": "Лихтенштейн",
                               "D": "Монако"],
                     rightAnswer: "B"),
                                                         
            Question(question: "Какая страна ежегодно дарит Великобритании к Рождеству роскошную ёлку?",
                     answers: ["A": "Финляндия",
                               "B": "Швеция",
                               "C": "Норвегия",
                               "D": "Дания"],
                     rightAnswer: "C")
            
        ]
        
    }
    
}
