//
//  StatisticsCaretaker.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 06.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import Foundation

class StatisticsCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "statistic"
    
    func save(statistics: [Statistic]) {
        do {
            let data = try encoder.encode(statistics)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func load() -> [Statistic] {
        guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        
        do {
            return try decoder.decode([Statistic].self, from: data)
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
