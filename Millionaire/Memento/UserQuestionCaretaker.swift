//
//  UserQuestionCaretaker.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 14.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import Foundation

class UserQuestionCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "userQuestion"
        
    func save(userQuestions: [Question]) {
        do {
            let data = try encoder.encode(userQuestions)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func load() -> [Question] {
        guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        
        do {
            return try decoder.decode([Question].self, from: data)
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
}
