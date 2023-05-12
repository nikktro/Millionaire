//
//  Statistic.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 06.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import Foundation

struct Statistic: Codable {
    let date: Date
    let gameLevel: Int
    let questionsCount: Int
    
    var ratingBar: String {
        return String(repeatElement("⭐️", count: gameLevel)) +
            String(repeatElement("☆", count: questionsCount - gameLevel))
    }
    
    var currentDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        return dateFormatter.string(from: date)
    }
}
